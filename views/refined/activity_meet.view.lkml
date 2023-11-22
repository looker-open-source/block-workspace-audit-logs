include: "activity.view"

# API reference for login logs in BigQuery:
# https://developers.google.com/admin-sdk/reports/v1/appendix/activity/meet
view: meet {
  extends: [activity]

  dimension_group: start {
    hidden: yes
    view_label: "Meet"
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
    sql: TIMESTAMP_SUB(${activity_raw}, INTERVAL ${meet__duration_seconds} SECOND) ;;
  }

  dimension_group: end {
    hidden: yes
    view_label: "Meet"
    group_label: "Participant"
    group_item_label: " End Time"
    label: "Participant End"
    type: time
    timeframes: [
      raw,
      time
    ]
    convert_tz: no
    description: "The time the participant left the meeting"
    sql: ${activity_raw} ;;
  }

  dimension: meet__conference_id {
    hidden: no
    view_label: "Meet"
    group_label: "Meeting Info"
    description: "The unique identifier of the conference."
  }

  dimension: meet__meeting_code {
    hidden: no
    view_label: "Meet"
    group_label: "Meeting Info"
    description: "The meeting code for the Google Meet conference (for example, 'abc-hexp-tqy'). Recurrent meetings have the same meeting code."
  }

  # remaining fields below are defined on in meet_facts pdt
  dimension: meet__calendar_event_id {
    hidden: yes
    view_label: "Meet"
    group_label: "Meeting Info"
    description: "The identifier of the Google Calendar event associated with the conference."
  }

  dimension: meet__device_type {
    hidden: yes
    view_label: "Meet"
    group_label: "Participant"
    description: "The participant's device type."
  }

  dimension: meet__display_name {
    hidden: yes
    view_label: "Meet"
    group_label: "Participant"
    description: "Human readable name of the endpoint that is displayed in the meeting."
  }

  dimension: meet__duration_seconds {
    hidden: yes
    view_label: "Meet"
    group_label: "Participant"
    description: "The duration for which the participant stayed in the meeting (seconds)."
  }

  dimension: meet__endpoint_id {
    hidden: yes
    view_label: "Meet"
    group_label: "Participant"
    description: "The unique endpoint identifier for the current call. Joining the same conference twice generates two distinct endpoint IDs."
  }

  dimension: meet__identifier {
    hidden: yes
    view_label: "Meet"
    group_label: "Participant"
    description: "The unique participant identifier (for example, an email address, phone number, or device ID)."
  }

  dimension: meet__identifier_type {
    hidden: yes
    view_label: "Meet"
    group_label: "Participant"
    description: "Indicates the type of the participant identifier. Possible values: device_id, email_address, phone_number"
  }

  dimension: meet__ip_address {
    hidden: yes
    view_label: "Meet"
    group_label: "Participant"
    description: "The participant's external IP address."
  }

  dimension: meet__is_external {
    hidden: yes
    view_label: "Meet"
    group_label: "Participant"
    description: "Indicates if the participant is external to your organization."
  }

  dimension: meet__livestream_view_page_id {
    hidden: yes
    view_label: "Meet"
    group_label: "Meeting Info"
    description: "The id for the Meet conference livestream view page (for example, '678df2a2-1598-4754-8d3d-8b7b53868908'). Recurrent meetings have the same view page id."
  }

  dimension: meet__location_country {
    hidden: yes
    view_label: "Meet"
    group_label: "Participant"
    description: "The country from which the participant joined."
  }

  dimension: meet__location_region {
    hidden: yes
    view_label: "Meet"
    group_label: "Participant"
    description: "The city or geographical region within a country from which the participant joined."
  }

  dimension: meet__organizer_email {
    hidden: yes
    view_label: "Meet"
    group_label: "Meeting Info"
    description: "The email address of the meeting creator."
  }

  dimension: meet__screencast_recv_second {
    hidden: yes
    view_label: "Meet"
    group_label: "Participant"
    description: "The duration during which the participant received any screencast (seconds)."
  }

  dimension: meet__screencast_send_seconds {
    hidden: yes
    view_label: "Meet"
    group_label: "Participant"
    description: "The duration during which the participant sent a screencast (seconds)."
  }

  dimension: meet__video_recv_seconds {
    hidden: yes
    view_label: "Meet"
    group_label: "Participant"
    description: "The duration during which the participant received any video (seconds)."
  }

  dimension: meet__video_send_seconds {
    hidden: yes
    view_label: "Meet"
    group_label: "Participant"
    description: "The duration during which the participant sent video (seconds)."
  }

  # overwrite default drill for all measures
  drill_fields: [activity_meet*]
}
