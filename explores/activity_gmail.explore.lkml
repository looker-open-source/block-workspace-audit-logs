include: "activity_base.explore"
include: "/views/refined/activity_gmail.view"

explore: gmail {
  extends: [activity_base]
  from: gmail
  always_filter: { filters: [activity.record_type: "gmail"] }

  join: activity__gmail__message_info__link_domain {
    view_label: "Activity: Gmail Message Info Link Domain"
    sql: LEFT JOIN UNNEST(${activity.gmail__message_info__link_domain}) as activity__gmail__message_info__link_domain ;;
    relationship: one_to_many
  }

  join: activity__gmail__message_info__message_set {
    view_label: "Activity: Gmail Message Info Message Set"
    sql: LEFT JOIN UNNEST(${activity.gmail__message_info__message_set}) as activity__gmail__message_info__message_set ;;
    relationship: one_to_many
  }

  join: activity__gmail__message_info__attachment {
    view_label: "Activity: Gmail Message Info Attachment"
    sql: LEFT JOIN UNNEST(${activity.gmail__message_info__attachment}) as activity__gmail__message_info__attachment ;;
    relationship: one_to_many
  }

  join: activity__gmail__message_info__destination {
    view_label: "Activity: Gmail Message Info Destination"
    sql: LEFT JOIN UNNEST(${activity.gmail__message_info__destination}) as activity__gmail__message_info__destination ;;
    relationship: one_to_many
  }

  join: activity__gmail__message_info__triggered_rule_info {
    view_label: "Activity: Gmail Message Info Triggered Rule Info"
    sql: LEFT JOIN UNNEST(${activity.gmail__message_info__triggered_rule_info}) as activity__gmail__message_info__triggered_rule_info ;;
    relationship: one_to_many
  }

  join: activity__gmail__message_info__triggered_rule_info__string_match {
    view_label: "Activity: Gmail Message Info Triggered Rule Info String Match"
    sql: LEFT JOIN UNNEST(${activity__gmail__message_info__triggered_rule_info.string_match}) as activity__gmail__message_info__triggered_rule_info__string_match ;;
    relationship: one_to_many
  }

  join: activity__gmail__message_info__triggered_rule_info__consequence {
    view_label: "Activity: Gmail Message Info Triggered Rule Info Consequence"
    sql: LEFT JOIN UNNEST(${activity__gmail__message_info__triggered_rule_info.consequence}) as activity__gmail__message_info__triggered_rule_info__consequence ;;
    relationship: one_to_many
  }

  join: activity__gmail__message_info__connection_info__authenticated_domain {
    view_label: "Activity: Gmail Message Info Connection Info Authenticated Domain"
    sql: LEFT JOIN UNNEST(${activity.gmail__message_info__connection_info__authenticated_domain}) as activity__gmail__message_info__connection_info__authenticated_domain ;;
    relationship: one_to_many
  }

  join: activity__gmail__message_info__connection_info__failed_smtp_out_connect_ip {
    view_label: "Activity: Gmail Message Info Connection Info Failed Smtp Out Connect Ip"
    sql: LEFT JOIN UNNEST(${activity.gmail__message_info__connection_info__failed_smtp_out_connect_ip}) as activity__gmail__message_info__connection_info__failed_smtp_out_connect_ip ;;
    relationship: one_to_many
  }

  join: activity__gmail__message_info__triggered_rule_info__consequence__subconsequence {
    view_label: "Activity: Gmail Message Info Triggered Rule Info Consequence Subconsequence"
    sql: LEFT JOIN UNNEST(${activity__gmail__message_info__triggered_rule_info__consequence.subconsequence}) as activity__gmail__message_info__triggered_rule_info__consequence__subconsequence ;;
    relationship: one_to_many
  }

  join: activity__gmail__message_info__structured_policy_log_info__detected_file_types {
    view_label: "Activity: Gmail Message Info Structured Policy Log Info Detected File Types"
    sql: LEFT JOIN UNNEST(${activity.gmail__message_info__structured_policy_log_info__detected_file_types}) as activity__gmail__message_info__structured_policy_log_info__detected_file_types ;;
    relationship: one_to_many
  }

  join: activity__gmail__message_info__structured_policy_log_info__exchange_journal_info__recipients {
    view_label: "Activity: Gmail Message Info Structured Policy Log Info Exchange Journal Info Recipients"
    sql: LEFT JOIN UNNEST(${activity.gmail__message_info__structured_policy_log_info__exchange_journal_info__recipients}) as activity__gmail__message_info__structured_policy_log_info__exchange_journal_info__recipients ;;
    relationship: one_to_many
  }

  join: activity__gmail__message_info__structured_policy_log_info__exchange_journal_info__unknown_recipients {
    view_label: "Activity: Gmail Message Info Structured Policy Log Info Exchange Journal Info Unknown Recipients"
    sql: LEFT JOIN UNNEST(${activity.gmail__message_info__structured_policy_log_info__exchange_journal_info__unknown_recipients}) as activity__gmail__message_info__structured_policy_log_info__exchange_journal_info__unknown_recipients ;;
    relationship: one_to_many
  }
}
