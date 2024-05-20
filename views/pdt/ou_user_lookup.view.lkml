view: ou_user_lookup {
  derived_table: {
    sql:
SELECT
  email AS email -- can be user or group email
  , STRING_AGG(
      activity.org_unit_name_path[OFFSET(ARRAY_LENGTH(activity.org_unit_name_path)-1)]
      ORDER BY activity.time_usec
      DESC LIMIT 1
    ) AS ou_name
  , STRING_AGG(
      TO_JSON_STRING(activity.org_unit_name_path)
      ORDER BY activity.time_usec
      DESC LIMIT 1
    ) AS json_ou_path
FROM `@{WORKSPACE_ANALYTICS_PROJECT_ID}.@{WORKSPACE_ANALYTICS_DATASET_NAME}.activity` as activity
WHERE ARRAY_LENGTH(activity.org_unit_name_path) > 0
AND DATE(TIMESTAMP_MICROS(activity.time_usec)) >= '2023-01-01'
GROUP BY 1
      ;;
    datagroup_trigger: daily
  }

  fields_hidden_by_default: yes

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: ou_name {
    type: string
    sql: ${TABLE}.ou_name ;;
  }

  dimension: json_ou_path {
    type: string
    sql: ${TABLE}.json_ou_path ;;
  }
}