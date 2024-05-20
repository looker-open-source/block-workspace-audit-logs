view: ou_lookup {
  derived_table: {
    sql:
(SELECT
  activity__org_unit_name  AS ou_name
  , CONCAT(
      REGEXP_EXTRACT(
        TO_JSON_STRING(activity.org_unit_name_path)
        , CONCAT('.*', activity__org_unit_name)
        ),
    '"]') AS ou_id
  , TO_JSON_STRING(activity.org_unit_name_path) AS json_ou_path
FROM `@{WORKSPACE_ANALYTICS_PROJECT_ID}.@{WORKSPACE_ANALYTICS_DATASET_NAME}.activity` as activity
LEFT JOIN UNNEST(activity.org_unit_name_path) as activity__org_unit_name
WHERE ARRAY_LENGTH(activity.org_unit_name_path) > 0
AND activity__org_unit_name != ""
AND DATE(TIMESTAMP_MICROS(activity.time_usec)) >= '2023-01-01'
GROUP BY 1,2,3)
UNION ALL
(SELECT '@{WORKSPACE_ANALYTICS_PRIMARY_DOMAIN}', '["@{WORKSPACE_ANALYTICS_PRIMARY_DOMAIN}"]', '[]') -- for external users and system generated logs
    ;;
    datagroup_trigger: daily
  }

  fields_hidden_by_default: yes

  dimension: ou_name {
    type: string
    sql: ${TABLE}.ou_name ;;
  }

  dimension: ou_id {
    type: string
    sql: ${TABLE}.ou_id ;;
  }

  dimension: json_ou_path {
    type: string
    sql: ${TABLE}.json_ou_path ;;
  }
}