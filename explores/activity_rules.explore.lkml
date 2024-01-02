include: "activity_base.explore"
include: "/views/refined/activity_rules.view"

explore: rules {
  extends: [activity_base]
  from: rules
  always_filter: { filters: [activity.record_type: "rules"] }

  join: activity__rules__actions {
    sql: LEFT JOIN UNNEST(${activity.rules__actions}) as activity__rules__actions ;;
    relationship: one_to_many
  }

  join: activity__rules__access_level {
    sql: LEFT JOIN UNNEST(${activity.rules__access_level}) as activity__rules__access_level ;;
    relationship: one_to_many
  }

  join: activity__rules__resource_recipients {
    sql: LEFT JOIN UNNEST(${activity.rules__resource_recipients}) as activity__rules__resource_recipients ;;
    relationship: one_to_many
  }

  join: activity__rules__applied_actions {
    sql: LEFT JOIN UNNEST(${activity.rules__applied_actions}) as activity__rules__applied_actions ;;
    relationship: one_to_many
  }

  join: activity__rules__triggered_actions {
    sql: LEFT JOIN UNNEST(${activity.rules__triggered_actions}) as activity__rules__triggered_actions ;;
    relationship: one_to_many
  }

  join: activity__rules__matched_detectors {
    sql: LEFT JOIN UNNEST(${activity.rules__matched_detectors}) as activity__rules__matched_detectors ;;
    relationship: one_to_many
  }

  join: activity__rules__suppressed_actions {
    sql: LEFT JOIN UNNEST(${activity.rules__suppressed_actions}) as activity__rules__suppressed_actions ;;
    relationship: one_to_many
  }

  join: activity__rules__evaluation_context__evaluation_resource_ids {
    sql: LEFT JOIN UNNEST(${activity.rules__evaluation_context__evaluation_resource_ids}) as activity__rules__evaluation_context__evaluation_resource_ids ;;
    relationship: one_to_many
  }
}
