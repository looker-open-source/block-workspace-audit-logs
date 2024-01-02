include: "activity.view"

# API reference for drive logs in BigQuery:
# https://developers.google.com/admin-sdk/reports/v1/appendix/activity/rules
view: rules {
  extends: [activity]

  dimension: rules__actor_ip_address {
    hidden: no
    view_label: "Rules"
    group_label: ""
    label: "Actor IP Address"
    description: "IP of the entity who was responsible for the original event which triggered the rule"
  }

  dimension: rules__application {
    hidden: no
    view_label: "Rules"
    group_label: ""
    label: "Application"
    description: "Name of the application to which the flagged item belongs"
  }

  dimension: rules__conference_id {
    hidden: no
    view_label: "Rules"
    group_label: ""
    label: "Conference ID"
    description: "The unique identifier of a Google Meet conference"
  }

  dimension: rules__content_hash {
    hidden: no
    view_label: "Rules"
    group_label: ""
    label: "Content Hash"
  }

  dimension: rules__data_source {
    hidden: no
    view_label: "Rules"
    group_label: ""
    label: "Data Source"
    description: "Source of the data. Possible values:
      ADMIN, CALENDAR, CHAT, CHROME, DEVICE, DRIVE, GMAIL, GROUPS, MEET, RULE, USER, VOICE"
  }

  dimension: rules__device_id {
    hidden: no
    view_label: "Rules"
    group_label: ""
    label: "Device ID"
    description: "ID of the device on which the action was triggered"
  }

  dimension: rules__device_type {
    hidden: no
    view_label: "Rules"
    group_label: ""
    label: "Device Type"
    description: "Type of device referred to by device ID. Possible values:
      CHROME_BROWSER, CHROME_OS, CHROME_PROFILE"
  }

  dimension: rules__drive_shared_drive_id {
    hidden: no
    view_label: "Rules"
    group_label: ""
    label: "Drive Shared Drive ID"
    description: "Shared drive ID to which the drive item belongs, if applicable."
  }

  dimension: rules__drive_team_drive_id {
    hidden: no
    view_label: "Rules"
    group_label: ""
    label: "Drive Team Drive ID"
  }

  dimension: rules__has_alert {
    hidden: no
    view_label: "Rules"
    group_label: ""
    label: "Has Alert"
    description: "Whether or not the triggered rule has alert enabled"
  }

  dimension: rules__has_content_match {
    hidden: no
    view_label: "Rules"
    group_label: ""
    label: "Has Content Match"
    description: "Whether the resource has content which matches the criteria in the rule"
  }

  dimension: rules__label_field {
    hidden: no
    view_label: "Rules"
    group_label: ""
    label: "Label Field"
    description: "Field of the label to which the item belongs"
  }

  dimension: rules__label_title {
    hidden: no
    view_label: "Rules"
    group_label: ""
    label: "Label Title"
    description: "Title of the label to which the item belongs"
  }

  dimension: rules__matched_templates {
    hidden: no
    view_label: "Rules"
    group_label: ""
    label: "Matched Templates"
    description: "List of content detector templates that matched"
  }

  dimension: rules__matched_threshold {
    hidden: no
    view_label: "Rules"
    group_label: ""
    label: "Matched Threshold"
    description: "Threshold that matched in the rule"
  }

  dimension: rules__matched_trigger {
    hidden: no
    view_label: "Rules"
    group_label: ""
    label: "Matched Trigger"
    description: "Trigger of the rule evaluation: email sent or received, document shared. Possible values:
      CALENDAR_EVENTS, CHAT_ATTACHMENT_UPLOADED, CHAT_MESSAGE_SENT, CHROME_EVENTS, CHROME_FILE_DOWNLOAD,
      CHROME_FILE_UPLOAD, CHROME_WEB_CONTENT_UPLOAD, DEVICE_EVENTS, DRIVE_EVENTS, DRIVE_SHARE, GMAIL_EVENTS,
      GROUPS_EVENTS, MAIL_BEING_RECEIVED, MAIL_BEING_SENT, MEET_EVENTS, OAUTH_EVENTS, USER_EVENTS, VOICE_EVENTS"
  }

  dimension: rules__mobile_device_type {
    hidden: no
    view_label: "Rules"
    group_label: ""
    label: "Mobile Device Type"
    description: "Type of device on which rule was applied"
  }

  dimension: rules__mobile_ios_vendor_id {
    hidden: no
    view_label: "Rules"
    group_label: ""
    label: "Mobile iOS Vendor ID"
    description: "iOS Vendor Id of device on which rule was applied, if applicable"
  }

  dimension: rules__new_value {
    hidden: no
    view_label: "Rules"
    group_label: ""
    label: "New Value"
  }

  dimension: rules__old_value {
    hidden: no
    view_label: "Rules"
    group_label: ""
    label: "Old Value"
  }

  dimension: rules__resource_id {
    hidden: no
    view_label: "Rules"
    group_label: "Resource"
    label: "Resource ID"
    description: "Identifier of the resource which matched the rule"
  }

  dimension: rules__resource_name {
    hidden: no
    view_label: "Rules"
    group_label: "Resource"
    label: "Resource Name"
    description: "Resource name that uniquely identifies a rule"
  }

  dimension: rules__resource_owner_email {
    hidden: no
    view_label: "Rules"
    group_label: "Resource"
    label: "Resource Owner Email"
    description: "Email address of the owner of the resource"
  }

  dimension: rules__resource_recipients_omitted_count {
    hidden: no
    view_label: "Rules"
    group_label: "Resource"
    label: "Resource Recipients Omitted Count"
    description: "The number of resource recipients omitted due to exceeding the size limit"
  }

  dimension: rules__resource_title {
    hidden: no
    view_label: "Rules"
    group_label: "Resource"
    label: "Resource Title"
    description: "Title of the resource which matched the rule: email subject, or document title"
  }

  dimension: rules__resource_type {
    hidden: no
    view_label: "Rules"
    group_label: "Resource"
    label: "Resource Type"
    description: "Type of the resource which matched the rule. Possible values:
      CHAT_ATTACHMENT ,CHAT_MESSAGE ,DEVICE ,DOCUMENT ,EMAIL ,USER"
  }

  dimension: rules__rule_id {
    hidden: no
    view_label: "Rules"
    group_label: ""
    label: "Rule ID"
    description: "Unique identifier for a rule. Rules are created by admins in Google Workspace"
  }

  dimension: rules__rule_name {
    hidden: no
    view_label: "Rules"
    group_label: ""
    label: "Rule Name"
    description: "Name of the rule"
  }

  dimension: rules__rule_resource_name {
    hidden: no
    view_label: "Rules"
    group_label: ""
    label: "Rule Resource Name"
    description: "Name of the resource which matched the rule"
  }

  dimension: rules__rule_type {
    hidden: no
    view_label: "Rules"
    group_label: ""
    label: "Rule Type"
    description: "Type of the rule. Possible values: ACTIVITY_RULE, DLP"
  }

  dimension: rules__rule_update_time_usec {}

  dimension_group: rule_updated {
    hidden: no
    view_label: "Rules"
    description: "Update time indicating the version of rule which is used"
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
    sql: TIMESTAMP_MICROS(${rules__rule_update_time_usec}) ;;
  }

  dimension: rules__scan_type {
    hidden: no
    view_label: "Rules"
    group_label: ""
    label: "Scan Type"
    description: "Scan mode for the rule evaluation. Possible values:
      CHAT_SCAN_CONTENT_BEFORE_SEND, DRIVE_OFFLINE_SCAN, DRIVE_ONLINE_SCAN"
  }

  dimension: rules__severity {
    hidden: no
    view_label: "Rules"
    group_label: ""
    label: "Severity"
    description: "Severity of violating a rule. Possible values: LOW, MEDIUM, HIGH"
  }

  dimension: rules__space_id {
    hidden: no
    view_label: "Rules"
    group_label: ""
    label: "Space ID"
    description: "ID of the space where the rule was triggered"
  }

  dimension: rules__space_type {
    hidden: no
    view_label: "Rules"
    group_label: ""
    label: "Space Type"
    description: "Type of space referred to by the space ID. Possible values:
      CHAT_DIRECT_MESSAGE, CHAT_EXTERNALLY_OWNED, CHAT_GROUP, CHAT_ROOM"
  }
}

view: +activity__rules__actions {
  fields_hidden_by_default: no

  dimension: activity__rules__actions {
    view_label: "Rules"
    group_label: "Actions"
    label: "Match Type Actions"
    description: "List of actions taken. Possible values:
      AccountWipeMobileDevice, ApproveMobileDevice, BlockMobileDevice, FlagDocument, SendNotification, UnflagDocument"
  }
}

view: +activity__rules__access_level {
  fields_hidden_by_default: no

  dimension: activity__rules__access_level {
    view_label: "Rules"
    label: "Access Level"
    description: "Label for a list of access levels"
  }
}

view: +activity__rules__resource_recipients {
  fields_hidden_by_default: no

  dimension: activity__rules__resource_recipients {
    view_label: "Rules"
    group_label: "Resource"
    label: "Resource Recipients"
    description: "A list of users that a Drive document or an email message was shared with when the rule was triggered"
  }
}

view: +activity__rules__applied_actions {
  fields_hidden_by_default: no

  dimension: action_type {
    view_label: "Rules"
    group_label: "Actions"
    label: "Applied Type Actions"
  }
}

view: +activity__rules__triggered_actions {
  fields_hidden_by_default: no

  dimension: action_type {
    view_label: "Rules"
    group_label: "Actions"
    label: "Triggered Type Actions"
  }

  dimension: evidence_locker_filepath {
    view_label: "Rules"
  }
}

view: +activity__rules__suppressed_actions {
  fields_hidden_by_default: no

  dimension: action_type {
    view_label: "Rules"
    group_label: "Actions"
    label: "Suppressed Type Actions"
  }
}

view: +activity__rules__matched_detectors {
  fields_hidden_by_default: no

  dimension: detector_id {
    view_label: "Rules"
    group_label: "Matched Detectors"
  }

  dimension: detector_type {
    view_label: "Rules"
    group_label: "Matched Detectors"
  }

  dimension: display_name {
    view_label: "Rules"
    group_label: "Matched Detectors"
  }
}

view: +activity__rules__evaluation_context__evaluation_resource_ids {
  fields_hidden_by_default: no

  dimension: activity__rules__evaluation_context__evaluation_resource_ids {
    view_label: "Rules"
    label: "Evaluation Resource IDs"
  }
}
