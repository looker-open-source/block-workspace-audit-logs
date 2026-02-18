include: "gemini_activity_base.view.lkml"
view: gemini_penetration_engine {
  derived_table: {
    datagroup_trigger: daily
    partition_keys: ["activity_date"]
    cluster_keys: ["app_name", "ou_name"]

    sql:
      -- SCENARIO 1: DAILY TREND
      SELECT
        'day' AS grain,
        activity_date,
        ou_name,
        app_name,
        APPROX_COUNT_DISTINCT(CASE WHEN is_universe_match = 1 THEN email END) AS total_users,
        APPROX_COUNT_DISTINCT(CASE WHEN is_gemini_match = 1 THEN email END) AS ai_users
      FROM ${gemini_activity_base.SQL_TABLE_NAME}
      GROUP BY 1, 2, 3, 4

      UNION ALL

      -- SCENARIO 2: WEEKLY TREND
      SELECT
      'week' AS grain,
      DATE_TRUNC(activity_date, WEEK) AS activity_date,
      ou_name,
      app_name,
      APPROX_COUNT_DISTINCT(CASE WHEN is_universe_match = 1 THEN email END) AS total_users,
      APPROX_COUNT_DISTINCT(CASE WHEN is_gemini_match = 1 THEN email END) AS ai_users
      FROM ${gemini_activity_base.SQL_TABLE_NAME}
      GROUP BY 1, 2, 3, 4

      UNION ALL

      -- SCENARIO 3: MONTHLY TREND
      SELECT
      'month' AS grain,
      DATE_TRUNC(activity_date, MONTH) AS activity_date,
      ou_name,
      app_name,
      APPROX_COUNT_DISTINCT(CASE WHEN is_universe_match = 1 THEN email END) AS total_users,
      APPROX_COUNT_DISTINCT(CASE WHEN is_gemini_match = 1 THEN email END) AS ai_users
      FROM ${gemini_activity_base.SQL_TABLE_NAME}
      GROUP BY 1, 2, 3, 4

      UNION ALL

      -- SCENARIO 4: TOTAL PERIOD (Summary)
      SELECT
      'total' AS grain,
      CAST(NULL AS DATE) AS activity_date,
      ou_name,
      app_name,
      APPROX_COUNT_DISTINCT(CASE WHEN is_universe_match = 1 THEN email END) AS total_users,
      APPROX_COUNT_DISTINCT(CASE WHEN is_gemini_match = 1 THEN email END) AS ai_users
      FROM ${gemini_activity_base.SQL_TABLE_NAME}
      GROUP BY 1, 2, 3, 4
      ;;
  }

  # --- Internal Dimensions & Measures (Hidden) ---
  dimension: ou_name {
    type: string
    sql: ${TABLE}.ou_name ;;
    hidden: yes
  }

  dimension: grain { type: string
    sql: ${TABLE}.grain ;;
    hidden: yes
  }

  dimension: activity_date {
    type: date
    sql: ${TABLE}.activity_date ;;
    hidden: yes
  }

  dimension: app_name {
    type: string
    sql: ${TABLE}.app_name ;;
    hidden: yes
  }

  measure: total_users {
    type: sum
    sql: ${TABLE}.total_users ;;
    hidden: yes
  }

  measure: ai_users {
    type: sum
    sql: ${TABLE}.ai_users ;;
    hidden: yes
  }
}
