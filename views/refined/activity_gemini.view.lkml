include: "activity.view"

# API reference for gemini logs in BigQuery:
# https://developers.google.com/workspace/admin/reports/v1/appendix/activity/gemini-in-workspace-apps
view: gemini {
  extends: [activity]

  parameter: time_granularity {
    label: "Time Granularity"
    description: "Select the time grouping for trend charts. Options: Daily, Weekly, or Monthly trends."
    hidden: no
    type: unquoted
    default_value: "week"
    allowed_value: { label: "Daily Trend" value: "day" }
    allowed_value: { label: "Weekly Trend" value: "week" }
    allowed_value: { label: "Monthly Trend" value: "month" }
  }

  dimension: dynamic_activity_date {
    label_from_parameter: time_granularity
    description: "The dynamic date dimension that adjusts its granularity (Day, Week, Month) based on the 'Time Granularity' parameter selection."
    hidden: no
    sql:
    {% if time_granularity._parameter_value == 'month' %}
      ${activity_month}
    {% elsif time_granularity._parameter_value == 'week' %}
      ${activity_week}
    {% else %}
      ${activity_date}
    {% endif %} ;;
  }

  dimension: app_name {
    view_label: "Gemini"
    label: "App Name"
    description: "The specific Google Workspace application where the Gemini interaction occurred (e.g., Docs, Sheets, Meet, Gmail)."
    hidden: no
    type: string
    sql: ${TABLE}.gemini_for_workspace.app_name ;;
    drill_fields: [activity_gemini_users*]
  }

  dimension: feature_source {
    view_label: "Gemini"
    label: "Feature Source"
    description: "The specific UI feature or entry point within the app used to trigger Gemini (e.g., 'side_panel', 'chat_with_gemini', 'help_me_write')."
    hidden: no
    type: string
    sql: ${TABLE}.gemini_for_workspace.feature_source ;;
  }

  dimension: action {
    view_label: "Gemini"
    label: "Action"
    description: "The specific generative AI action performed by the user (e.g., 'summarize', 'bulletize', 'generate_image')."
    hidden: no
    type: string
    sql: ${TABLE}.gemini_for_workspace.action ;;
  }

  dimension: event_category {
    view_label: "Gemini"
    description: "The raw category of the event as reported by the API. Distinguishes between active user interactions ('active_generate') and passive system events."
    type: string
    sql: ${TABLE}.gemini_for_workspace.event_category ;;
  }

  dimension: event_category_split {
    view_label: "Gemini"
    label: "Event Category"
    description: "Categorizes Gemini events into 'Active' (user-initiated) or 'Passive' (system-generated) to accurately measure user engagement."
    hidden: no
    type: string
    case: {
      when: {
        sql: CONTAINS_SUBSTR(${event_category}, "active_");;
        label: "Active"
      }
      else: "Passive"
    }
  }

  dimension: action_category {
    view_label: "Gemini"
    label: "Action Category"
    description: "High-level grouping of Gemini actions into business use cases: Content Creation, Summarization, Refinement & Editing, Interaction & Research, and Assistance & Discovery."
    hidden: no
    type: string
    case: {
      when: {
        sql: ${action} IN ('generate_document', 'generate_text', 'generate_text_completion') ;;
        label: "Content Creation"
      }
      when: {
        sql: ${action} IN ('summarize', 'summarize_homepage', 'summarize_proactive', 'summarize_proactive_short') ;;
        label: "Summarization"
      }
      when: {
        sql: ${action} IN ('elaborate', 'formalize', 'proofread', 'auto_proofread') ;;
        label: "Refinement & Editing"
      }
      when: {
        sql: ${action} IN ('conversation', 'classic_use_case_gemini_app', 'search_web', 'classic_use_case_meet_studio_look') ;;
        label: "Interaction & Research"
      }
      when: {
        sql: ${action} IN ('generate_starter_tile_prompts', 'generate_nudge_prompts', 'proactive_suggestions', 'generate_apps_search_overlay_suggestions', 'detect_schedule_intent_compose', 'evaluate_natural_language_condition') ;;
        label: "Assistance & Discovery"
      }
      else: "Other"
    }
    drill_fields: [action, app_name]
  }

  measure: count_apps {
    hidden: no
    label: "Distinct Apps"
    view_label: "Gemini"
    description: "The distinct count of Workspace applications where Gemini was used during the selected period."
    type: count_distinct
    allow_approximate_optimization: yes
    sql: ${app_name} ;;
    drill_fields: [drill_details*]
  }

  measure: count_actions {
    hidden: no
    label: "Count of actions"
    view_label: "Gemini"
    description: "The total number of distinct Gemini actions (types of interactions) performed."
    type: count_distinct
    allow_approximate_optimization: yes
    sql: ${action} ;;
    drill_fields: [drill_details*]
  }

  measure: count_opportunity_gap {
    view_label: "Gemini"
    group_label: "Adoption"
    label: "Non-Gemini Users (Gap)"
    description: "The number of Active Workspace users who have NOT used Gemini in the selected period. Calculated as (Total Active Workspace Users - Active Gemini Users)."
    hidden: no
    type: number
    # Logic: Total Workspace Users (Sidecar) - Active Gemini Users (This View)
    sql: ${workspace_benchmark_sidecar.count_core_users} - ${count_user} ;;
    link: {
      label: "View Opportunity Emails"
      url: "/explore/workspace_audit_logs/activity_consolidated?fields=activity.email,activity.active_user_org_unit_name,activity.count&f[activity.record_type]=drive,gmail,docs,sheets,slides,meet,calendar,chat&f[activity.active_user_org_unit_name]={{ workspace_benchmark_sidecar.ou_name._value | url_encode }}&f[activity.activity_date]={{ _filters['activity.activity_date'] | url_encode }}&sorts=activity.count+desc&limit=500"
    }
  }

  measure: real_penetration_rate {
    view_label: "Gemini"
    group_label: "Adoption"
    label: "Real Penetration Rate %"
    description: "The percentage of Active Workspace Users who are active Gemini users. Calculated as (Active Gemini Users / Total Active Workspace Users)."
    hidden: no
    type: number
    sql: 1.0 * ${count_user} / NULLIF(${workspace_benchmark_sidecar.count_core_users}, 0) ;;
    value_format_name: percent_1
  }

  measure: count_sources {
    hidden: no
    label: "Count of Sources"
    view_label: "Gemini"
    description: "The distinct count of feature sources (entry points) used to interact with Gemini."
    type: count_distinct
    allow_approximate_optimization: yes
    sql: ${feature_source} ;;
  }

  measure: count_user {
    hidden: no
    view_label: "Gemini"
    group_label: "Adoption"
    label: "Count of Gemini Users"
    description: "The distinct count of users who have performed at least one active Gemini action in the selected period."
    type: count_distinct
    sql: ${email} ;;
    drill_fields: [user_drill_details*]
  }

  # --- POP PERIOD OVER PERIOD LOGIC ---

  filter: date_filter {
    hidden: no
    view_label: "Period Over Period"
    description: "Select the date range for comparison. This filter works in conjunction with the 'Timeframes' dimension."
    type: date
  }

  dimension_group: filter_start_date {
    hidden: yes
    type: time
    timeframes: [raw,date]
    sql: CASE WHEN {% date_start date_filter %} IS NULL THEN '2013-01-01' ELSE CAST({% date_start date_filter %} AS DATE) END;;
  }

  dimension_group: filter_end_date {
    hidden: yes
    type: time
    timeframes: [raw,date]
    sql: CASE WHEN {% date_end date_filter %} IS NULL THEN CURRENT_DATE ELSE CAST({% date_end date_filter %} AS DATE) END;;
  }

  dimension: interval {
    hidden: yes
    type: number
    sql: DATE_DIFF(${filter_end_date_raw}, ${filter_start_date_raw}, DAY) ;;
  }

  dimension: previous_start_date {
    hidden: yes
    type: string
    sql: DATE_ADD(${filter_start_date_raw}, INTERVAL- ${interval} DAY);;
  }

  dimension: timeframes {
    view_label: "Period Over Period"
    description: "Categorizes records into 'Selected Period', 'Previous Period', or 'Not in time period' based on the Date Filter."
    hidden: no
    type: string
    case: {
      when: {
        sql: ${is_current_period} = true;;
        label: "Selected Period"
      }
      when: {
        sql: ${is_previous_period} = true;;
        label: "Previous Period"
      }
      else: "Not in time period"
    }
  }

  dimension: is_current_period {
    type: yesno
    sql: ${activity_date} >= ${filter_start_date_date} AND ${activity_date} < ${filter_end_date_date} ;;
  }

  dimension: is_previous_period {
    type: yesno
    sql: ${activity_date} >= ${previous_start_date} AND ${activity_date} < ${filter_start_date_date} ;;
  }

  measure: selected_period_count_events {
    hidden: no
    view_label: "Period Over Period"
    description: "Count of events in the selected date range."
    type: count
    filters: [is_current_period: "yes"]
    value_format_name: decimal_0
  }
  measure: previous_period_count_events {
    hidden: no
    view_label: "Period Over Period"
    description: "Count of events in the previous date range (same duration immediately preceding the selected range)."
    type: count
    filters: [is_previous_period: "yes"]
    value_format_name: decimal_0
  }

  measure: selected_period_count_users {
    hidden: no
    view_label: "Period Over Period"
    description: "Count of distinct users in the selected date range."
    type: count_distinct
    sql: ${email} ;;
    filters: [is_current_period: "yes"]
    value_format_name: decimal_0
  }
  measure: previous_period_count_users {
    hidden: no
    view_label: "Period Over Period"
    description: "Count of distinct users in the previous date range."
    type: count_distinct
    sql: ${email} ;;
    filters: [is_previous_period: "yes"]
    value_format_name: decimal_0
  }

  dimension: ytd_only {hidden:yes}
  dimension: mtd_only {hidden:yes}
  dimension: wtd_only {hidden:yes}
}
