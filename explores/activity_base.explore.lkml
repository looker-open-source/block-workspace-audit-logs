datagroup: activity_default {
  sql_trigger: SELECT MAX(time_usec) FROM `@{WORKSPACE_ANALYTICS_PROJECT_ID}.@{WORKSPACE_ANALYTICS_DATASET_NAME}.activity` ;;
  max_cache_age: "1 hour"
}

persist_with: activity_default

explore: activity_base {
  extension: required
  view_name: activity
  always_filter: {
    filters: [
      activity.activity_date: "",
      activity.json_ou_path: ""
    ]
  }
  # user will only be be able to see activity data from users within a OU
  access_filter: {
    field: ou_lookup.ou_id
    user_attribute: workspace_block_organizational_unit
  }
  # apply a filter to the partition column when user filters on activity dimension group timeframes
  sql_always_where:
    ${activity.activity_date} >= '2023-01-01'
    {% if activity.activity_time._is_filtered %}
      AND _PARTITIONTIME BETWEEN
        TIMESTAMP_SUB(TIMESTAMP({% date_start activity.activity_time %}), INTERVAL 1 DAY)
        AND COALESCE(TIMESTAMP({% date_end activity.activity_time %}), TIMESTAMP(CURRENT_DATE()))
    {% elsif activity.activity_date._is_filtered %}
      AND _PARTITIONTIME BETWEEN
        TIMESTAMP_SUB(TIMESTAMP({% date_start activity.activity_date %}), INTERVAL 1 DAY)
        AND COALESCE(TIMESTAMP({% date_end activity.activity_date %}), TIMESTAMP(CURRENT_DATE()))
    {% elsif activity.activity_week._is_filtered %}
      AND _PARTITIONTIME BETWEEN
        TIMESTAMP_SUB(TIMESTAMP({% date_start activity.activity_week %}), INTERVAL 1 DAY)
        AND COALESCE(TIMESTAMP({% date_end activity.activity_week %}), TIMESTAMP(CURRENT_DATE()))
    {% elsif activity.activity_month._is_filtered %}
      AND _PARTITIONTIME BETWEEN
        TIMESTAMP_SUB(TIMESTAMP({% date_start activity.activity_month %}), INTERVAL 1 DAY)
        AND COALESCE(TIMESTAMP({% date_end activity.activity_month %}), TIMESTAMP(CURRENT_DATE()))
    {% elsif activity.activity_quarter._is_filtered %}
      AND _PARTITIONTIME BETWEEN
        TIMESTAMP_SUB(TIMESTAMP({% date_start activity.activity_quarter %}), INTERVAL 1 DAY)
        AND COALESCE(TIMESTAMP({% date_end activity.activity_quarter %}), TIMESTAMP(CURRENT_DATE()))
    {% elsif activity.activity_year._is_filtered %}
      AND _PARTITIONTIME BETWEEN
        TIMESTAMP_SUB(TIMESTAMP({% date_start activity.activity_year %}), INTERVAL 1 DAY)
        AND COALESCE(TIMESTAMP({% date_end activity.activity_year %}), TIMESTAMP(CURRENT_DATE()))
    {% endif %}
    ;;

  # single organization unit name for each active user
  join: ou_user_lookup_for_active_user {
    from: ou_user_lookup
    sql_on: ${activity.email} = ${ou_user_lookup_for_active_user.email};;
    relationship: many_to_one
  }

  # UNNEST all organization unit names active user belongs to in OU tree
  join: activity__org_unit_name_path {
    sql: LEFT JOIN UNNEST(${activity.org_unit_name_path}) as activity__org_unit_name_path ;;
    relationship: one_to_many
  }

  # user attribute filter on ou_id and inner joined with json_ou_path
  join: ou_lookup {
    sql_on: ${ou_lookup.json_ou_path} = ${activity.json_ou_path} ;;
    type: inner
    relationship: many_to_many
  }
}