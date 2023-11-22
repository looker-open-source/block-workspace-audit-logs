include: "activity.view"

# API reference for drive logs in BigQuery:
# https://developers.google.com/admin-sdk/reports/v1/appendix/activity/drive
view: drive {
  extends: [activity]

  dimension: drive__doc_id {
    hidden: no
    view_label: "Drive"
    group_label: ""
    description: "Document Id"
    link: {
      label: "View in Google Drive"
      url: "https://drive.google.com/file/d/{{ value }}"
      icon_url: "https://www.google.com/s2/favicons?domain=drive.google.com"
    }
  }

  dimension: drive__doc_title {
    hidden: no
    view_label: "Drive"
    group_label: "Historical"
    label: "Historical Doc Title"
    description: "Document title at time of log entry"
    link: {
      label: "View in Google Drive"
      url: "https://drive.google.com/file/d/{{ drive__doc_id._value }}"
      icon_url: "https://www.google.com/s2/favicons?domain=drive.google.com"
    }
  }

  dimension: drive__doc_type {
    hidden: no
    view_label: "Drive"
    group_label: ""
    description: "Document type. Possible values:
      doc, drawing, folder, form, html, jam, jpeg, mp4, mpeg, msexcel,
      mspowerpoint, msword, pdf, png, quicktime, script, shortcut,
      sites, shared_drive, sheet, slide, txt, unknown"
    sql: CASE
          WHEN ${TABLE}.drive.doc_type = 'document'  THEN 'doc'
          WHEN ${TABLE}.drive.doc_type = 'spreadsheet'  THEN 'sheet'
          WHEN ${TABLE}.drive.doc_type = 'presentation'  THEN 'slide'
        ELSE ${TABLE}.drive.doc_type END ;;
  }

  dimension: drive__is_encrypted {
    hidden: no
    view_label: "Drive"
    group_label: "Historical"
    label: "Is Encrypted"
    description: "Whether the file is client side encrypted"
  }

  dimension: drive__label {
    hidden: no
    view_label: "Drive"
    group_label: "Historical"
    label: "Label ID"
    description: "The unique Identifier of a Label"
  }

  dimension: drive__label_title {
    hidden: no
    view_label: "Drive"
    group_label: "Historical"
    label: "Label Title"
    description: "Title of label"
  }

  dimension: drive__shared_drive_id {
    hidden: no
    view_label: "Drive"
    group_label: "Historical"
    label: "Shared Drive ID"
    description: "The unique identifier of the shared drive.
    Only populated for events or items from a shared drive"
  }

  dimension: drive__owner {
    hidden: no
    view_label: "Drive"
    group_label: "Historical"
    group_item_label: "Owner Email"
    label: "Historical Owner Email"
    description: "Email address of the document's owner at time of log entry.
      For items contained in a shared drive, the owner is the name of the shared drive"
  }

  dimension: drive__target_user {
    hidden: no
    view_label: "Drive"
    group_label: "Target User"
    group_item_label: "Target User Email"
    label: "Target User Email"
    description: "The email address of the user or group whose access permissions were changed,
     or the name of the domain for which access permissions were changed"
  }

  dimension: drive__visibility {
    hidden: no
    view_label: "Drive"
    group_label: "Historical"
    label: "Historical Drive Visibility"
    description: "Visibility of Target File at time of log entry. Possible values:
      people_with_link, people_within_domain_with_link, private, public_in_the_domain,
      public_on_the_web, shared_externally, shared_internally, unknown"
  }

  dimension: drive__visibility_change {
    hidden: no
    view_label: "Drive"
    group_label: "Historical"
    label: "Historical Visibility Change"
    description: "Change in overall visibility of the file at time of log entry.
      Possible values: external, internal, none"
  }

  dimension: target_user_domain {
    hidden: no
    view_label: "Drive"
    group_label: "Target User"
    description: "Extracted domain from targer user's email"
    sql: REGEXP_EXTRACT(${drive__target_user}, r'@(.+)') ;;
  }

  dimension: is_target_user_primary {
    hidden: no
    view_label: "Drive"
    group_label: "Target User"
    description: "Yes if the target user's domain is: '@{PRIMARY_DOMAIN}'"
    type: yesno
    sql: ${target_user_domain} = '@{PRIMARY_DOMAIN}' ;;
  }

  dimension: is_target_user_secondary {
    hidden: no
    view_label: "Drive"
    group_label: "Target User"
    description: "Yes if the target user's domain is in: '@{SECONDARY_DOMAINS}'"
    type: yesno
    sql: ${target_user_domain} IN UNNEST(SPLIT(${secondary_domains},',')) ;;
  }

  dimension: is_target_user_internal {
    hidden: no
    view_label: "Drive"
    group_label: "Target User"
    description: "Yes if the target user's domain is: '@{PRIMARY_DOMAIN}' or in '@{SECONDARY_DOMAINS}'"
    type: yesno
    sql: ${drive__target_user} IS NULL OR ${is_target_user_primary} OR ${is_target_user_secondary} ;;
  }

  dimension: target_user_org_unit_name {
    hidden: no
    view_label: "Drive"
    group_label: "Target User"
    label: "Target User OU Name"
    description: "The Organizational Unit of the internal target user of the action"
    type:  string
    sql: ${ou_user_lookup_for_target_user.ou_name} ;;
  }

  dimension: target_user_json_ou_path {
    hidden: no
    view_label: "Drive"
    group_label: "Target User"
    label: "Target User OU JSON Path"
    description: "The Organizational Unit JSON Path of the internal target user of the action"
    type:  string
    sql: ${ou_user_lookup_for_target_user.json_ou_path} ;;
  }

  # measures

  measure: list_of_target_users {
    hidden: no
    view_label: "Drive"
    group_label: "Lists"
    label: "All Users Shared With"
    description: "List of all users this document has been shared with"
    type: string
    sql: STRING_AGG(DISTINCT ${drive__target_user}) ;;
  }

  measure: list_of_owners {
    hidden: no
    view_label: "Drive"
    group_label: "Lists"
    label: "All Owners"
    description: "List of all owners of this document"
    type: string
    sql: STRING_AGG(DISTINCT ${drive__owner}) ;;
  }

  measure: list_of_docs {
    hidden: no
    view_label: "Drive"
    group_label: "Lists"
    label: "All Docs"
    description: "List of all documents"
    type: string
    sql: STRING_AGG(DISTINCT ${drive__doc_title}) ;;
  }

  measure: list_of_event_visibility {
    hidden: no
    view_label: "Drive"
    group_label: "Lists"
    label: "All Visibility Events"
    description: "List of all visibility event changes on this document"
    type: string
    sql: STRING_AGG(DISTINCT ${drive__visibility}) ;;
  }

  measure: count_distinct_all_files_public {
    hidden: no
    view_label: "Drive"
    group_label: "Shares"
    label: "Count of All Files Made Public"
    description: "Distinct number of documents made public,
      where the drive visibility = 'people_with_link' or 'public_on_the_web'"
    type: count_distinct
    allow_approximate_optimization: yes
    sql: ${drive__doc_id} ;;
    filters: [
      event_type: "acl_change",
      activity__drive__new_value.activity__drive__new_value: "people_with_link, public_on_the_web"
    ]
    drill_fields: [activity_drive_file_shares*, drive__owner, activity__drive__old_value.activity__drive__old_value,
      activity__drive__new_value.activity__drive__new_value]
  }

  measure: count_distinct_all_files_shares {
    hidden: no
    view_label: "Drive"
    group_label: "Shares"
    label: "Count of All Files Shares"
    description: "Distinct number of documents shared"
    type: count_distinct
    allow_approximate_optimization: yes
    sql: ${drive__doc_id} ;;
    filters: [
      event_type: "acl_change",
      activity__drive__new_value.activity__drive__new_value: "-none"
    ]
    drill_fields: [activity_drive_file_shares*]
  }

  measure: count_distinct_external_files_shares {
    hidden: no
    view_label: "Drive"
    group_label: "Shares"
    label: "Count of External Files Shares"
    description: "Distinct number of documents shared with external users"
    type: count_distinct
    allow_approximate_optimization: yes
    sql: ${drive__doc_id} ;;
    filters: [
      event_type: "acl_change",
      activity__drive__new_value.activity__drive__new_value: "-none",
      is_target_user_internal: "no"
    ]
    drill_fields: [activity_drive_file_shares*]
  }

  measure: count_distinct_internal_files_shares {
    hidden: no
    view_label: "Drive"
    group_label: "Shares"
    label: "Count of Internal Files Shares"
    description: "Distinct number of documents shared with internal users"
    type: count_distinct
    allow_approximate_optimization: yes
    sql: ${drive__doc_id} ;;
    filters: [
      event_type: "acl_change",
      activity__drive__new_value.activity__drive__new_value: "-none",
      is_target_user_internal: "yes"
    ]
    drill_fields: [activity_drive_file_shares*]
  }

  measure: count_distinct_all_user_shares {
    hidden: no
    view_label: "Drive"
    group_label: "Shares"
    label: "Count of All User Shares"
    description: "Distinct number of users this document(s) has been shared with"
    type: count_distinct
    allow_approximate_optimization: yes
    sql: ${drive__target_user} ;;
    filters: [
      event_type: "acl_change",
      activity__drive__new_value.activity__drive__new_value: "-none"
    ]
    drill_fields: [activity_drive_user_shares*]
    # link: {
    #   label: "Show Specific Document(s)"
    #   url: "{{ link }}&f[activity.count_distinct_all_user_shares]=%3E0&total=on"
    # }
  }

  measure: count_distinct_external_user_shares {
    hidden: no
    view_label: "Drive"
    group_label: "Shares"
    label: "Count of External User Shares"
    description: "Distinct number of external users this document(s) has been shared with"
    type: count_distinct
    allow_approximate_optimization: yes
    sql: ${drive__target_user} ;;
    filters: [
      event_type: "acl_change",
      activity__drive__new_value.activity__drive__new_value: "-none",
      is_target_user_internal: "no"
    ]
    drill_fields: [activity_drive_user_shares*]
    # link: {
    #   label: "Show Specific Document(s)"
    #   url: "{{ link }}&f[activity.count_distinct_external_user_shares]=%3E0&total=on"
    # }
  }

  measure: count_distinct_internal_user_shares {
    hidden: no
    view_label: "Drive"
    group_label: "Shares"
    label: "Count of Internal User Shares"
    description: "Distinct number of internal users this document(s) has been shared with"
    type: count_distinct
    allow_approximate_optimization: yes
    sql: ${drive__target_user} ;;
    filters: [
      event_type: "acl_change",
      activity__drive__new_value.activity__drive__new_value: "-none",
      is_target_user_internal: "yes"
    ]
    drill_fields: [activity_drive_user_shares*]
    # link: {
    #   label: "Show Specific Document(s)"
    #   url: "{{ link }}&f[activity.count_distinct_internal_user_shares]=%3E0&total=on"
    # }
  }

  measure: count_of_docs {
    hidden: no
    view_label: "Drive"
    label: "Count of Docs"
    description: "Count of all files"
    type: count_distinct
    allow_approximate_optimization: yes
    sql: ${drive__doc_id} ;;
    drill_fields: [activity_drive*]
  }

  measure: count_copy {
    hidden: no
    view_label: "Drive"
    group_label: "Events"
    label: "Count of Copies"
    description: "Count of all documents copied"
    type: count
    allow_approximate_optimization: yes
    filters: [
      record_type: "drive",
      event_name: "copy"
    ]
    drill_fields: [activity_drive*]
  }

  measure: count_create {
    hidden: no
    view_label: "Drive"
    group_label: "Events"
    label: "Count of Creations"
    description: "Count of all documents created"
    type: count
    allow_approximate_optimization: yes
    filters: [
      record_type: "drive",
      event_name: "create"
    ]
    drill_fields: [activity_drive*]
  }

  measure: count_delete {
    hidden: no
    view_label: "Drive"
    group_label: "Events"
    label: "Count of Deletions"
    description: "Count of all documents deleted"
    type: count
    allow_approximate_optimization: yes
    filters: [
      record_type: "drive",
      event_name: "delete"
    ]
    drill_fields: [activity_drive*]
  }

  measure: count_download {
    hidden: no
    view_label: "Drive"
    group_label: "Events"
    label: "Count of Downloads"
    description: "Count of all documents downloaded"
    type: count
    allow_approximate_optimization: yes
    filters: [
      record_type: "drive",
      event_name: "download"
    ]
    drill_fields: [activity_drive*]
  }

  measure: count_edit {
    hidden: no
    view_label: "Drive"
    group_label: "Events"
    label: "Count of Edits"
    description: "Count of all documents edited"
    type: count
    allow_approximate_optimization: yes
    filters: [
      record_type: "drive",
      event_name: "edit"
    ]
    drill_fields: [activity_drive*]
  }

  measure: count_view {
    hidden: no
    view_label: "Drive"
    group_label: "Events"
    label: "Count of Views"
    description: "Count of all documents viewed"
    type: count
    allow_approximate_optimization: yes
    filters: [
      record_type: "drive",
      event_name: "view"
    ]
    drill_fields: [activity_drive*]
  }

  measure: count_primary {
    hidden: no
    view_label: "Drive"
    group_label: "Events"
    group_item_label: "Count from Primary Domain"
    label: "Count of Primary Domain User Events"
    description: "Count of all activity events from the primary domain"
    type: count
    allow_approximate_optimization: yes
    filters: [
      record_type: "drive",
      is_active_user_primary: "yes"
    ]
    drill_fields: [activity_drive*]
  }

  measure: count_secondary {
    hidden: no
    view_label: "Drive"
    group_label: "Events"
    group_item_label: "Count from Secondary Domain"
    label: "Count of Secondary Domain User Events"
    description: "Count of all activity events from a secondary user domain"
    type: count
    allow_approximate_optimization: yes
    filters: [
      record_type: "drive",
      is_active_user_secondary: "yes"
    ]
    drill_fields: [activity_drive*]
  }

  measure: count_internal {
    hidden: no
    view_label: "Drive"
    group_label: "Events"
    group_item_label: "Count from Internal Domain"
    label: "Count of Internal Domain User Events"
    description: "Count of all activity events from the internal user domain"
    type: count
    allow_approximate_optimization: yes
    filters: [
      record_type: "drive",
      is_active_user_internal: "yes"
    ]
    drill_fields: [activity_drive*]
  }

  measure: count_external {
    hidden: no
    view_label: "Drive"
    group_label: "Events"
    group_item_label: "Count from External Domain"
    label: "Count of External Domain User Events"
    description: "Count of all activity events from an external user domain"
    type: count
    allow_approximate_optimization: yes
    filters: [
      record_type: "drive",
      is_active_user_internal: "no"
    ]
    drill_fields: [activity_drive*]
  }

  measure: count_collaboration {
    hidden: no
    view_label: "Drive"
    group_label: "Events"
    label: "Count of Collaboration Events"
    description: "Count of any of the following events: edit, approval_requested, approval_completed,
      approval_canceled, approval_comment_added, approval_reviewer_responded, approval_decisions_reset,
      approval_reviewer_change, approval_due_time_change, create_comment, delete_comment, edit_comment,
      reassign_comment, reopen_comment, resolve_comment, accept_suggestion, create_suggestion,
      delete_suggestion, reject_suggestion"
    type: count
    allow_approximate_optimization: yes
    filters: [
      record_type: "drive",
      event_type: "access",
      event_name: "edit,approval_requested,approval_completed,approval_canceled,approval_comment_added,
        approval_reviewer_responded,approval_decisions_reset,approval_reviewer_change,approval_due_time_change,
        create_comment,delete_comment,edit_comment,reassign_comment,reopen_comment,resolve_comment,
        accept_suggestion,create_suggestion,delete_suggestion,reject_suggestion"
    ]
    drill_fields: [activity_drive*]
  }

  measure: count_all {
    hidden: no
    view_label: "Drive"
    group_label: "Events"
    group_item_label: "Count from Any Domain"
    label: "Count of All User Events"
    description: "Count of all activity events from any domain"
    type: count
    allow_approximate_optimization: yes
    filters: [record_type: "drive"]
    drill_fields: [activity_drive*]
  }

  # overwrite default drill for all measures
  drill_fields: [activity_drive*]
}

view: +activity__drive__source_folder_id {
  dimension: activity__drive__source_folder_id {
    hidden: no
    view_label: "Drive"
    group_label: "Folder"
    group_item_label: "Source Folder ID"
    label: "Source Folder ID"
    description: "ID of the source folder during a document move"
  }
}

view: +activity__drive__source_folder_title {
  dimension: activity__drive__source_folder_title {
    hidden: no
    view_label: "Drive"
    group_label: "Folder"
    group_item_label: "Source Folder Title"
    label: "Source Folder Title"
    description: "Title of the source folder during a document move"
  }
}

view: +activity__drive__destination_folder_id {
  dimension: activity__drive__destination_folder_id {
    hidden: no
    view_label: "Drive"
    group_label: "Folder"
    group_item_label: "Destination Folder ID"
    label: "Destination Folder ID"
    description: "ID of the destination folder during a document move"
  }
}

view: +activity__drive__destination_folder_title {
  dimension: activity__drive__destination_folder_title {
    hidden: no
    view_label: "Drive"
    group_label: "Folder"
    group_item_label: "Destination Folder Title"
    label: "Destination Folder Title"
    description: "Title of the destination folder during a document move"
  }
}

view: +activity__drive__new_value {
  dimension: activity__drive__new_value {
    hidden: no
    view_label: "Drive"
    group_label: "Updated Value"
    group_item_label: "New Value"
    label: "New Value"
    description: "New value when document's access or ACL has been updated"
  }
}

view: +activity__drive__old_value {
  dimension: activity__drive__old_value {
    hidden: no
    view_label: "Drive"
    group_label: "Updated Value"
    group_item_label: "Old Value"
    label: "Old Value"
    description: "Old value when document's access or ACL has been updated"
  }
}

view: +activity__drive__added_role {}
view: +activity__drive__removed_role {}
view: +activity__drive__old_value_id {}
view: +activity__drive__execution_id {}
view: +activity__drive__new_value_id {}
view: +activity__drive__old_field_value {}
view: +activity__drive__new_field_value {}
view: +activity__drive__old_attribute_value {}
view: +activity__drive__new_attribute_value {}
