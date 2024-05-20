view: activity_active_user_facts {
  derived_table: {
    sql:
WITH calendar AS (
    SELECT date
    FROM UNNEST(
        GENERATE_DATE_ARRAY('2023-01-01', CURRENT_DATE(), INTERVAL 1 DAY)
    ) as date
)
-- docs, sheets, and slides
, active_docs_sheets_slides_30_day AS (
  SELECT
      calendar.date AS calendar_date
      , TO_JSON_STRING(activity.org_unit_name_path) AS json_ou_path
      , activity.drive.doc_type  AS product
      , activity.email  AS activity_email
      , DATE(TIMESTAMP_MICROS(activity.time_usec)) AS activity_date
  FROM  `@{WORKSPACE_ANALYTICS_PROJECT_ID}.@{WORKSPACE_ANALYTICS_DATASET_NAME}.activity` AS activity
  LEFT JOIN UNNEST(activity.org_unit_name_path) as activity__org_unit_name_path
  INNER JOIN calendar
    ON DATE(TIMESTAMP_MICROS(activity.time_usec)) <= calendar.date
    AND DATE(TIMESTAMP_MICROS(activity.time_usec)) > DATE_SUB(calendar.date, INTERVAL 30 DAY)
  WHERE activity__org_unit_name_path IS NOT NULL
  AND activity.record_type = 'drive'
  AND activity.event_name IN ("edit", "view")
  AND activity.drive.doc_type IN ('document', 'presentation', 'spreadsheet')
  AND DATE(TIMESTAMP_MICROS(activity.time_usec)) >= '2023-01-01'
  GROUP BY 1,2,3,4,5
)
, active_docs_sheets_slides_30_day_rollup AS (
  SELECT
    calendar_date
    , json_ou_path
    , COUNT(DISTINCT CASE WHEN product = 'document' THEN activity_email ELSE NULL END) AS document_active_30_days
    , COUNT(DISTINCT CASE WHEN product = 'presentation' THEN activity_email ELSE NULL END) AS presentation_active_30_days
    , COUNT(DISTINCT CASE WHEN product = 'spreadsheet' THEN activity_email ELSE NULL END) AS sheet_active_30_days
  FROM active_docs_sheets_slides_30_day
  GROUP BY 1,2
)
, active_docs_sheets_slides_7_day AS (
  SELECT
      calendar.date AS calendar_date
      , TO_JSON_STRING(activity.org_unit_name_path) AS json_ou_path
      , activity.drive.doc_type  AS product
      , activity.email  AS activity_email
      , DATE(TIMESTAMP_MICROS(activity.time_usec)) AS activity_date
  FROM  `@{WORKSPACE_ANALYTICS_PROJECT_ID}.@{WORKSPACE_ANALYTICS_DATASET_NAME}.activity` AS activity
  LEFT JOIN UNNEST(activity.org_unit_name_path) as activity__org_unit_name_path
  INNER JOIN calendar
    ON DATE(TIMESTAMP_MICROS(activity.time_usec)) <= calendar.date
    AND DATE(TIMESTAMP_MICROS(activity.time_usec)) > DATE_SUB(calendar.date, INTERVAL 7 DAY)
  WHERE activity__org_unit_name_path IS NOT NULL
  AND activity.record_type = 'drive'
  AND activity.event_name IN ("edit", "view")
  AND activity.drive.doc_type IN ('document', 'presentation', 'spreadsheet')
  AND DATE(TIMESTAMP_MICROS(activity.time_usec)) >= '2023-01-01'
  GROUP BY 1,2,3,4,5
)
, active_docs_sheets_slides_7_day_rollup AS (
  SELECT
    calendar_date
    , json_ou_path
    , COUNT(DISTINCT CASE WHEN product = 'document' THEN activity_email ELSE NULL END) AS document_active_7_days
    , COUNT(DISTINCT CASE WHEN product = 'presentation' THEN activity_email ELSE NULL END) AS presentation_active_7_days
    , COUNT(DISTINCT CASE WHEN product = 'spreadsheet' THEN activity_email ELSE NULL END) AS sheet_active_7_days
  FROM active_docs_sheets_slides_7_day
  GROUP BY 1,2
)
, active_docs_sheets_slides_1_day AS (
  SELECT
      calendar.date AS calendar_date
      , TO_JSON_STRING(activity.org_unit_name_path) AS json_ou_path
      , activity.drive.doc_type  AS product
      , activity.email  AS activity_email
      , DATE(TIMESTAMP_MICROS(activity.time_usec)) AS activity_date
  FROM  `@{WORKSPACE_ANALYTICS_PROJECT_ID}.@{WORKSPACE_ANALYTICS_DATASET_NAME}.activity` AS activity
  LEFT JOIN UNNEST(activity.org_unit_name_path) as activity__org_unit_name_path
  INNER JOIN calendar
    ON DATE(TIMESTAMP_MICROS(activity.time_usec)) = calendar.date
  WHERE activity__org_unit_name_path IS NOT NULL
  AND activity.record_type = 'drive'
  AND activity.event_name IN ("edit", "view")
  AND activity.drive.doc_type IN ('document', 'presentation', 'spreadsheet')
  AND DATE(TIMESTAMP_MICROS(activity.time_usec)) >= '2023-01-01'
  GROUP BY 1,2,3,4,5
)
, active_docs_sheets_slides_1_day_rollup AS (
  SELECT
    calendar_date
    , json_ou_path
    , COUNT(DISTINCT CASE WHEN product = 'document' THEN activity_email ELSE NULL END) AS document_active_1_days
    , COUNT(DISTINCT CASE WHEN product = 'presentation' THEN activity_email ELSE NULL END) AS presentation_active_1_days
    , COUNT(DISTINCT CASE WHEN product = 'spreadsheet' THEN activity_email ELSE NULL END) AS sheet_active_1_days
  FROM active_docs_sheets_slides_1_day
  GROUP BY 1,2
)
-- drive
, active_drive_30_day AS (
  SELECT
      calendar.date AS calendar_date
      , TO_JSON_STRING(activity.org_unit_name_path) AS json_ou_path
      , 'drive'  AS product
      , activity.email  AS activity_email
      , DATE(TIMESTAMP_MICROS(activity.time_usec)) AS activity_date
  FROM  `@{WORKSPACE_ANALYTICS_PROJECT_ID}.@{WORKSPACE_ANALYTICS_DATASET_NAME}.activity` AS activity
  LEFT JOIN UNNEST(activity.org_unit_name_path) as activity__org_unit_name_path
  INNER JOIN calendar
    ON DATE(TIMESTAMP_MICROS(activity.time_usec)) <= calendar.date
    AND DATE(TIMESTAMP_MICROS(activity.time_usec)) > DATE_SUB(calendar.date, INTERVAL 30 DAY)
  WHERE activity__org_unit_name_path IS NOT NULL
  AND activity.record_type = 'drive'
  AND activity.event_name IN ("storage_usage_update","download","upload","move","trash","untrash")
  AND DATE(TIMESTAMP_MICROS(activity.time_usec)) >= '2023-01-01'
  GROUP BY 1,2,3,4,5
)
, active_drive_30_day_rollup AS (
  SELECT
    calendar_date
    , json_ou_path
    , COUNT(DISTINCT activity_email) AS drive_active_30_days
  FROM active_drive_30_day
  GROUP BY 1,2
)
, active_drive_7_day AS (
  SELECT
      calendar.date AS calendar_date
      , TO_JSON_STRING(activity.org_unit_name_path) AS json_ou_path
      , 'drive'  AS product
      , activity.email  AS activity_email
      , DATE(TIMESTAMP_MICROS(activity.time_usec)) AS activity_date
  FROM  `@{WORKSPACE_ANALYTICS_PROJECT_ID}.@{WORKSPACE_ANALYTICS_DATASET_NAME}.activity` AS activity
  LEFT JOIN UNNEST(activity.org_unit_name_path) as activity__org_unit_name_path
  INNER JOIN calendar
    ON DATE(TIMESTAMP_MICROS(activity.time_usec)) <= calendar.date
    AND DATE(TIMESTAMP_MICROS(activity.time_usec)) > DATE_SUB(calendar.date, INTERVAL 7 DAY)
  WHERE activity__org_unit_name_path IS NOT NULL
  AND activity.record_type = 'drive'
  AND activity.event_name IN ("storage_usage_update","download","upload","move","trash","untrash")
  AND DATE(TIMESTAMP_MICROS(activity.time_usec)) >= '2023-01-01'
  GROUP BY 1,2,3,4,5
)
, active_drive_7_day_rollup AS (
  SELECT
    calendar_date
    , json_ou_path
    , COUNT(DISTINCT activity_email) AS drive_active_7_days
  FROM active_drive_7_day
  GROUP BY 1,2
)
, active_drive_1_day AS (
  SELECT
      calendar.date AS calendar_date
      , TO_JSON_STRING(activity.org_unit_name_path) AS json_ou_path
      , 'drive'  AS product
      , activity.email  AS activity_email
      , DATE(TIMESTAMP_MICROS(activity.time_usec)) AS activity_date
  FROM  `@{WORKSPACE_ANALYTICS_PROJECT_ID}.@{WORKSPACE_ANALYTICS_DATASET_NAME}.activity` AS activity
  LEFT JOIN UNNEST(activity.org_unit_name_path) as activity__org_unit_name_path
  INNER JOIN calendar
    ON DATE(TIMESTAMP_MICROS(activity.time_usec)) = calendar.date
  WHERE activity__org_unit_name_path IS NOT NULL
  AND activity.record_type = 'drive'
  AND activity.event_name IN ("storage_usage_update","download","upload","move","trash","untrash")
  AND DATE(TIMESTAMP_MICROS(activity.time_usec)) >= '2023-01-01'
  GROUP BY 1,2,3,4,5
)
, active_drive_1_day_rollup AS (
  SELECT
    calendar_date
    , json_ou_path
    , COUNT(DISTINCT activity_email) AS drive_active_1_days
  FROM active_drive_1_day
  GROUP BY 1,2
)
-- meet
, active_meet_30_day AS (
  SELECT
      calendar.date AS calendar_date
      , TO_JSON_STRING(activity.org_unit_name_path) AS json_ou_path
      , 'meet'  AS product
      , activity.email  AS activity_email
      , DATE(TIMESTAMP_MICROS(activity.time_usec)) AS activity_date
  FROM  `@{WORKSPACE_ANALYTICS_PROJECT_ID}.@{WORKSPACE_ANALYTICS_DATASET_NAME}.activity` AS activity
  LEFT JOIN UNNEST(activity.org_unit_name_path) as activity__org_unit_name_path
  INNER JOIN calendar
    ON DATE(TIMESTAMP_MICROS(activity.time_usec)) <= calendar.date
    AND DATE(TIMESTAMP_MICROS(activity.time_usec)) > DATE_SUB(calendar.date, INTERVAL 30 DAY)
  WHERE activity__org_unit_name_path IS NOT NULL
  AND activity.record_type = 'meet' -- all events are considered for active usage
  AND DATE(TIMESTAMP_MICROS(activity.time_usec)) >= '2023-01-01'
  GROUP BY 1,2,3,4,5
)
, active_meet_30_day_rollup AS (
  SELECT
    calendar_date
    , json_ou_path
    , COUNT(DISTINCT activity_email) AS meet_active_30_days
  FROM active_meet_30_day
  GROUP BY 1,2
)
, active_meet_7_day AS (
  SELECT
      calendar.date AS calendar_date
      , TO_JSON_STRING(activity.org_unit_name_path) AS json_ou_path
      , 'meet'  AS product
      , activity.email  AS activity_email
      , DATE(TIMESTAMP_MICROS(activity.time_usec)) AS activity_date
  FROM  `@{WORKSPACE_ANALYTICS_PROJECT_ID}.@{WORKSPACE_ANALYTICS_DATASET_NAME}.activity` AS activity
  LEFT JOIN UNNEST(activity.org_unit_name_path) as activity__org_unit_name_path
  INNER JOIN calendar
    ON DATE(TIMESTAMP_MICROS(activity.time_usec)) <= calendar.date
    AND DATE(TIMESTAMP_MICROS(activity.time_usec)) > DATE_SUB(calendar.date, INTERVAL 7 DAY)
  WHERE activity__org_unit_name_path IS NOT NULL
  AND activity.record_type = 'meet' -- all events are considered for active usage'
  AND DATE(TIMESTAMP_MICROS(activity.time_usec)) >= '2023-01-01'
  GROUP BY 1,2,3,4,5
)
, active_meet_7_day_rollup AS (
  SELECT
    calendar_date
    , json_ou_path
    , COUNT(DISTINCT activity_email) AS meet_active_7_days
  FROM active_meet_7_day
  GROUP BY 1,2
)
, active_meet_1_day AS (
  SELECT
      calendar.date AS calendar_date
      , TO_JSON_STRING(activity.org_unit_name_path) AS json_ou_path
      , 'meet'  AS product
      , activity.email  AS activity_email
      , DATE(TIMESTAMP_MICROS(activity.time_usec)) AS activity_date
  FROM  `@{WORKSPACE_ANALYTICS_PROJECT_ID}.@{WORKSPACE_ANALYTICS_DATASET_NAME}.activity` AS activity
  LEFT JOIN UNNEST(activity.org_unit_name_path) as activity__org_unit_name_path
  INNER JOIN calendar
    ON DATE(TIMESTAMP_MICROS(activity.time_usec)) = calendar.date
  WHERE activity__org_unit_name_path IS NOT NULL
  AND activity.record_type = 'meet'  -- all events are considered for active usage
  AND DATE(TIMESTAMP_MICROS(activity.time_usec)) >= '2023-01-01'
  GROUP BY 1,2,3,4,5
)
, active_meet_1_day_rollup AS (
  SELECT
    calendar_date
    , json_ou_path
    , COUNT(DISTINCT activity_email) AS meet_active_1_days
  FROM active_meet_1_day
  GROUP BY 1,2
)
-- calendar
, active_calendar_30_day AS (
  SELECT
      calendar.date AS calendar_date
      , TO_JSON_STRING(activity.org_unit_name_path) AS json_ou_path
      , 'calendar'  AS product
      , activity.email  AS activity_email
      , DATE(TIMESTAMP_MICROS(activity.time_usec)) AS activity_date
  FROM  `@{WORKSPACE_ANALYTICS_PROJECT_ID}.@{WORKSPACE_ANALYTICS_DATASET_NAME}.activity` AS activity
  LEFT JOIN UNNEST(activity.org_unit_name_path) as activity__org_unit_name_path
  INNER JOIN calendar
    ON DATE(TIMESTAMP_MICROS(activity.time_usec)) <= calendar.date
    AND DATE(TIMESTAMP_MICROS(activity.time_usec)) > DATE_SUB(calendar.date, INTERVAL 30 DAY)
  WHERE activity__org_unit_name_path IS NOT NULL
  AND activity.record_type = 'calendar' -- all events are considered for active usage
  AND DATE(TIMESTAMP_MICROS(activity.time_usec)) >= '2023-01-01'
  GROUP BY 1,2,3,4,5
)
, active_calendar_30_day_rollup AS (
  SELECT
    calendar_date
    , json_ou_path
    , COUNT(DISTINCT activity_email) AS calendar_active_30_days
  FROM active_calendar_30_day
  GROUP BY 1,2
)
, active_calendar_7_day AS (
  SELECT
      calendar.date AS calendar_date
      , TO_JSON_STRING(activity.org_unit_name_path) AS json_ou_path
      , 'calendar'  AS product
      , activity.email  AS activity_email
      , DATE(TIMESTAMP_MICROS(activity.time_usec)) AS activity_date
  FROM  `@{WORKSPACE_ANALYTICS_PROJECT_ID}.@{WORKSPACE_ANALYTICS_DATASET_NAME}.activity` AS activity
  LEFT JOIN UNNEST(activity.org_unit_name_path) as activity__org_unit_name_path
  INNER JOIN calendar
    ON DATE(TIMESTAMP_MICROS(activity.time_usec)) <= calendar.date
    AND DATE(TIMESTAMP_MICROS(activity.time_usec)) > DATE_SUB(calendar.date, INTERVAL 7 DAY)
  WHERE activity__org_unit_name_path IS NOT NULL
  AND activity.record_type = 'calendar' -- all events are considered for active usage
  AND DATE(TIMESTAMP_MICROS(activity.time_usec)) >= '2023-01-01'
  GROUP BY 1,2,3,4,5
)
, active_calendar_7_day_rollup AS (
  SELECT
    calendar_date
    , json_ou_path
    , COUNT(DISTINCT activity_email) AS calendar_active_7_days
  FROM active_calendar_7_day
  GROUP BY 1,2
)
, active_calendar_1_day AS (
  SELECT
      calendar.date AS calendar_date
      , TO_JSON_STRING(activity.org_unit_name_path) AS json_ou_path
      , 'calendar'  AS product
      , activity.email  AS activity_email
      , DATE(TIMESTAMP_MICROS(activity.time_usec)) AS activity_date
  FROM  `@{WORKSPACE_ANALYTICS_PROJECT_ID}.@{WORKSPACE_ANALYTICS_DATASET_NAME}.activity` AS activity
  LEFT JOIN UNNEST(activity.org_unit_name_path) as activity__org_unit_name_path
  INNER JOIN calendar
    ON DATE(TIMESTAMP_MICROS(activity.time_usec)) = calendar.date
  WHERE activity__org_unit_name_path IS NOT NULL
  AND activity.record_type = 'calendar' -- all events are considered for active usage
  AND DATE(TIMESTAMP_MICROS(activity.time_usec)) >= '2023-01-01'
  GROUP BY 1,2,3,4,5
)
, active_calendar_1_day_rollup AS (
  SELECT
    calendar_date
    , json_ou_path
    , COUNT(DISTINCT activity_email) AS calendar_active_1_days
  FROM active_calendar_1_day
  GROUP BY 1,2
)
-- chat
, active_chat_30_day AS (
  SELECT
      calendar.date AS calendar_date
      , TO_JSON_STRING(activity.org_unit_name_path) AS json_ou_path
      , 'chat'  AS product
      , activity.email  AS activity_email
      , DATE(TIMESTAMP_MICROS(activity.time_usec)) AS activity_date
  FROM  `@{WORKSPACE_ANALYTICS_PROJECT_ID}.@{WORKSPACE_ANALYTICS_DATASET_NAME}.activity` AS activity
  LEFT JOIN UNNEST(activity.org_unit_name_path) as activity__org_unit_name_path
  INNER JOIN calendar
    ON DATE(TIMESTAMP_MICROS(activity.time_usec)) <= calendar.date
    AND DATE(TIMESTAMP_MICROS(activity.time_usec)) > DATE_SUB(calendar.date, INTERVAL 30 DAY)
  WHERE activity__org_unit_name_path IS NOT NULL
  AND activity.record_type = 'chat'
  AND activity.event_type = 'user_action'
  AND DATE(TIMESTAMP_MICROS(activity.time_usec)) >= '2023-01-01'
  GROUP BY 1,2,3,4,5
)
, active_chat_30_day_rollup AS (
  SELECT
    calendar_date
    , json_ou_path
    , COUNT(DISTINCT activity_email) AS chat_active_30_days
  FROM active_chat_30_day
  GROUP BY 1,2
)
, active_chat_7_day AS (
  SELECT
      calendar.date AS calendar_date
      , TO_JSON_STRING(activity.org_unit_name_path) AS json_ou_path
      , 'chat'  AS product
      , activity.email  AS activity_email
      , DATE(TIMESTAMP_MICROS(activity.time_usec)) AS activity_date
  FROM  `@{WORKSPACE_ANALYTICS_PROJECT_ID}.@{WORKSPACE_ANALYTICS_DATASET_NAME}.activity` AS activity
  LEFT JOIN UNNEST(activity.org_unit_name_path) as activity__org_unit_name_path
  INNER JOIN calendar
    ON DATE(TIMESTAMP_MICROS(activity.time_usec)) <= calendar.date
    AND DATE(TIMESTAMP_MICROS(activity.time_usec)) > DATE_SUB(calendar.date, INTERVAL 7 DAY)
  WHERE activity__org_unit_name_path IS NOT NULL
  AND activity.record_type = 'chat'
  AND activity.event_type = 'user_action'
  AND DATE(TIMESTAMP_MICROS(activity.time_usec)) >= '2023-01-01'
  GROUP BY 1,2,3,4,5
)
, active_chat_7_day_rollup AS (
  SELECT
    calendar_date
    , json_ou_path
    , COUNT(DISTINCT activity_email) AS chat_active_7_days
  FROM active_chat_7_day
  GROUP BY 1,2
)
, active_chat_1_day AS (
  SELECT
      calendar.date AS calendar_date
      , TO_JSON_STRING(activity.org_unit_name_path) AS json_ou_path
      , 'chat'  AS product
      , activity.email  AS activity_email
      , DATE(TIMESTAMP_MICROS(activity.time_usec)) AS activity_date
  FROM  `@{WORKSPACE_ANALYTICS_PROJECT_ID}.@{WORKSPACE_ANALYTICS_DATASET_NAME}.activity` AS activity
  LEFT JOIN UNNEST(activity.org_unit_name_path) as activity__org_unit_name_path
  INNER JOIN calendar
    ON DATE(TIMESTAMP_MICROS(activity.time_usec)) = calendar.date
  WHERE activity__org_unit_name_path IS NOT NULL
  AND activity.record_type = 'chat'
  AND activity.event_type = 'user_action'
  AND DATE(TIMESTAMP_MICROS(activity.time_usec)) >= '2023-01-01'
  GROUP BY 1,2,3,4,5
)
, active_chat_1_day_rollup AS (
  SELECT
    calendar_date
    , json_ou_path
    , COUNT(DISTINCT activity_email) AS chat_active_1_days
  FROM active_chat_1_day
  GROUP BY 1,2
)
-- gmail
, active_gmail_30_day AS (
  SELECT
      calendar.date AS calendar_date
      , TO_JSON_STRING(activity.org_unit_name_path) AS json_ou_path
      , 'gmail'  AS product
      , activity.email  AS activity_email
      , DATE(TIMESTAMP_MICROS(activity.time_usec)) AS activity_date
  FROM  `@{WORKSPACE_ANALYTICS_PROJECT_ID}.@{WORKSPACE_ANALYTICS_DATASET_NAME}.activity` AS activity
  LEFT JOIN UNNEST(activity.org_unit_name_path) as activity__org_unit_name_path
  INNER JOIN calendar
    ON DATE(TIMESTAMP_MICROS(activity.time_usec)) <= calendar.date
    AND DATE(TIMESTAMP_MICROS(activity.time_usec)) > DATE_SUB(calendar.date, INTERVAL 30 DAY)
  WHERE activity__org_unit_name_path IS NOT NULL
  AND activity.record_type = 'gmail'
  AND gmail.message_info.action_type IN (10, 69, 71)
  AND DATE(TIMESTAMP_MICROS(activity.time_usec)) >= '2023-01-01'
  GROUP BY 1,2,3,4,5
)
, active_gmail_30_day_rollup AS (
  SELECT
    calendar_date
    , json_ou_path
    , COUNT(DISTINCT activity_email) AS gmail_active_30_days
  FROM active_gmail_30_day
  GROUP BY 1,2
)
, active_gmail_7_day AS (
  SELECT
      calendar.date AS calendar_date
      , TO_JSON_STRING(activity.org_unit_name_path) AS json_ou_path
      , 'gmail'  AS product
      , activity.email  AS activity_email
      , DATE(TIMESTAMP_MICROS(activity.time_usec)) AS activity_date
  FROM  `@{WORKSPACE_ANALYTICS_PROJECT_ID}.@{WORKSPACE_ANALYTICS_DATASET_NAME}.activity` AS activity
  LEFT JOIN UNNEST(activity.org_unit_name_path) as activity__org_unit_name_path
  INNER JOIN calendar
    ON DATE(TIMESTAMP_MICROS(activity.time_usec)) <= calendar.date
    AND DATE(TIMESTAMP_MICROS(activity.time_usec)) > DATE_SUB(calendar.date, INTERVAL 7 DAY)
  WHERE activity__org_unit_name_path IS NOT NULL
  AND activity.record_type = 'gmail'
  AND gmail.message_info.action_type IN (10, 69, 71)
  AND DATE(TIMESTAMP_MICROS(activity.time_usec)) >= '2023-01-01'
  GROUP BY 1,2,3,4,5
)
, active_gmail_7_day_rollup AS (
  SELECT
    calendar_date
    , json_ou_path
    , COUNT(DISTINCT activity_email) AS gmail_active_7_days
  FROM active_gmail_7_day
  GROUP BY 1,2
)
, active_gmail_1_day AS (
  SELECT
      calendar.date AS calendar_date
      , TO_JSON_STRING(activity.org_unit_name_path) AS json_ou_path
      , 'gmail'  AS product
      , activity.email  AS activity_email
      , DATE(TIMESTAMP_MICROS(activity.time_usec)) AS activity_date
  FROM  `@{WORKSPACE_ANALYTICS_PROJECT_ID}.@{WORKSPACE_ANALYTICS_DATASET_NAME}.activity` AS activity
  LEFT JOIN UNNEST(activity.org_unit_name_path) as activity__org_unit_name_path
  INNER JOIN calendar
    ON DATE(TIMESTAMP_MICROS(activity.time_usec)) = calendar.date
  WHERE activity__org_unit_name_path IS NOT NULL
  AND activity.record_type = 'gmail'
  AND gmail.message_info.action_type IN (10, 69, 71)
  AND DATE(TIMESTAMP_MICROS(activity.time_usec)) >= '2023-01-01'
  GROUP BY 1,2,3,4,5
)
, active_gmail_1_day_rollup AS (
  SELECT
    calendar_date
    , json_ou_path
    , COUNT(DISTINCT activity_email) AS gmail_active_1_days
  FROM active_gmail_1_day
  GROUP BY 1,2
)
-- active 30 days
, active_all_30_day AS (
  SELECT calendar_date, json_ou_path, activity_email FROM active_docs_sheets_slides_30_day GROUP BY 1,2,3
  UNION ALL
  SELECT calendar_date, json_ou_path, activity_email FROM active_drive_30_day GROUP BY 1,2,3
  UNION ALL
  SELECT calendar_date, json_ou_path, activity_email FROM active_meet_30_day GROUP BY 1,2,3
  UNION ALL
  SELECT calendar_date, json_ou_path, activity_email FROM active_calendar_30_day GROUP BY 1,2,3
  UNION ALL
  SELECT calendar_date, json_ou_path, activity_email FROM active_chat_30_day GROUP BY 1,2,3
  UNION ALL
  SELECT calendar_date, json_ou_path, activity_email FROM active_gmail_30_day GROUP BY 1,2,3
)
, active_all_30_day_rollup AS (
  SELECT
    calendar_date
    , json_ou_path
    , COUNT(DISTINCT activity_email) AS all_active_30_days
  FROM active_all_30_day
  GROUP BY 1,2
)
-- active 7 days
, active_all_7_day AS (
  SELECT calendar_date, json_ou_path, activity_email FROM active_docs_sheets_slides_7_day GROUP BY 1,2,3
  UNION ALL
  SELECT calendar_date, json_ou_path, activity_email FROM active_drive_7_day GROUP BY 1,2,3
  UNION ALL
  SELECT calendar_date, json_ou_path, activity_email FROM active_meet_7_day GROUP BY 1,2,3
  UNION ALL
  SELECT calendar_date, json_ou_path, activity_email FROM active_calendar_7_day GROUP BY 1,2,3
  UNION ALL
  SELECT calendar_date, json_ou_path, activity_email FROM active_chat_7_day GROUP BY 1,2,3
  UNION ALL
  SELECT calendar_date, json_ou_path, activity_email FROM active_gmail_7_day GROUP BY 1,2,3
)
, active_all_7_day_rollup AS (
  SELECT
    calendar_date
    , json_ou_path
    , COUNT(DISTINCT activity_email) AS all_active_7_days
  FROM active_all_7_day
  GROUP BY 1,2
)
-- active 1 day
, active_all_1_day AS (
  SELECT calendar_date, json_ou_path, activity_email FROM active_docs_sheets_slides_1_day GROUP BY 1,2,3
  UNION ALL
  SELECT calendar_date, json_ou_path, activity_email FROM active_drive_1_day GROUP BY 1,2,3
  UNION ALL
  SELECT calendar_date, json_ou_path, activity_email FROM active_meet_1_day GROUP BY 1,2,3
  UNION ALL
  SELECT calendar_date, json_ou_path, activity_email FROM active_calendar_1_day GROUP BY 1,2,3
  UNION ALL
  SELECT calendar_date, json_ou_path, activity_email FROM active_chat_1_day GROUP BY 1,2,3
  UNION ALL
  SELECT calendar_date, json_ou_path, activity_email FROM active_gmail_1_day GROUP BY 1,2,3
)
, active_all_1_day_rollup AS (
  SELECT
    calendar_date
    , json_ou_path
    , COUNT(DISTINCT activity_email) AS all_active_1_days
  FROM active_all_1_day
  GROUP BY 1,2
)

SELECT
    calendar.date
    , ou_lookup.json_ou_path
    -- 30 day active
    , active_all_30_day_rollup.all_active_30_days
    , active_docs_sheets_slides_30_day_rollup.document_active_30_days
    , active_docs_sheets_slides_30_day_rollup.presentation_active_30_days
    , active_docs_sheets_slides_30_day_rollup.sheet_active_30_days
    , active_drive_30_day_rollup.drive_active_30_days
    , active_meet_30_day_rollup.meet_active_30_days
    , active_calendar_30_day_rollup.calendar_active_30_days
    , active_gmail_30_day_rollup.gmail_active_30_days
    , active_chat_30_day_rollup.chat_active_30_days
    -- 7 day active
    , active_all_7_day_rollup.all_active_7_days
    , active_docs_sheets_slides_7_day_rollup.document_active_7_days
    , active_docs_sheets_slides_7_day_rollup.presentation_active_7_days
    , active_docs_sheets_slides_7_day_rollup.sheet_active_7_days
    , active_drive_7_day_rollup.drive_active_7_days
    , active_meet_7_day_rollup.meet_active_7_days
    , active_calendar_7_day_rollup.calendar_active_7_days
    , active_gmail_7_day_rollup.gmail_active_7_days
    , active_chat_7_day_rollup.chat_active_7_days
    -- 1 day active
    , active_all_1_day_rollup.all_active_1_days
    , active_docs_sheets_slides_1_day_rollup.document_active_1_days
    , active_docs_sheets_slides_1_day_rollup.presentation_active_1_days
    , active_docs_sheets_slides_1_day_rollup.sheet_active_1_days
    , active_drive_1_day_rollup.drive_active_1_days
    , active_meet_1_day_rollup.meet_active_1_days
    , active_calendar_1_day_rollup.calendar_active_1_days
    , active_gmail_1_day_rollup.gmail_active_1_days
    , active_chat_1_day_rollup.chat_active_1_days
FROM calendar
CROSS JOIN ${ou_lookup.SQL_TABLE_NAME} AS ou_lookup
LEFT JOIN active_docs_sheets_slides_30_day_rollup
  ON calendar.date = active_docs_sheets_slides_30_day_rollup.calendar_date
  AND ou_lookup.json_ou_path = active_docs_sheets_slides_30_day_rollup.json_ou_path
LEFT JOIN active_docs_sheets_slides_7_day_rollup
  ON calendar.date = active_docs_sheets_slides_7_day_rollup.calendar_date
  AND ou_lookup.json_ou_path = active_docs_sheets_slides_7_day_rollup.json_ou_path
LEFT JOIN active_docs_sheets_slides_1_day_rollup
  ON calendar.date = active_docs_sheets_slides_1_day_rollup.calendar_date
  AND ou_lookup.json_ou_path = active_docs_sheets_slides_1_day_rollup.json_ou_path
LEFT JOIN active_drive_30_day_rollup
  ON calendar.date = active_drive_30_day_rollup.calendar_date
  AND ou_lookup.json_ou_path = active_drive_30_day_rollup.json_ou_path
LEFT JOIN active_drive_7_day_rollup
  ON calendar.date = active_drive_7_day_rollup.calendar_date
  AND ou_lookup.json_ou_path = active_drive_7_day_rollup.json_ou_path
LEFT JOIN active_drive_1_day_rollup
  ON calendar.date = active_drive_1_day_rollup.calendar_date
  AND ou_lookup.json_ou_path = active_drive_1_day_rollup.json_ou_path
LEFT JOIN active_meet_30_day_rollup
  ON calendar.date = active_meet_30_day_rollup.calendar_date
  AND ou_lookup.json_ou_path = active_meet_30_day_rollup.json_ou_path
LEFT JOIN active_meet_7_day_rollup
  ON calendar.date = active_meet_7_day_rollup.calendar_date
  AND ou_lookup.json_ou_path = active_meet_7_day_rollup.json_ou_path
LEFT JOIN active_meet_1_day_rollup
  ON calendar.date = active_meet_1_day_rollup.calendar_date
  AND ou_lookup.json_ou_path = active_meet_1_day_rollup.json_ou_path
LEFT JOIN active_calendar_30_day_rollup
  ON calendar.date = active_calendar_30_day_rollup.calendar_date
  AND ou_lookup.json_ou_path = active_calendar_30_day_rollup.json_ou_path
LEFT JOIN active_calendar_7_day_rollup
  ON calendar.date = active_calendar_7_day_rollup.calendar_date
  AND ou_lookup.json_ou_path = active_calendar_7_day_rollup.json_ou_path
LEFT JOIN active_calendar_1_day_rollup
  ON calendar.date = active_calendar_1_day_rollup.calendar_date
  AND ou_lookup.json_ou_path = active_calendar_1_day_rollup.json_ou_path
LEFT JOIN active_gmail_30_day_rollup
  ON calendar.date = active_gmail_30_day_rollup.calendar_date
  AND ou_lookup.json_ou_path = active_gmail_30_day_rollup.json_ou_path
LEFT JOIN active_gmail_7_day_rollup
  ON calendar.date = active_gmail_7_day_rollup.calendar_date
  AND ou_lookup.json_ou_path = active_gmail_7_day_rollup.json_ou_path
LEFT JOIN active_gmail_1_day_rollup
  ON calendar.date = active_gmail_1_day_rollup.calendar_date
  AND ou_lookup.json_ou_path = active_gmail_1_day_rollup.json_ou_path
LEFT JOIN active_chat_30_day_rollup
  ON calendar.date = active_chat_30_day_rollup.calendar_date
  AND ou_lookup.json_ou_path = active_chat_30_day_rollup.json_ou_path
LEFT JOIN active_chat_7_day_rollup
  ON calendar.date = active_chat_7_day_rollup.calendar_date
  AND ou_lookup.json_ou_path = active_chat_7_day_rollup.json_ou_path
LEFT JOIN active_chat_1_day_rollup
  ON calendar.date = active_chat_1_day_rollup.calendar_date
  AND ou_lookup.json_ou_path = active_chat_1_day_rollup.json_ou_path
LEFT JOIN active_all_30_day_rollup
  ON calendar.date = active_all_30_day_rollup.calendar_date
  AND ou_lookup.json_ou_path = active_all_30_day_rollup.json_ou_path
LEFT JOIN active_all_7_day_rollup
  ON calendar.date = active_all_7_day_rollup.calendar_date
  AND ou_lookup.json_ou_path = active_all_7_day_rollup.json_ou_path
LEFT JOIN active_all_1_day_rollup
  ON calendar.date = active_all_1_day_rollup.calendar_date
  AND ou_lookup.json_ou_path = active_all_1_day_rollup.json_ou_path
GROUP BY 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29
;;
    partition_keys: ["date"]
    datagroup_trigger: daily
  }


  parameter: timeframe {
    hidden: no
    view_label: " Filters"
    type: unquoted
    label: "Timeframe [N Days]"
    default_value: "1"
    allowed_value: {
      value: "1"
      label: "1 Day"
    }
    allowed_value: {
      value: "7"
      label: "7 Days"
    }
    allowed_value: {
      value: "30"
      label: "30 Days"
    }
    description: "Use with Active User % [N Days] fields for dynamic calculation for 1 day, 7 day, and 30 day metrics"
  }

  dimension: pk {
    hidden: yes
    primary_key: yes
    sql: CONCAT(${calendar_date},${json_ou_path}) ;;
  }

  dimension: calendar_date {
    hidden: yes
    type: date
    datatype: date
    sql: ${TABLE}.date ;;
  }

  dimension: json_ou_path {
    hidden: yes
    type: string
    sql: ${TABLE}.json_ou_path ;;
  }

  measure: all_active_n_day {
    view_label: "Accounts"
    group_label: "Active Users [N Days]"
    label: "{% if timeframe._is_filtered %}
                Total [{% parameter timeframe %} Days]
            {% else %}
                Total [1 Days]
            {% endif %}
            "
    type: sum
    sql: ${TABLE}.all_active_{% parameter timeframe %}_days ;;
    description: "Count of users who are active workspace users in the past N days"
  }

  measure: document_active_n_day {
    view_label: "Drive"
    group_label: "Active Users [N Days]"
    label: "{% if timeframe._is_filtered %}
                Docs [{% parameter timeframe %} Days]
            {% else %}
                Docs [1 Days]
            {% endif %}
            "
    type: sum
    sql: ${TABLE}.document_active_{% parameter timeframe %}_days ;;
    description: "Count of users who are active document users in the past N days"
    link: {
      label: "Drill to Drive Explore"
      url: "
      {% assign base = '/explore/workspace_audit_logs/drive?fields=activity.activity_date,activity.email&query_timezone=UTC' %}
      {% assign document_filters = '&f[activity.record_type]=drive&f[activity.event_name]=edit,view&f[activity.drive__doc_type]=doc' %}

      {% assign activity_date_filter = _filters['activity.activity_date'] %}
      {% if row['activity.activity_date'] %} {% assign activity_date_filter = activity.activity_date._value %} {% endif %}

      {{ base }}{{ document_filters }}&f[activity.email]=-EMPTY&f[activity.activity_date]={{ activity_date_filter | url_encode }}&f[activity.json_ou_path]={{ _filters['activity.json_ou_path'] | url_encode }}"
    }
  }

  measure: presentation_active_n_day {
    view_label: "Drive"
    group_label: "Active Users [N Days]"
    label: "{% if timeframe._is_filtered %}
               Slides [{% parameter timeframe %} Days]
            {% else %}
               Slides [1 Days]
            {% endif %}
            "
    type: sum
    sql: ${TABLE}.presentation_active_{% parameter timeframe %}_days ;;
    description: "Count of users who are active presentation users in the past N days"
    link: {
      label: "Drill to Drive Explore"
      url: "
      {% assign base = '/explore/workspace_audit_logs/drive?fields=activity.activity_date,activity.email&query_timezone=UTC' %}
      {% assign presentation_filters = '&f[activity.record_type]=drive&f[activity.event_name]=edit,view&f[activity.drive__doc_type]=slide' %}

      {% assign activity_date_filter = _filters['activity.activity_date'] %}
      {% if row['activity.activity_date'] %} {% assign activity_date_filter = activity.activity_date._value %} {% endif %}

      {{ base }}{{ presentation_filters }}&f[activity.email]=-EMPTY&f[activity.activity_date]={{ activity_date_filter | url_encode }}&f[activity.json_ou_path]={{ _filters['activity.json_ou_path'] | url_encode }}"
    }
  }

  measure: sheet_active_n_day {
    view_label: "Drive"
    group_label: "Active Users [N Days]"
    label: "{% if timeframe._is_filtered %}
                Sheets [{% parameter timeframe %} Days]
            {% else %}
                Sheets [1 Days]
            {% endif %}
            "
    type: sum
    sql: ${TABLE}.sheet_active_{% parameter timeframe %}_days ;;
    description: "Count of users who are active sheet users in the past N days"
    link: {
      label: "Drill to Drive Explore"
      url: "
      {% assign base = '/explore/workspace_audit_logs/drive?fields=activity.activity_date,activity.email&query_timezone=UTC' %}
      {% assign sheet_filters = '&f[activity.record_type]=drive&f[activity.event_name]=edit,view&f[activity.drive__doc_type]=sheet' %}

      {% assign activity_date_filter = _filters['activity.activity_date'] %}
      {% if row['activity.activity_date'] %} {% assign activity_date_filter = activity.activity_date._value %} {% endif %}

      {{ base }}{{ sheet_filters }}&f[activity.email]=-EMPTY&f[activity.activity_date]={{ activity_date_filter | url_encode }}&f[activity.json_ou_path]={{ _filters['activity.json_ou_path'] | url_encode }}"
    }
  }


  measure: drive_active_n_day {
    view_label: "Drive"
    group_label: "Active Users [N Days]"
    label: "{% if timeframe._is_filtered %}
               Drive [{% parameter timeframe %} Days]
            {% else %}
               Drive [1 Days]
            {% endif %}
            "
    type: sum
    sql: ${TABLE}.drive_active_{% parameter timeframe %}_days ;;
    description: "Count of users who are active drive users in the past N days"
    link: {
      label: "Drill to Drive Explore"
      url: "
      {% assign base = '/explore/workspace_audit_logs/drive?fields=activity.activity_date,activity.email&query_timezone=UTC' %}
      {% assign drive_filters = '&f[activity.event_name]=\"storage_usage_update\",download,upload,move,trash,untrash' %}

      {% assign activity_date_filter = _filters['activity.activity_date'] %}
      {% if row['activity.activity_date'] %} {% assign activity_date_filter = activity.activity_date._value %} {% endif %}

      {{ base }}{{ drive_filters }}&f[activity.email]=-EMPTY&f[activity.activity_date]={{ activity_date_filter | url_encode }}&f[activity.json_ou_path]={{ _filters['activity.json_ou_path'] | url_encode }}"
    }
  }

  measure: meet_active_n_day {
    view_label: "Meet"
    group_label: "Active Users [N Days]"
    label: "{% if timeframe._is_filtered %}
                Meet [{% parameter timeframe %} Days]
            {% else %}
                Meet [1 Days]
            {% endif %}
            "
    type: sum
    sql: ${TABLE}.meet_active_{% parameter timeframe %}_days ;;
    description: "Count of users who are active meet users in the past N days"
    link: {
      label: "Drill to Meet Explore"
      url: "
      {% assign base = '/explore/workspace_audit_logs/meet?fields=activity.activity_date,activity.email&query_timezone=UTC' %}
      {% assign meet_filters = '&f[activity.record_type]=meet' %}

      {% assign activity_date_filter = _filters['activity.activity_date'] %}
      {% if row['activity.activity_date'] %} {% assign activity_date_filter = activity.activity_date._value %} {% endif %}

      {{ base }}{{ meet_filters }}&f[activity.email]=-EMPTY&f[activity.activity_date]={{ activity_date_filter | url_encode }}&f[activity.json_ou_path]={{ _filters['activity.json_ou_path'] | url_encode }}"
    }
  }

  measure: calendar_active_n_day {
    view_label: "Calendar"
    group_label: "Active Users [N Days]"
    label: "{% if timeframe._is_filtered %}
               Calendar [{% parameter timeframe %} Days]
            {% else %}
               Calendar [1 Days]
            {% endif %}
            "
    type: sum
    sql: ${TABLE}.calendar_active_{% parameter timeframe %}_days ;;
    description: "Count of users who are active calendar users in the past N days"
    # todo add drills once modeled
  }

  measure: gmail_active_n_day {
    view_label: "Gmail"
    group_label: "Active Users [N Days]"
    label: "{% if timeframe._is_filtered %}
                Gmail [{% parameter timeframe %} Days]
            {% else %}
                Gmail [1 Days]
            {% endif %}
            "
    type: sum
    sql: ${TABLE}.gmail_active_{% parameter timeframe %}_days ;;
    description: "Count of users who are active gmail users in the past N days"
    link: {
      label: "Drill to Gmail Explore"
      url: "
      {% assign base = '/explore/workspace_audit_logs/gmail?fields=activity.activity_date,activity.email&query_timezone=UTC' %}
      {% assign gmail_filters = '&f[activity.gmail__message_info__action_type]=10,69,71' %}

      {% assign activity_date_filter = _filters['activity.activity_date'] %}
      {% if row['activity.activity_date'] %} {% assign activity_date_filter = activity.activity_date._value %} {% endif %}

      {{ base }}{{ gmail_filters }}&f[activity.email]=-EMPTY&f[activity.activity_date]={{ activity_date_filter | url_encode }}&f[activity.json_ou_path]={{ _filters['activity.json_ou_path'] | url_encode }}"
    }
  }

  measure: chat_active_n_day {
    view_label: "Chat"
    group_label: "Active Users [N Days]"
    label: "{% if timeframe._is_filtered %}
               Chat [{% parameter timeframe %} Days]
            {% else %}
               Chat [1 Days]
            {% endif %}
            "
    type: sum
    sql: ${TABLE}.chat_active_{% parameter timeframe %}_days ;;
    description: "Count of users who are active chat_act users in the past N days"
    # todo add drills once modeled
  }
}