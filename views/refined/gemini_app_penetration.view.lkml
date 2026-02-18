include: "/views/pdt/gemini_penetration_engine.view.lkml"
view: gemini_app_penetration {
  # --- DERIVED TABLE CONFIGURATION ---
  derived_table: {
    sql:
      SELECT
        grain,
        activity_date,
        ou_name,
        app_name,
        total_users,
        ai_users
      FROM ${gemini_penetration_engine.SQL_TABLE_NAME}
      WHERE
        grain = '{% parameter analysis_grain %}'
      AND ({% condition date_filter %} TIMESTAMP(activity_date) {% endcondition %} OR activity_date IS NULL)
      ;;
  }

  # --- FILTERS & PARAMETERS ---

  filter: date_filter {
    type: date
    label: "Date Filter"
    description: "Select the date range for the analysis."
  }

  filter: ou_name_filter {
    type: string
    label: "Organizational Unit"
    description: "Filter by Organizational Unit."
    suggest_explore: gemini
    suggest_dimension: ou_user_lookup.ou_name
    sql: {% condition ou_name_filter %} ${ou_name} {% endcondition %} ;;
  }

  parameter: analysis_grain {
    type: unquoted
    label: "Time Granularity"
    description: "Select the time grouping for trend charts."
    default_value: "week"
    allowed_value: { label: "Total Period (Summary)" value: "total" }
    allowed_value: { label: "Daily Trend" value: "day" }
    allowed_value: { label: "Weekly Trend" value: "week" }
    allowed_value: { label: "Monthly Trend" value: "month" }
  }

  # --- DIMENSIONS ---

  dimension: ou_name {
    type: string
    sql: ${TABLE}.ou_name ;;
    hidden: yes
  }

  dimension: activity_raw {
    hidden: yes
    type: date
    sql: ${TABLE}.activity_date ;;
  }

  dimension: activity_day {
    hidden: yes
    type: date
    sql: ${activity_raw} ;;
  }

  dimension: activity_week {
    hidden: yes
    type: date_week
    sql: ${activity_raw} ;;
  }

  dimension: activity_month {
    hidden: yes
    type: date_month
    sql: ${activity_raw} ;;
  }

  dimension: app_name {
    type: string
    sql: ${TABLE}.app_name ;;
    label: "App Name"
    description: "The name of the Google Workspace application."
  }

  dimension: dynamic_date {
    label_from_parameter: analysis_grain
    description: "The date dimension that dynamically adjusts based on the selected Time Granularity parameter."
    sql:
    {% if analysis_grain._parameter_value == 'month' %}
      ${activity_month}
    {% elsif analysis_grain._parameter_value == 'week' %}
      ${activity_week}
    {% elsif analysis_grain._parameter_value == 'day' %}
      ${activity_day}
    {% else %}
      'Total Period'
    {% endif %} ;;
  }

  dimension: pk {
    primary_key: yes
    hidden: yes
    sql: CONCAT(COALESCE(CAST(${activity_raw} AS STRING), 'TOT'), ${app_name}, COALESCE(${ou_name}, 'ALL')) ;;
  }

  # --- MEASURES ---

  measure: total_users {
    type: sum
    sql: ${TABLE}.total_users ;;
    label: "Count of Total App Users"
    description: "The total number of distinct users active in the specific application (Denominator)."
    link: {
      label: "List of Total App Users"
      url: "
      {% if analysis_grain._parameter_value == 'total' %}
      /explore/workspace_audit_logs/gemini?fields=activity.email,activity.count&f[activity.record_type]={{ app_name._value }}&f[activity.activity_date]={{ _filters['date_filter'] | url_encode }}&f[ou_user_lookup.ou_name]={{ _filters['ou_name_filter'] | url_encode }}
      {% else %}
      /explore/workspace_audit_logs/gemini?fields=activity.email,activity.count&f[activity.record_type]={{ app_name._value }}&f[activity.activity_date]={{ dynamic_date._value }}&f[ou_user_lookup.ou_name]={{ _filters['ou_name_filter'] | url_encode }}
      {% endif %}
      "
    }
  }

  measure: gemini_users {
    type: sum
    sql: ${TABLE}.ai_users ;;
    label: "Count of Gemini Active Users"
    description: "The number of distinct users who performed Gemini actions within the specific application (Numerator)."
    link: {
      label: "List of Gemini Users"
      url: "
      {% if analysis_grain._parameter_value == 'total' %}
      /explore/workspace_audit_logs/gemini?fields=activity.email,gemini.count_actions&f[activity.record_type]=gemini_for_workspace&f[gemini.app_name]={{ app_name._value }}&f[activity.activity_date]={{ _filters['date_filter'] | url_encode }}&f[ou_user_lookup.ou_name]={{ _filters['ou_name_filter'] | url_encode }}
      {% else %}
      /explore/workspace_audit_logs/gemini?fields=activity.email,gemini.count_actions&f[activity.record_type]=gemini_for_workspace&f[gemini.app_name]={{ app_name._value }}&f[activity.activity_date]={{ dynamic_date._value }}&f[ou_user_lookup.ou_name]={{ _filters['ou_name_filter'] | url_encode }}
      {% endif %}
      "
    }
  }

  measure: penetration_rate {
    type: number
    sql: 1.0 * ${gemini_users} / NULLIF(${total_users}, 0) ;;
    label: "Penetration Rate"
    description: "The percentage of total app users who also use Gemini (Gemini Users / Total App Users)."
    value_format_name: percent_1
  }
}
