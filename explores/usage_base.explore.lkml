datagroup: usage_default {
  sql_trigger: SELECT MAX(date) FROM `@{PROJECT_ID}.@{DATASET_NAME}.usage` ;;
  max_cache_age: "24 hours"
}

persist_with: usage_default

explore: usage_base {
  hidden:  yes
  extension: required
  view_name: usage
  # apply a filter to the partition column when user filters on date column
  sql_always_where:
    {% if usage.date._is_filtered %}
      AND _PARTITIONTIME BETWEEN
        TIMESTAMP_SUB(TIMESTAMP({% date_start usage.date %}), INTERVAL 1 DAY)
        AND COALESCE(TIMESTAMP({% date_end usage.date %}), TIMESTAMP(CURRENT_DATE()))
    {% endif %}
    ;;
  always_filter: {
    filters: [usage.date: "7 days"]
  }
}
