view: workspace_benchmark_sidecar {
  derived_table: {
    datagroup_trigger: daily
    sql:
      SELECT
        ou_user_lookup.ou_name,
        COUNT(DISTINCT activity.email) as active_core_users
      FROM `@{WORKSPACE_ANALYTICS_PROJECT_ID}.@{WORKSPACE_ANALYTICS_DATASET_NAME}.activity` AS activity
      INNER JOIN ${ou_user_lookup.SQL_TABLE_NAME} AS ou_user_lookup
        ON activity.email = ou_user_lookup.email
      WHERE
        -- Aligned with the apps we track for Gemini Adoption:
        -- 'drive' record_type includes Docs, Sheets, Slides, and generic Drive usage.
        activity.record_type IN ('drive', 'gmail', 'meet', 'chat', 'calendar')
        AND activity.record_type != 'gemini_for_workspace'
        AND DATE(TIMESTAMP_MICROS(activity.time_usec)) >= DATE_SUB(CURRENT_DATE(), INTERVAL 30 DAY)
      GROUP BY 1
    ;;
  }

  dimension: ou_name {
    primary_key: yes
    hidden: yes
    sql: ${TABLE}.ou_name ;;
  }

  measure: count_core_users {
    view_label: "Gemini"
    group_label: "Adoption"
    label: "Total Active Workspace Users"
    description: "Distinct users active in Core Apps (Docs, Drive, Gmail, etc.) in the last 30 days."
    type: sum
    sql: ${TABLE}.active_core_users ;;
    link: {
      label: "View User List (Core Workspace)"
      url: "/explore/workspace_audit_logs/activity?fields=activity.email,activity.count&f[activity.record_type]=drive,gmail,docs,sheets,slides,meet,calendar&f[activity.active_user_org_unit_name]={{ ou_name._value | url_encode }}&f[activity.activity_date]=30+days"
    }
  }
}
