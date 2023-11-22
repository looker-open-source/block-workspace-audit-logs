include: "usage_base.explore"
include: "/views/refined/usage.view"
include: "/views/refined/usage_customer.view"
include: "/views/pdt/usage_user_drive_facts.view"

explore: usage_customer {
  extends: [usage_base]
  from: usage_customer
  sql_always_where: ${usage.record_type} = 'customer'
    ${EXTENDED} ;;
  join: usage__group_id {
    view_label: "Usage"
    # sql: LEFT JOIN UNNEST(${usage.group_id}) as usage__group_id ;;
    sql: LEFT JOIN UNNEST(${usage.group_id}) as usage__group_id WITH OFFSET as usage__group_id_offset;;
    relationship: one_to_many
  }

  join: usage__accounts__authorized_apps {
    view_label: "Usage: Accounts Authorized Apps"
    # sql: LEFT JOIN UNNEST(${usage.accounts__authorized_apps}) as usage__accounts__authorized_apps ;;
    sql: LEFT JOIN UNNEST(${usage.accounts__authorized_apps}) as usage__accounts__authorized_apps WITH OFFSET as usage__accounts__authorized_apps_offset ;;
    relationship: one_to_many
  }

  join: usage__cros__device_version_distribution {
    view_label: "Usage: Cros Device Version Distribution"
    # sql: LEFT JOIN UNNEST(${usage.cros__device_version_distribution}) as usage__cros__device_version_distribution ;;
    sql: LEFT JOIN UNNEST(${usage.cros__device_version_distribution}) as usage__cros__device_version_distribution WITH OFFSET as usage__cros__device_version_distribution_offset ;;
    relationship: one_to_many
  }

  join: usage_user_drive_facts {
    sql_on: ${usage.date} = ${usage_user_drive_facts.calendar_date} ;;
    relationship: many_to_one
  }
}
