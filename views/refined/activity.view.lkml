include: "../raw/activity.view"
include: "../common/sets.view"

view: +activity {
  extends: [sets]
  derived_table: {
    sql:
    SELECT *, _PARTITIONTIME, GENERATE_UUID() AS pk FROM `@{WORKSPACE_ANALYTICS_PROJECT_ID}.@{WORKSPACE_ANALYTICS_DATASET_NAME}.activity` ;;
  }

  dimension: pk {
    primary_key: yes
  }

  # _paritiontime column is automatically filtered in the sql_always_where tied to time_usec
  dimension_group: _partition {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}._PARTITIONTIME ;;
  }

  dimension_group: activity {
    hidden: no
    description: "The timestamp of the event"
    type: time
    timeframes: [
      raw,
      time,
      hour,
      date,
      day_of_week,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    sql: TIMESTAMP_MICROS(${time_usec}) ;;
  }

  dimension: email {
    hidden: no
    group_label: "Active User"
    label: "Active User Email"
  }

  dimension: event_name {
    hidden: no
    description: "The name of the event"
    sql: LOWER(${EXTENDED}) ;;
  }

  dimension: event_type {
    hidden: no
    description: "The type of the event"
    sql: LOWER(${EXTENDED}) ;;
  }

  dimension: ip_address {
    hidden: no
    group_label: "Active User"
    label: "Active User IP Address"
    description: "The IP Address of the active user"
  }

  dimension: record_type {
    hidden: no
    description: "The log record type. Possible values:
      admin, calendar, chat, chrome, classroom, data_studio, drive, gmail,
      groups, login, meet, mobile, rules, saml, token, user_accounts, voice"
  }

  # new dimensions

  dimension: primary_domain {
    hidden: yes
    type: string
    sql: '@{WORKSPACE_ANALYTICS_PRIMARY_DOMAIN}' ;;
  }

  dimension: secondary_domains {
    hidden: yes
    type: string
    sql: '@{WORKSPACE_ANALYTICS_SECONDARY_DOMAINS}' ;;
  }

  dimension: active_user_domain {
    hidden: no
    group_label: "Active User"
    label: "Active User Domain"
    description: "The domain of the active user"
    sql: REGEXP_EXTRACT(${email}, r'@(.+)') ;;
  }

  dimension: is_active_user_primary {
    hidden: no
    group_label: "Active User"
    description: "Yes if the active user's domain is: '@{WORKSPACE_ANALYTICS_PRIMARY_DOMAIN}'"
    type: yesno
    sql: ${active_user_domain} = '@{WORKSPACE_ANALYTICS_PRIMARY_DOMAIN}' ;;
  }

  dimension: is_active_user_secondary {
    hidden: no
    group_label: "Active User"
    description: "Yes if the active user's domain is in: '@{WORKSPACE_ANALYTICS_SECONDARY_DOMAINS}'"
    type: yesno
    sql: ${active_user_domain} IN UNNEST(SPLIT(${secondary_domains},',')) ;;
  }

  dimension: is_active_user_internal {
    hidden: no
    group_label: "Active User"
    description: "Yes if the active user's domain is: '@{WORKSPACE_ANALYTICS_PRIMARY_DOMAIN}' or in '@{WORKSPACE_ANALYTICS_SECONDARY_DOMAINS}'"
    type: yesno
    sql: ${is_active_user_primary} OR ${is_active_user_secondary} ;;
  }

  dimension: json_ou_path {
    hidden: no
    group_label: "Active User"
    label: "Active User OU JSON Path"
    type: string
    sql: TO_JSON_STRING(activity.org_unit_name_path) ;;
  }

  dimension: active_user_org_unit_name {
    hidden: no
    group_label: "Active User"
    label: "Active User OU Name"
    description: "The current Organizational Unit of the active user"
    type:  string
    sql: ${ou_user_lookup_for_active_user.ou_name} ;;
  }

  # this is used to convert the user attribute json string to a name value, e.g:
  # '["my.org"]' -> "my.org"
  # '["my.org","unit a"]' -> "unit a"
  # '["my.org","unit a","team 1"]' -> "team 1"
  dimension: json_ou_to_name {
    hidden: yes
    group_label: "Active User"
    label: "User Attribute Organizational Unit Name"
    type: string
    sql: REGEXP_EXTRACT_ALL('{{_user_attributes['workspace_block_organizational_unit']}}', '"(.*?)"')[
            OFFSET(
              ARRAY_LENGTH(REGEXP_EXTRACT_ALL('{{_user_attributes['workspace_block_organizational_unit']}}', '"(.*?)"')) - 1
            )
          ]
    ;;
  }

  # measures

  measure: count {
    hidden: no
    label: "Count of Events"
    description: "Count of all activity events"
    type: count
  }

  measure: count_user {
    hidden: no
    label: "Count of Users"
    description: "Distinct number of users"
    type: count_distinct
    allow_approximate_optimization: yes
    sql: ${email} ;;
  }

  measure: list_of_event_types {
    hidden: no
    description: "A string array of all event types"
    type: list
    list_field: event_type
  }

  measure: list_of_event_names {
    hidden: no
    description: "A string array of all event names"
    type: list
    list_field: event_name
  }

  # default drill for all measures
  drill_fields: [activity_default*]
}

view: +activity__org_unit_name_path {
  dimension: activity__org_unit_name_path {
    hidden: no
    full_suggestions: yes
    # suggest_persist_for: "0 seconds" # set this to zero to disable cache for ou name filter lookup
    view_label: "Activity"
    group_label: "Active User"
    label: "Active User Nested OU Name"
    description: "The nested Organizational Unit(s) of the active user at the time of the activity"
  }
}

view: +activity__group_id {}
view: +activity__token__scope {}
view: +activity__chat__target_users {}
view: +activity__chrome__access_level {}
view: +activity__mobile__ip_addresses {}
view: +activity__classroom__guardians {}
view: +activity__admin__whitelisted_groups {}
view: +activity__classroom__invited_emails {}
view: +activity__classroom__impacted_users {}
view: +activity__classroom__attachment_types {}
view: +activity__groups__new_value_repeated {}
view: +activity__groups__old_value_repeated {}
view: +activity__token__scope_data {}
view: +activity__chrome__triggered_rules_reason {}
view: +activity__token__scope_data__product_bucket {}
view: +activity__mobile__device_deactivation_reason {}
view: +activity__voice__usage_billing_metric_label {}