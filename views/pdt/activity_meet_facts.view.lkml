include: "../common/sets.view"

view: activity_meet_facts {
  extends: [sets]
  view_label: "Meet"
  derived_table: {
    sql:
WITH meetings AS (
  SELECT
    activity.meet.conference_id AS conference_id
    , MAX(activity.meet.calendar_event_id) AS calendar_event_id
    , MAX(activity.meet.organizer_email) AS organizer_email
    , MAX(activity.meet.livestream_view_page_id) AS livestream_view_page_id
    , MIN(TIMESTAMP_SUB(TIMESTAMP_MICROS(activity.time_usec), INTERVAL activity.meet.duration_seconds SECOND)) AS meeting_start_time
    , MAX(TIMESTAMP_MICROS(activity.time_usec)) AS meeting_end_time
    , COUNT(DISTINCT CASE WHEN activity.meet.is_external THEN activity.meet.identifier ELSE NULL END) AS count_external_participants
    , COUNT(DISTINCT CASE WHEN NOT activity.meet.is_external THEN activity.meet.identifier ELSE NULL END) AS count_internal_participants
    , COUNT(DISTINCT activity.meet.identifier) AS count_total_participants
    , SUM(activity.meet.screencast_send_seconds) AS total_screencast_send_seconds
    , SUM(activity.meet.video_send_seconds) AS total_video_send_seconds
    , SUM(TIMESTAMP_DIFF(TIMESTAMP_MICROS(activity.time_usec), TIMESTAMP_SUB(TIMESTAMP_MICROS(activity.time_usec), INTERVAL activity.meet.duration_seconds SECOND), SECOND)) AS total_duration_all_users
    , ARRAY_AGG(
        IF(
          activity.event_name = 'call_ended'
          , STRUCT(
              activity.meet.identifier
              , activity.meet.display_name
              , TIMESTAMP_SUB(TIMESTAMP_MICROS(activity.time_usec), INTERVAL activity.meet.duration_seconds SECOND) AS start_time
              , TIMESTAMP_MICROS(activity.time_usec) AS end_time
              , activity.meet.screencast_send_seconds AS screencast_send_seconds
              , activity.meet.video_send_seconds AS video_send_seconds
              , activity.meet.endpoint_id AS endpoint_id
              , activity.meet.device_type AS device_type
              , activity.meet.duration_seconds AS duration_seconds
              , activity.meet.identifier_type AS identifier_type
              , activity.meet.ip_address AS ip_address
              , activity.meet.is_external AS is_external
              , activity.meet.location_country AS location_country
              , activity.meet.location_region AS location_region
              )
          , NULL
        ) IGNORE NULLS
      ) AS participant_details
  FROM `@{PROJECT_ID}.@{DATASET_NAME}.activity` as activity
  WHERE activity.record_type = 'meet'
  GROUP BY 1
)
SELECT
  meetings.*
  , e.calendar_event_title
  , TIMESTAMP_DIFF(meeting_end_time, meeting_start_time, SECOND) AS meeting_length_seconds
  , CASE WHEN total_video_send_seconds > 0 THEN true ELSE false END AS is_video_on
  , total_video_send_seconds / count_total_participants AS video_time_per_person_seconds
  , total_video_send_seconds / total_duration_all_users AS avg_per_video_time_on
FROM meetings
LEFT JOIN (
  SELECT
    calendar.calendar.event_id
    , MAX(calendar.calendar.event_title) AS calendar_event_title
  FROM `@{PROJECT_ID}.@{DATASET_NAME}.activity` as calendar
  WHERE calendar.record_type = 'calendar'
  GROUP BY 1
) AS e ON e.event_id =  meetings.calendar_event_id
    ;;
    partition_keys: ["meeting_start_time"]
    datagroup_trigger: daily
  }

  drill_fields: [activity_meet*]

  dimension: conference_id {
    hidden: yes
    type: string
    sql: ${TABLE}.conference_id ;;
    primary_key: yes
  }

  # todo - link to calendar explore
  dimension: calendar_event_id {
    group_label: "Meeting Info"
    type: string
    sql: ${TABLE}.calendar_event_id ;;
    description: "The identifier of the Google Calendar event associated with the conference."
  }

  # todo - link to calendar explore
  dimension: calendar_event_title {
    group_label: "Meeting Info"
    type: string
    sql: ${TABLE}.calendar_event_title ;;
    description: "The name of the Google Calendar event."
  }

  dimension: organizer_email {
    group_label: "Meeting Info"
    type: string
    sql: ${TABLE}.organizer_email ;;
    description: "The email address of the meeting creator."
  }

  dimension: livestream_view_page_id {
    group_label: "Meeting Info"
    type: string
    sql: ${TABLE}.livestream_view_page_id ;;
    description: "The id for the Meet conference livestream view page (for example, '678df2a2-1598-4754-8d3d-8b7b53868908'). Recurrent meetings have the same view page id."
  }

  dimension: is_livestream {
    group_label: "Meeting Info"
    type: yesno
    sql: ${livestream_view_page_id} IS NOT NULL ;;
    description: "The Meet conference is a livestream."
  }

  dimension_group: start {
    group_label: "  Start"
    type: time
    timeframes: [
      raw,
      time,
      hour,
      date,
      day_of_week,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    description: "The time the first participant joined the meeting"
    sql: ${TABLE}.meeting_start_time ;;
  }

  dimension_group: end {
    group_label: " End"
    type: time
    timeframes: [
      raw,
      time,
      hour,
      date,
      day_of_week,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    description: "The time the last participant left the meeting"
    sql: ${TABLE}.meeting_end_time ;;
  }

  # this is an unnested record and used as a view
  dimension: participant_details {
    hidden: yes
    type: string
    sql: ${TABLE}.participant_details ;;
  }

  dimension: is_video_on {
    group_label: "Meeting Info"
    type: yesno
    sql: ${TABLE}.is_video_on ;;
    description: "Yes if any participant turned on video for any amount of time"
  }

  dimension: total_participants {
    hidden: yes
    type: number
    sql: ${TABLE}.count_total_participants ;;
  }

  measure: count_of_meetings {
    group_label: "Meeting Counts"
    label: "Count of Meetings"
    type: count_distinct
    sql: ${conference_id} ;;
    description: "The total number of conferences"
  }

  measure: count_of_livestreams {
    group_label: "Meeting Counts"
    label: "Count of Livestreams"
    type: count_distinct
    sql: ${conference_id} ;;
    filters: [is_livestream: "yes"]
    description: "The total number of livestream"
  }

  measure: count_of_no_show_meetings {
    group_label: "Meeting Counts"
    label: "     Count of No Show Meetings"
    type: count_distinct
    sql: ${conference_id} ;;
    filters: [total_participants: "1"]
    description: "The total number of conferences with 1 participant"
  }

  measure: count_of_1_to_1_meetings {
    group_label: "Meeting Counts"
    label: "  Count of 1-1p Meetings"
    type: count_distinct
    sql: ${conference_id} ;;
    filters: [total_participants: "2"]
    description: "The total number of conferences with 2 participants"
  }

  measure: count_of_greater_than_2_meetings {
    group_label: "Meeting Counts"
    label: " Count of >2p Meetings"
    type: count_distinct
    sql: ${conference_id} ;;
    filters: [total_participants: ">2"]
    description: "The total number of conferences with more than 2 participants"
  }

  measure: count_of_greater_than_10_meetings {
    group_label: "Meeting Counts"
    label: "Count of >10p Meetings"
    type: count_distinct
    sql: ${conference_id} ;;
    filters: [total_participants: ">10"]
    description: "The total number of conferences with more than 10 participants"
  }

  measure: count_of_greater_than_50_meetings {
    group_label: "Meeting Counts"
    label: "Count of >50p Meetings"
    type: count_distinct
    sql: ${conference_id} ;;
    filters: [total_participants: ">50"]
    description: "The total number of conferences with more than 50 participants"
  }

  measure: count_external_participants {
    group_label: "Meeting Info"
    type: sum
    sql: ${TABLE}.count_external_participants ;;
    description: "The number of participants external to your organization in the conference"
  }

  measure: count_internal_participants {
    group_label: "Meeting Info"
    type: sum
    sql: ${TABLE}.count_internal_participants ;;
    description: "The number of participants internal to your organization in the conference"
  }

  measure: count_total_participants {
    group_label: "Meeting Info"
    type: sum
    sql: ${total_participants} ;;
    description: "The total number of participants in the conference"
  }

  measure: total_screencast_send_minutes {
    group_label: "Meeting Info"
    label: "Total Screencast Send (minutes)"
    type: sum
    sql: ${TABLE}.total_screencast_send_seconds / 60 ;;
    value_format_name: decimal_1
    description: "The total duration during the conference that a screen was shared (minutes)"
  }

  measure: total_video_send_minutes {
    group_label: "Meeting Info"
    label: "Total Video Send (minutes)"
    type: sum
    sql: ${TABLE}.total_video_send_seconds / 60 ;;
    value_format_name: decimal_1
    description: "The total duration during the conference that participants sent video (minutes)"
  }

  measure: meeting_length_minutes {
    group_label: "Meeting Info"
    label: "Total Meeting Length (minutes)"
    type: sum
    sql: ${TABLE}.meeting_length_seconds / 60 ;;
    value_format_name: decimal_1
    description: "The total duration of conference from the first participant's start time to the last participant's end time (minutes)"
  }

  measure: avg_length_minutes {
    group_label: "Meeting Info"
    label: "Avg Meeting Length (minutes)"
    type: average
    sql: ${TABLE}.meeting_length_seconds / 60 ;;
    value_format_name: decimal_1
    description: "The average duration of conference from the first participant's start time to the last participant's end time (minutes)"
  }

  measure: video_time_per_person_minutes {
    group_label: "Meeting Info"
    label: "Video Time per Person (minutes)"
    type: sum
    sql: ${TABLE}.video_time_per_person_seconds / 60 ;;
    value_format_name: decimal_1
    description: "The total duration during the conference that participants sent video divided by the total number of participants (minutes)"
  }

  measure: avg_per_video_time_on {
    group_label: "Meeting Info"
    label: "Avg % Video Time On"
    type: average
    sql: IF(${TABLE}.avg_per_video_time_on > 1, 1, ${TABLE}.avg_per_video_time_on) ;;
    value_format_name: percent_1
    description: "The average % of the time participants had video turned on"
  }
}

view: activity_meet_facts__participant_details {
  view_label: "Meet"

  dimension_group: start {
    group_label: "Participant"
    group_item_label: "  Start Time"
    label: "Participant Start"
    type: time
    timeframes: [
      raw,
      time
    ]
    convert_tz: no
    description: "The time the participant joined the meeting"
    sql: ${TABLE}.start_time ;;
  }

  dimension_group: end {
    group_label: "Participant"
    group_item_label: " End Time"
    label: "Participant End"
    type: time
    timeframes: [
      raw,
      time
    ]
    convert_tz: no
    description: "The time the participant joined the meeting"
    sql: ${TABLE}.end_time ;;
  }

  dimension: endpoint_id {
    group_label: "Participant"
    description: "The unique endpoint identifier for the current call. Joining the same conference twice generates two distinct endpoint IDs."
    type: string
    sql: ${TABLE}.endpoint_id ;;
  }

  dimension: identifier {
    group_label: "Participant"
    description: "The unique participant identifier (for example, an email address, phone number, or device ID)."
    type: string
    sql: ${TABLE}.identifier ;;
  }

  dimension: display_name {
    group_label: "Participant"
    description: "Human readable name of the endpoint that is displayed in the meeting."
    type: string
    sql: ${TABLE}.display_name ;;

  }

  dimension: screencast_send_minutes {
    group_label: "Participant"
    description: "The duration during which the participant sent a screencast (minutes)."
    type: number
    sql: ${TABLE}.screencast_send_seconds / 60 ;;
    value_format_name: decimal_1
  }

  dimension: video_send_minutes {
    group_label: "Participant"
    description: "The duration during which the participant sent video (minutes)."
    type: number
    sql: ${TABLE}.video_send_seconds / 60 ;;
    value_format_name: decimal_1
  }

  dimension: device_type {
    group_label: "Participant"
    description: "The participant's device type."
    type: string
    sql: ${TABLE}.device_type ;;
  }

  dimension: duration_minutes {
    group_label: "Participant"
    description: "The duration for which the participant stayed in the meeting (minutes)."
    type: number
    sql: ${TABLE}.duration_seconds / 60 ;;
    value_format_name: decimal_1
  }

  dimension: identifier_type {
    group_label: "Participant"
    description: "Indicates the type of the participant identifier. Possible values: device_id, email_address, phone_number"
    type: string
    sql: ${TABLE}.identifier_type ;;
  }

  dimension: ip_address {
    group_label: "Participant"
    description: "The participant's external IP address."
    type: string
    sql: ${TABLE}.ip_address ;;
  }

  dimension: is_external {
    group_label: "Participant"
    description: "Indicates if the participant is external to your organization."
    type: string
    sql: ${TABLE}.is_external ;;
  }

  dimension: location_country {
    group_label: "Participant"
    description: "The country from which the participant joined."
    type: string
    sql: ${TABLE}.location_country ;;
  }

  dimension: location_region {
    group_label: "Participant"
    description: "The city or geographical region within a country from which the participant joined."
    type: string
    sql: ${TABLE}.location_region ;;
  }
}
