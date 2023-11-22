view: usage_user_drive_facts {
  derived_table: {
    sql:
WITH calendar AS (
    SELECT date
    FROM UNNEST(
        GENERATE_DATE_ARRAY('2023-01-01', CURRENT_DATE(), INTERVAL 1 DAY)
    ) as date
),
usage_rolling_30_day AS (
    SELECT
      calendar.date AS calendar_date
      , usage.date AS usage_date
      , usage.user_email  AS usage_user_email
      , usage.drive.num_google_documents_created AS num_documents_created
      , usage.drive.num_google_spreadsheets_created AS num_sheets_created
      , usage.drive.num_google_presentations_created AS num_presentations_created
      , usage.drive.num_google_documents_edited AS num_documents_edited
      , usage.drive.num_google_spreadsheets_edited AS num_sheets_edited
      , usage.drive.num_google_presentations_edited AS num_presentations_edited
      , usage.drive.num_google_documents_viewed AS num_documents_viewed
      , usage.drive.num_google_spreadsheets_viewed AS num_sheets_viewed
      , usage.drive.num_google_presentations_viewed AS num_presentations_viewed
      , usage.drive.num_owned_items_with_visibility_shared_internally_added AS usage_drive_visibility_shared_internally_added
    FROM  `@{PROJECT_ID}.@{DATASET_NAME}.usage` as usage
    INNER JOIN calendar
    ON DATE(usage.date) <= calendar.date
    AND DATE(usage.date) > DATE_SUB(calendar.date, INTERVAL 30 DAY)
    WHERE usage.record_type = 'user'
    GROUP BY 1,2,3,4,5,6,7,8,9,10,11,12,13
),
usage_rolling_7_day AS (
    SELECT
      calendar.date AS calendar_date
      , usage.date AS usage_date
      , usage.user_email  AS usage_user_email
      , usage.drive.num_google_documents_created AS num_documents_created
      , usage.drive.num_google_spreadsheets_created AS num_sheets_created
      , usage.drive.num_google_presentations_created AS num_presentations_created
      , usage.drive.num_google_documents_edited AS num_documents_edited
      , usage.drive.num_google_spreadsheets_edited AS num_sheets_edited
      , usage.drive.num_google_presentations_edited AS num_presentations_edited
      , usage.drive.num_google_documents_viewed AS num_documents_viewed
      , usage.drive.num_google_spreadsheets_viewed AS num_sheets_viewed
      , usage.drive.num_google_presentations_viewed AS num_presentations_viewed
      , usage.drive.num_owned_items_with_visibility_shared_internally_added AS usage_drive_visibility_shared_internally_added
    FROM  `@{PROJECT_ID}.@{DATASET_NAME}.usage` as usage
    INNER JOIN calendar
    ON DATE(usage.date) <= calendar.date
    AND DATE(usage.date) > DATE_SUB(calendar.date, INTERVAL 7 DAY)
    WHERE usage.record_type = 'user'
    GROUP BY 1,2,3,4,5,6,7,8,9,10,11,12,13
),
usage_rolling_1_day AS (
    SELECT
      calendar.date AS calendar_date
      , usage.date AS usage_date
      , usage.user_email  AS usage_user_email
      , usage.drive.num_google_documents_created AS num_documents_created
      , usage.drive.num_google_spreadsheets_created AS num_sheets_created
      , usage.drive.num_google_presentations_created AS num_presentations_created
      , usage.drive.num_google_documents_edited AS num_documents_edited
      , usage.drive.num_google_spreadsheets_edited AS num_sheets_edited
      , usage.drive.num_google_presentations_edited AS num_presentations_edited
      , usage.drive.num_google_documents_viewed AS num_documents_viewed
      , usage.drive.num_google_spreadsheets_viewed AS num_sheets_viewed
      , usage.drive.num_google_presentations_viewed AS num_presentations_viewed
      , usage.drive.num_owned_items_with_visibility_shared_internally_added AS usage_drive_visibility_shared_internally_added
    FROM  `@{PROJECT_ID}.@{DATASET_NAME}.usage` as usage
    INNER JOIN calendar
    ON DATE(usage.date) = calendar.date
    WHERE usage.record_type = 'user'
    GROUP BY 1,2,3,4,5,6,7,8,9,10,11,12,13
),
activity_sharers_30_day AS (
  SELECT
      calendar.date AS calendar_date
      , activity.drive.doc_type  AS activity_drive__doc_type
      , activity.email  AS activity_email
      , DATE(TIMESTAMP_MICROS(activity.time_usec)) AS activity_date
      , COUNT(DISTINCT
          CASE WHEN (LOWER(activity.event_type ) LIKE 'acl_change')
          AND (activity__drive__new_value <> 'none' OR activity__drive__new_value IS NULL)
        THEN activity.drive.doc_id  ELSE NULL END) AS activity_count_distinct_all_files_shares
  FROM  `@{PROJECT_ID}.@{DATASET_NAME}.activity` as activity
  LEFT JOIN UNNEST(activity.drive.new_value) as activity__drive__new_value
  INNER JOIN calendar
    ON DATE(TIMESTAMP_MICROS(activity.time_usec)) <= calendar.date
    AND DATE(TIMESTAMP_MICROS(activity.time_usec)) > DATE_SUB(calendar.date, INTERVAL 30 DAY)
  WHERE (activity.drive.doc_type ) IN ('document', 'folder', 'presentation', 'spreadsheet')
  AND (activity.record_type ) = 'drive'
  AND DATE(TIMESTAMP_MICROS(activity.time_usec)) >= '2023-01-01'
  GROUP BY 1,2,3,4
  HAVING activity_count_distinct_all_files_shares > 1
)
, activity_sharers_7_day AS (
  SELECT
      calendar.date AS calendar_date
      , activity.drive.doc_type  AS activity_drive__doc_type
      , activity.email  AS activity_email
      , DATE(TIMESTAMP_MICROS(activity.time_usec)) AS activity_date
      , COUNT(DISTINCT
          CASE WHEN (LOWER(activity.event_type ) LIKE 'acl_change')
          AND (activity__drive__new_value <> 'none' OR activity__drive__new_value IS NULL)
        THEN activity.drive.doc_id  ELSE NULL END) AS activity_count_distinct_all_files_shares
  FROM  `@{PROJECT_ID}.@{DATASET_NAME}.activity` as activity
  LEFT JOIN UNNEST(activity.drive.new_value) as activity__drive__new_value
  INNER JOIN calendar
    ON DATE(TIMESTAMP_MICROS(activity.time_usec)) <= calendar.date
    AND DATE(TIMESTAMP_MICROS(activity.time_usec)) > DATE_SUB(calendar.date, INTERVAL 7 DAY)
  WHERE (activity.drive.doc_type ) IN ('document', 'folder', 'presentation', 'spreadsheet')
  AND (activity.record_type ) = 'drive'
  AND DATE(TIMESTAMP_MICROS(activity.time_usec)) >= '2023-01-01'
  GROUP BY 1,2,3,4
  HAVING activity_count_distinct_all_files_shares > 1
)
, activity_sharers_1_day AS (
  SELECT
      calendar.date AS calendar_date
      , activity.drive.doc_type  AS activity_drive__doc_type
      , activity.email  AS activity_email
      , DATE(TIMESTAMP_MICROS(activity.time_usec)) AS activity_date
      , COUNT(DISTINCT
          CASE WHEN (LOWER(activity.event_type ) LIKE 'acl_change')
          AND (activity__drive__new_value <> 'none' OR activity__drive__new_value IS NULL)
        THEN activity.drive.doc_id  ELSE NULL END) AS activity_count_distinct_all_files_shares
  FROM  `@{PROJECT_ID}.@{DATASET_NAME}.activity` as activity
  LEFT JOIN UNNEST(activity.drive.new_value) as activity__drive__new_value
  INNER JOIN calendar
    ON DATE(TIMESTAMP_MICROS(activity.time_usec)) = calendar.date
  WHERE (activity.drive.doc_type ) IN ('document', 'folder', 'presentation', 'spreadsheet')
  AND (activity.record_type ) = 'drive'
  AND DATE(TIMESTAMP_MICROS(activity.time_usec)) >= '2023-01-01'
  GROUP BY 1,2,3,4
  HAVING activity_count_distinct_all_files_shares > 1
)
SELECT
  usage_rolling_30_day.calendar_date
  -- 30 day metrics
  , COUNT(DISTINCT CASE WHEN usage_rolling_30_day.num_documents_created > 1 THEN usage_rolling_30_day.usage_user_email ELSE NULL END) AS user_count_document_created_30_days
  , COUNT(DISTINCT CASE WHEN usage_rolling_30_day.num_sheets_created > 1 THEN usage_rolling_30_day.usage_user_email ELSE NULL END) AS user_count_sheets_created_30_days
  , COUNT(DISTINCT CASE WHEN usage_rolling_30_day.num_presentations_created > 1 THEN usage_rolling_30_day.usage_user_email ELSE NULL END) AS user_count_presentations_created_30_days
  , COUNT(DISTINCT CASE WHEN usage_rolling_30_day.num_documents_edited > 1 THEN usage_rolling_30_day.usage_user_email ELSE NULL END) AS user_count_documents_edited_30_days
  , COUNT(DISTINCT CASE WHEN usage_rolling_30_day.num_sheets_edited > 1 THEN usage_rolling_30_day.usage_user_email ELSE NULL END) AS user_count_sheets_edited_30_days
  , COUNT(DISTINCT CASE WHEN usage_rolling_30_day.num_presentations_edited > 1 THEN usage_rolling_30_day.usage_user_email ELSE NULL END) AS user_count_presentations_edited_30_days
  , COUNT(DISTINCT CASE WHEN usage_rolling_30_day.num_documents_viewed > 1 THEN usage_rolling_30_day.usage_user_email ELSE NULL END) AS user_count_documents_viewed_30_days
  , COUNT(DISTINCT CASE WHEN usage_rolling_30_day.num_sheets_viewed > 1 THEN usage_rolling_30_day.usage_user_email ELSE NULL END) AS user_count_sheets_viewed_30_days
  , COUNT(DISTINCT CASE WHEN usage_rolling_30_day.num_presentations_viewed > 1 THEN usage_rolling_30_day.usage_user_email ELSE NULL END) AS user_count_presentations_viewed_30_days
  , COUNT(DISTINCT CASE WHEN usage_rolling_30_day.usage_drive_visibility_shared_internally_added > 1 THEN usage_rolling_30_day.usage_user_email ELSE NULL END) AS usage_drive_visibility_shared_internally_added_30_days
  -- 7 day metrics
  , COUNT(DISTINCT CASE WHEN usage_rolling_7_day.num_documents_created > 1 THEN usage_rolling_7_day.usage_user_email ELSE NULL END) AS user_count_document_created_7_days
  , COUNT(DISTINCT CASE WHEN usage_rolling_7_day.num_sheets_created > 1 THEN usage_rolling_7_day.usage_user_email ELSE NULL END) AS user_count_sheets_created_7_days
  , COUNT(DISTINCT CASE WHEN usage_rolling_7_day.num_presentations_created > 1 THEN usage_rolling_7_day.usage_user_email ELSE NULL END) AS user_count_presentations_created_7_days
  , COUNT(DISTINCT CASE WHEN usage_rolling_7_day.num_documents_edited > 1 THEN usage_rolling_7_day.usage_user_email ELSE NULL END) AS user_count_documents_edited_7_days
  , COUNT(DISTINCT CASE WHEN usage_rolling_7_day.num_sheets_edited > 1 THEN usage_rolling_7_day.usage_user_email ELSE NULL END) AS user_count_sheets_edited_7_days
  , COUNT(DISTINCT CASE WHEN usage_rolling_7_day.num_presentations_edited > 1 THEN usage_rolling_7_day.usage_user_email ELSE NULL END) AS user_count_presentations_edited_7_days
  , COUNT(DISTINCT CASE WHEN usage_rolling_7_day.num_documents_viewed > 1 THEN usage_rolling_7_day.usage_user_email ELSE NULL END) AS user_count_documents_viewed_7_days
  , COUNT(DISTINCT CASE WHEN usage_rolling_7_day.num_sheets_viewed > 1 THEN usage_rolling_7_day.usage_user_email ELSE NULL END) AS user_count_sheets_viewed_7_days
  , COUNT(DISTINCT CASE WHEN usage_rolling_7_day.num_presentations_viewed > 1 THEN usage_rolling_7_day.usage_user_email ELSE NULL END) AS user_count_presentations_viewed_7_days
  , COUNT(DISTINCT CASE WHEN usage_rolling_7_day.usage_drive_visibility_shared_internally_added > 1 THEN usage_rolling_7_day.usage_user_email ELSE NULL END) AS usage_drive_visibility_shared_internally_added_7_days
    -- 1 day metrics
  , COUNT(DISTINCT CASE WHEN usage_rolling_1_day.num_documents_created > 1 THEN usage_rolling_1_day.usage_user_email ELSE NULL END) AS user_count_document_created_1_days
  , COUNT(DISTINCT CASE WHEN usage_rolling_1_day.num_sheets_created > 1 THEN usage_rolling_1_day.usage_user_email ELSE NULL END) AS user_count_sheets_created_1_days
  , COUNT(DISTINCT CASE WHEN usage_rolling_1_day.num_presentations_created > 1 THEN usage_rolling_1_day.usage_user_email ELSE NULL END) AS user_count_presentations_created_1_days
  , COUNT(DISTINCT CASE WHEN usage_rolling_1_day.num_documents_edited > 1 THEN usage_rolling_1_day.usage_user_email ELSE NULL END) AS user_count_documents_edited_1_days
  , COUNT(DISTINCT CASE WHEN usage_rolling_1_day.num_sheets_edited > 1 THEN usage_rolling_1_day.usage_user_email ELSE NULL END) AS user_count_sheets_edited_1_days
  , COUNT(DISTINCT CASE WHEN usage_rolling_1_day.num_presentations_edited > 1 THEN usage_rolling_1_day.usage_user_email ELSE NULL END) AS user_count_presentations_edited_1_days
  , COUNT(DISTINCT CASE WHEN usage_rolling_1_day.num_documents_viewed > 1 THEN usage_rolling_1_day.usage_user_email ELSE NULL END) AS user_count_documents_viewed_1_days
  , COUNT(DISTINCT CASE WHEN usage_rolling_1_day.num_sheets_viewed > 1 THEN usage_rolling_1_day.usage_user_email ELSE NULL END) AS user_count_sheets_viewed_1_days
  , COUNT(DISTINCT CASE WHEN usage_rolling_1_day.num_presentations_viewed > 1 THEN usage_rolling_1_day.usage_user_email ELSE NULL END) AS user_count_presentations_viewed_1_days
  , COUNT(DISTINCT CASE WHEN usage_rolling_1_day.usage_drive_visibility_shared_internally_added > 1 THEN usage_rolling_1_day.usage_user_email ELSE NULL END) AS usage_drive_visibility_shared_internally_added_1_days
    -- 30 day sharers
  , COUNT(DISTINCT CASE WHEN activity_sharers_30_day.activity_drive__doc_type = 'document' THEN activity_sharers_30_day.activity_email ELSE NULL END) AS activity_document_sharers_30_days
  , COUNT(DISTINCT CASE WHEN activity_sharers_30_day.activity_drive__doc_type = 'folder' THEN activity_sharers_30_day.activity_email ELSE NULL END) AS activity_folder_sharers_30_days
  , COUNT(DISTINCT CASE WHEN activity_sharers_30_day.activity_drive__doc_type = 'presentation' THEN activity_sharers_30_day.activity_email ELSE NULL END) AS activity_presentation_sharers_30_days
  , COUNT(DISTINCT CASE WHEN activity_sharers_30_day.activity_drive__doc_type = 'spreadsheet' THEN activity_sharers_30_day.activity_email ELSE NULL END) AS activity_sheet_sharers_30_days
    -- 7 day sharers
  , COUNT(DISTINCT CASE WHEN activity_sharers_7_day.activity_drive__doc_type = 'document' THEN activity_sharers_7_day.activity_email ELSE NULL END) AS activity_document_sharers_7_days
  , COUNT(DISTINCT CASE WHEN activity_sharers_7_day.activity_drive__doc_type = 'folder' THEN activity_sharers_7_day.activity_email ELSE NULL END) AS activity_folder_sharers_7_days
  , COUNT(DISTINCT CASE WHEN activity_sharers_7_day.activity_drive__doc_type = 'presentation' THEN activity_sharers_7_day.activity_email ELSE NULL END) AS activity_presentation_sharers_7_days
  , COUNT(DISTINCT CASE WHEN activity_sharers_7_day.activity_drive__doc_type = 'spreadsheet' THEN activity_sharers_7_day.activity_email ELSE NULL END) AS activity_sheet_sharers_7_days
    -- 1 day sharers
  , COUNT(DISTINCT CASE WHEN activity_sharers_1_day.activity_drive__doc_type = 'document' THEN activity_sharers_1_day.activity_email ELSE NULL END) AS activity_document_sharers_1_days
  , COUNT(DISTINCT CASE WHEN activity_sharers_1_day.activity_drive__doc_type = 'folder' THEN activity_sharers_1_day.activity_email ELSE NULL END) AS activity_folder_sharers_1_days
  , COUNT(DISTINCT CASE WHEN activity_sharers_1_day.activity_drive__doc_type = 'presentation' THEN activity_sharers_1_day.activity_email ELSE NULL END) AS activity_presentation_sharers_1_days
  , COUNT(DISTINCT CASE WHEN activity_sharers_1_day.activity_drive__doc_type = 'spreadsheet' THEN activity_sharers_1_day.activity_email ELSE NULL END) AS activity_sheet_sharers_1_days
FROM usage_rolling_30_day
LEFT JOIN usage_rolling_7_day
  ON usage_rolling_30_day.calendar_date = usage_rolling_7_day.calendar_date
  AND usage_rolling_30_day.usage_date = usage_rolling_7_day.usage_date
  AND usage_rolling_30_day.usage_user_email = usage_rolling_7_day.usage_user_email
LEFT JOIN usage_rolling_1_day
  ON usage_rolling_30_day.calendar_date = usage_rolling_1_day.calendar_date
  AND usage_rolling_30_day.usage_date = usage_rolling_1_day.usage_date
  AND usage_rolling_30_day.usage_user_email = usage_rolling_1_day.usage_user_email
LEFT JOIN activity_sharers_30_day
  ON usage_rolling_30_day.calendar_date = activity_sharers_30_day.calendar_date
  AND usage_rolling_30_day.usage_user_email = activity_sharers_30_day.activity_email
LEFT JOIN activity_sharers_7_day
  ON usage_rolling_30_day.calendar_date = activity_sharers_7_day.calendar_date
  AND usage_rolling_30_day.usage_user_email = activity_sharers_7_day.activity_email
LEFT JOIN activity_sharers_1_day
  ON usage_rolling_30_day.calendar_date = activity_sharers_1_day.calendar_date
  AND usage_rolling_30_day.usage_user_email = activity_sharers_1_day.activity_email
GROUP BY 1
  ;;
  datagroup_trigger: usage_default
  }

  dimension: calendar_date {
    hidden: yes
    type: date
    datatype: date
    sql: ${TABLE}.calendar_date ;;
  }

  measure: user_count_doc_created_n_day {
    view_label: "Drive"
    group_label: "Active Users [N Days]"
    label: "Count Users Docs Created [N Days]"
    type: max
    sql: ${TABLE}.user_count_document_created_{% parameter usage.timeframe %}_days ;;
    description: "Count of users who created 1 or more documents in past N days"
  }

  measure: user_count_sheet_created_n_day {
    view_label: "Drive"
    group_label: "Active Users [N Days]"
    label: "Count Users Sheets Created [N Days]"
    type: max
    sql: ${TABLE}.user_count_sheets_created_{% parameter usage.timeframe %}_days ;;
    description: "Count of users who created 1 or more sheets in past N days"
  }

  measure: user_count_slide_created_n_day {
    view_label: "Drive"
    group_label: "Active Users [N Days]"
    label: "Count Users Slides Created [N Days]"
    type: max
    sql: ${TABLE}.user_count_presentations_created_{% parameter usage.timeframe %}_days ;;
    description: "Count of users who created 1 or more presentations in past N days"
  }

  measure: user_count_doc_edited_n_day {
    view_label: "Drive"
    group_label: "Active Users [N Days]"
    label: "Count Users Docs Edited [N Days]"
    type: max
    sql: ${TABLE}.user_count_documents_edited_{% parameter usage.timeframe %}_days ;;
    description: "Count of users who edited 1 or more documents in past N days"
  }

  measure: user_count_sheet_edited_n_day {
    view_label: "Drive"
    group_label: "Active Users [N Days]"
    label: "Count Users Sheets Edited [N Days]"
    type: max
    sql: ${TABLE}.user_count_sheets_edited_{% parameter usage.timeframe %}_days ;;
    description: "Count of users who edited 1 or more sheets in past N days"
  }

  measure: user_count_slide_edited_n_day {
    view_label: "Drive"
    group_label: "Active Users [N Days]"
    label: "Count Users Slides Edited [N Days]"
    type: max
    sql: ${TABLE}.user_count_presentations_edited_{% parameter usage.timeframe %}_days ;;
    description: "Count of users who edited 1 or more presentations in past N days"
  }

  measure: user_count_doc_viewed_n_day {
    view_label: "Drive"
    group_label: "Active Users [N Days]"
    label: "Count Users Docs Viewed [N Days]"
    type: max
    sql: ${TABLE}.user_count_documents_viewed_{% parameter usage.timeframe %}_days ;;
    description: "Count of users who viewed 1 or more documents in past N days"
  }

  measure: user_count_sheet_viewed_n_day {
    view_label: "Drive"
    group_label: "Active Users [N Days]"
    label: "Count Users Sheets Viewed [N Days]"
    type: max
    sql: ${TABLE}.user_count_sheets_viewed_{% parameter usage.timeframe %}_days ;;
    description: "Count of users who viewed 1 or more sheets in past N days"
  }

  measure: user_count_slide_viewed_n_day {
    view_label: "Drive"
    group_label: "Active Users [N Days]"
    label: "Count Users Slides Viewed [N Days]"
    type: max
    sql: ${TABLE}.user_count_presentations_viewed_{% parameter usage.timeframe %}_days ;;
    description: "Count of users who viewed 1 or more presentations in past N days"
  }

  measure: usage_drive_visibility_shared_internally_added_n_days {
    view_label: "Drive"
    group_label: "Active Users [N Days]"
    label: "Count Users Docs Shared Internally [N Days]"
    type: max
    sql: ${TABLE}.usage_drive_visibility_shared_internally_added_{% parameter usage.timeframe %}_days ;;
    description: "Count of users who updated the visibility of 1 or more documents in past N days"
  }

  measure: activity_doc_sharers_n_days {
    view_label: "Drive"
    group_label: "Active Users [N Days]"
    label: "Count Users Docs Shared [N Days]"
    type: max
    sql:  ${TABLE}.activity_document_sharers_{% parameter usage.timeframe %}_days ;;
    description: "Count of users who shared 1 or more documents in past N days"
    }

  measure: activity_folder_sharers_n_days {
    view_label: "Drive"
    group_label: "Active Users [N Days]"
    label: "Count Users Folders Shared [N Days]"
    type: max
    sql:  ${TABLE}.activity_folder_sharers_{% parameter usage.timeframe %}_days ;;
    description: "Count of users who shared 1 or more folders in past N days"
    }

  measure: activity_slide_sharers_n_days {
    view_label: "Drive"
    group_label: "Active Users [N Days]"
    label: "Count Users Slides Shared [N Days]"
    type: max
    sql:  ${TABLE}.activity_presentation_sharers_{% parameter usage.timeframe %}_days ;;
    description: "Count of users who shared 1 or more presentations in past N days"
    }

  measure: activity_sheet_sharers_n_days {
    view_label: "Drive"
    group_label: "Active Users [N Days]"
    label: "Count Users Sheets Shared [N Days]"
    type: max
    sql:  ${TABLE}.activity_sheet_sharers_{% parameter usage.timeframe %}_days ;;
    description: "Count of users who shared 1 or more sheets in past N days"
    }
}
