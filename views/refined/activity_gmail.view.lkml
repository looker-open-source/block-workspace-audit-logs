include: "activity.view"

# schema for gmail logs in BigQuery:
# https://support.google.com/a/answer/7230050
view: gmail {
  extends: [activity]

  dimension: gmail__message_info__action_type {
    hidden: no
    view_label: "Gmail"
    label: "Action Type"
    description: "The action this event represents:
      https://support.google.com/a/answer/7230050#action"
  }

  dimension: gmail__message_info__description {
    hidden: no
    view_label: "Gmail"
    label: "Description"
    description: "Human-readable description of what happened to the message"
  }

  dimension: gmail__message_info__flattened_destinations {
    hidden: no
    view_label: "Gmail"
    label: "Flattened Destination Addresses"
    description: "String that has information of all recipient information flattened, in this format:
    'service_for_recipient1:selector_for_recipient1:address_for_recipient1,
    service_for_recipient2:selector_for_recipient2:address_for_recipient2'"
  }

  dimension: gmail__message_info__is_spam {
    hidden: no
    view_label: "Gmail"
    group_label: "Spam Info"
    label: "Is Spam"
    description: "True if the message was classified as spam"
  }

  dimension: gmail__message_info__num_message_attachments {
    hidden: no
    view_label: "Gmail"
    group_label: "Attachment"
    label: "Number of Message Attachements"
    description: "Number of message attachments"
  }

  dimension: gmail__message_info__payload_size {
    hidden: no
    view_label: "Gmail"
    label: "Payload Size"
    description: "Size of the message payload, in bytes"
  }

  dimension: gmail__message_info__subject {
    hidden: no
    view_label: "Gmail"
    label: "Subject"
    description: "Message subject"
  }

  dimension: gmail__message_info__connection_info__client_host_zone {
    hidden: no
    view_label: "Gmail"
    label: "Client Host Zone"
    description: "Client host zone of the mail sender"
  }

  dimension: gmail__message_info__connection_info__client_ip {
    hidden: no
    view_label: "Gmail"
    label: "Client IP"
    description: "IP address of the mail client that started the message"
  }

  dimension: gmail__message_info__connection_info__dmarc_published_domain {
    hidden: no
    view_label: "Gmail"
    label: "DMARC Published Domain"
    description: "Domain name used to evaluate the DMARC policy"
  }

  dimension: gmail__message_info__connection_info__ip_geo_country {
    hidden: no
    view_label: "Gmail"
    label: "IP Geo Country"
    description: "ISO country code based on the relay IP"
  }

  dimension: gmail__message_info__connection_info__is_internal {
    hidden: no
    view_label: "Gmail"
    label: "Is Internal"
    description: "Indicates if the message was sent within domains owned by the customer"
  }

  dimension: gmail__message_info__connection_info__is_intra_domain {
    hidden: no
    view_label: "Gmail"
    label: "Is Intra Domain"
    description: "Indicates if the message was sent within the same domain"
  }

  dimension: gmail__message_info__rfc2822_message_id {
    hidden: no
    view_label: "Gmail"
    label: "RFC 2822 Message ID"
    description: "RFC 2822 message ID for the message"
  }

  dimension: gmail__message_info__source__address {
    hidden: no
    view_label: "Gmail"
    group_label: "Message Info"
    group_item_label: "Source Address Email"
    label: "Source Address Email"
    description: "Email address of the sender"
  }

  dimension: gmail__message_info__source__from_header_address {
    hidden: no
    view_label: "Gmail"
    group_label: "Message Info"
    group_item_label: "Source From Header Address"
    label: "Source From Header Address"
    description: "From header address as it appears in the message headers"
  }

  dimension: gmail__message_info__source__from_header_domain {
    hidden: no
    view_label: "Gmail"
    group_label: "Message Info"
    group_item_label: "Source Address Domain"
    label: "Source Address Domain"
    description: "Extracted domain from header address"
    sql: REGEXP_EXTRACT(${gmail__message_info__source__from_header_address}, r'@(.+)') ;;
  }

  dimension: is_source_primary {
    hidden: no
    view_label: "Gmail"
    group_label: "Message Info"
    description: "Yes if the source address domain is: '@{WORKSPACE_ANALYTICS_PRIMARY_DOMAIN}'"
    type: yesno
    sql: ${gmail__message_info__source__from_header_domain} = '@{WORKSPACE_ANALYTICS_PRIMARY_DOMAIN}' ;;
  }

  dimension: is_source_secondary {
    hidden: no
    view_label: "Gmail"
    group_label: "Message Info"
    description: "Yes if the source address domain is in: '@{WORKSPACE_ANALYTICS_SECONDARY_DOMAINS}'"
    type: yesno
    sql: ${gmail__message_info__source__from_header_domain} IN UNNEST(SPLIT('@{WORKSPACE_ANALYTICS_SECONDARY_DOMAINS}',',')) ;;
  }

  dimension: is_source_internal {
    hidden: no
    view_label: "Gmail"
    group_label: "Message Info"
    description: "Yes if the source address domain is: '@{WORKSPACE_ANALYTICS_PRIMARY_DOMAIN}' or in '@{WORKSPACE_ANALYTICS_SECONDARY_DOMAINS}'"
    type: yesno
    sql: ${is_source_primary} OR ${is_source_secondary} ;;
  }

  dimension: gmail__message_info__source__from_header_displayname {
    hidden: no
    view_label: "Gmail"
    group_label: "Message Info"
    group_item_label: "Source From Header Display Name"
    label: "Source From Header Display Name"
    description: "From header display name as it appears in the message"
  }

  dimension: gmail__message_info__spam_info__classification_reason {
    hidden: no
    view_label: "Gmail"
    group_label: "Spam Info"
    label: "Spam Classification Reason"
    description: "Reason the message was classified as spam, phishing, or other classification"
  }

  dimension: gmail__message_info__spam_info__disposition {
    hidden: no
    view_label: "Gmail"
    group_label: "Spam Info"
    label: "Spam Disposition"
    description: "The outcome of the Gmail spam classification"
  }

  # measures

  measure: count_of_spam {
    hidden: no
    view_label: "Gmail"
    group_label: "Received"
    type: count_distinct
    allow_approximate_optimization: yes
    sql: ${gmail__message_info__rfc2822_message_id} ;;
    filters: [
      record_type: "gmail",
      gmail__message_info__is_spam: "yes"
    ]
    drill_fields: [activity_gmail*]
  }

  measure: count_of_all_emails_received {
    hidden: no
    view_label: "Gmail"
    group_label: "Received"
    group_item_label: "Count of All Emails"
    type: count_distinct
    allow_approximate_optimization: yes
    sql: ${gmail__message_info__rfc2822_message_id} ;;
    filters: [
      record_type: "gmail",
      gmail__message_info__action_type: "3", # message was handled by Gmail
      activity__gmail__message_info__message_set.type: "9", # message being received (incoming message)
      activity__gmail__message_info__destination.service: "gmail-ui"
    ]
    drill_fields: [activity_gmail*,activity__gmail__message_info__message_set.type]
  }

  measure: count_of_authenticated_emails_received {
    hidden: no
    view_label: "Gmail"
    group_label: "Received"
    group_item_label: "Count of Authenticated Emails"
    type: count_distinct
    allow_approximate_optimization: yes
    sql: ${gmail__message_info__rfc2822_message_id} ;;
    filters: [
      record_type: "gmail",
      gmail__message_info__action_type: "3",
      activity__gmail__message_info__message_set.type: "27", # sender successfully passed SPF/DKIM/DMARC authentication
      activity__gmail__message_info__destination.service: "gmail-ui"
    ]
    drill_fields: [activity_gmail*,activity__gmail__message_info__message_set.type]
  }

  measure: count_of_unauthenticated_emails_received {
    hidden: no
    view_label: "Gmail"
    group_label: "Received"
    group_item_label: "Count of Unauthenticated Emails"
    type: count_distinct
    allow_approximate_optimization: yes
    sql: ${gmail__message_info__rfc2822_message_id} ;;
    filters: [
      record_type: "gmail",
      gmail__message_info__action_type: "3",
      activity__gmail__message_info__message_set.type: "42", # message was sent from an address that isn’t authenticated
      activity__gmail__message_info__destination.service: "gmail-ui"
    ]
    drill_fields: [activity_gmail*]
  }

  measure: count_of_all_emails_sent {
    hidden: no
    view_label: "Gmail"
    group_label: "Sent"
    group_item_label: "Count of All Emails"
    type: count_distinct
    allow_approximate_optimization: yes
    sql: ${gmail__message_info__rfc2822_message_id} ;;
    filters: [
      record_type: "gmail",
      gmail__message_info__action_type: "3",
      activity__gmail__message_info__message_set.type: "8", # message being sent (outgoing message)
      activity__gmail__message_info__destination.is_destination_service_outbound: "yes"
    ]
    drill_fields: [activity_gmail*]
  }

  measure: count_of_internal_emails_sent {
    hidden: no
    view_label: "Gmail"
    group_label: "Sent"
    group_item_label: "Count of Internal Emails"
    type: count_distinct
    allow_approximate_optimization: yes
    sql: ${gmail__message_info__rfc2822_message_id} ;;
    filters: [
      record_type: "gmail",
      gmail__message_info__action_type: "3",
      activity__gmail__message_info__message_set.type: "8",
      activity__gmail__message_info__destination.is_destination_service_outbound: "yes",
      gmail__message_info__connection_info__is_internal: "yes"
    ]
    drill_fields: [activity_gmail*]
  }

  measure: count_of_external_emails_sent {
    hidden: no
    view_label: "Gmail"
    group_label: "Sent"
    group_item_label: "Count of External Emails"
    type: count_distinct
    allow_approximate_optimization: yes
    sql: ${gmail__message_info__rfc2822_message_id} ;;
    filters: [
      record_type: "gmail",
      gmail__message_info__action_type: "3",
      activity__gmail__message_info__message_set.type: "8",
      activity__gmail__message_info__destination.is_destination_service_outbound: "yes",
      gmail__message_info__connection_info__is_internal: "no"
    ]
    drill_fields: [activity_gmail*]
  }

  measure: list_of_action_types {
    hidden: no
    view_label: "Gmail"
    group_label: "Lists"
    description: "List of all message action types that the message belongs to"
    type: list
    list_field: gmail__message_info__action_type
  }

  # overwrite default drill for all measures
  drill_fields: [activity_gmail*]
}

view: +activity__gmail__message_info__link_domain {
  dimension: activity__gmail__message_info__link_domain {
    hidden: no
    view_label: "Gmail"
    group_label: "Message Info"
    label: "Link Domain"
    description: "Domains extracted from link URLs in the message body"
  }

  measure: activity__gmail__message_info__flattened_link_domain {
    hidden: no
    view_label: "Gmail"
    group_label: "Lists"
    label: "Flattened Link Domains"
    description: "Flattened domains extracted from link URLs in the message body"
    type: list
    list_field: activity__gmail__message_info__link_domain
  }
}

view: +activity__gmail__message_info__message_set {
  dimension: type {
    hidden: no
    view_label: "Gmail"
    group_label: "Message Info"
    label: "Message Set Type"
    description: "Message set type that the message belongs to:
      https://support.google.com/a/answer/7230050#message_info.message_set.type"
  }

  measure: list_of_set_types {
    hidden: no
    view_label: "Gmail"
    group_label: "Lists"
    description: "List of all message set types that the message belongs to"
    type: list
    list_field: type
  }
}

view: +activity__gmail__message_info__attachment {
  dimension: file_extension_type {
    hidden: no
    view_label: "Gmail"
    group_label: "Attachment"
    group_item_label: "File Extension Type"
    label: "Attachment File Extension Type"
    description: "File extension (not mime part type), not including the period"
  }

  dimension: malware_family {
    hidden: no
    view_label: "Gmail"
    group_label: "Attachment"
    group_item_label: "Maleware Family"
    label: "Attachment Maleware Family"
    description: "Malware category, if detected when the message is handled.
      This field is unset if no malware is detected"
  }
}

view: +activity__gmail__message_info__destination {
  dimension: address {
    hidden: no
    view_label: "Gmail"
    group_label: "Message Info"
    group_item_label: "Destination Address Email"
    label: "Destination Address Email"
    description: "Email address of the recipient"
  }

  dimension: address_domain {
    hidden: no
    view_label: "Gmail"
    group_label: "Message Info"
    group_item_label: "Destination Address Domain"
    label: "Destination Address Domain"
    description: "Email domain of the recipient"
    sql: REGEXP_EXTRACT(${address}, r'@(.+)') ;;
  }

  dimension: is_destination_primary {
    hidden: no
    view_label: "Gmail"
    group_label: "Message Info"
    description: "Yes if the destination address domain is: '@{WORKSPACE_ANALYTICS_PRIMARY_DOMAIN}'"
    type: yesno
    sql: ${address_domain} = '@{WORKSPACE_ANALYTICS_PRIMARY_DOMAIN}' ;;
  }

  dimension: is_destination_secondary {
    hidden: no
    view_label: "Gmail"
    group_label: "Message Info"
    description: "Yes if the destination address domain is in: '@{WORKSPACE_ANALYTICS_SECONDARY_DOMAINS}'"
    type: yesno
    sql: ${address_domain} IN UNNEST(SPLIT('@{WORKSPACE_ANALYTICS_SECONDARY_DOMAINS}',',')) ;;
  }

  dimension: is_destination_internal {
    hidden: no
    view_label: "Gmail"
    group_label: "Message Info"
    description: "Yes if the destination address domain is: '@{WORKSPACE_ANALYTICS_PRIMARY_DOMAIN}' or in '@{WORKSPACE_ANALYTICS_SECONDARY_DOMAINS}'"
    type: yesno
    sql: ${is_destination_primary} OR ${is_destination_secondary} ;;
  }

  dimension: selector {
    hidden: no
    view_label: "Gmail"
    group_label: "Message Info"
    group_item_label: "Destination Selector"
    label: "Destination Selector"
    description: "Subcategory for each service"
  }

  dimension: service {
    hidden: no
    view_label: "Gmail"
    group_label: "Message Info"
    group_item_label: "Destination Service"
    label: "Destination Service"
    description: "The service at the message destination. There are many service and selector pairs for destinations.
      You can use these two fields to determine which service the message was sent to"
  }

  dimension: is_destination_service_outbound {
    hidden: no
    view_label: "Gmail"
    group_label: "Message Info"
    description: "A email that is sent.
      The Destination Service is equal to either 'smtp-outbound' or 'smtp-outbound-to-gmail'"
    type: yesno
    sql: ${service} = 'smtp-outbound' OR  ${service} = 'smtp-outbound-to-gmail' ;;
  }
}


view: +activity__gmail__message_info__triggered_rule_info {}
view: +activity__gmail__message_info__triggered_rule_info__string_match {}
view: +activity__gmail__message_info__triggered_rule_info__consequence {}
view: +activity__gmail__message_info__connection_info__authenticated_domain {}
view: +activity__gmail__message_info__connection_info__failed_smtp_out_connect_ip {}
view: +activity__gmail__message_info__triggered_rule_info__consequence__subconsequence {}
view: +activity__gmail__message_info__structured_policy_log_info__detected_file_types {}
view: +activity__gmail__message_info__structured_policy_log_info__exchange_journal_info__recipients {}
view: +activity__gmail__message_info__structured_policy_log_info__exchange_journal_info__unknown_recipients {}