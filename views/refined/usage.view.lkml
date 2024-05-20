include: "../raw/usage.view"

view: +usage {
  derived_table: {
    sql:
        SELECT *, _PARTITIONTIME, GENERATE_UUID() AS pk FROM `@{WORKSPACE_ANALYTICS_PROJECT_ID}.@{WORKSPACE_ANALYTICS_DATASET_NAME}.usage` ;;
  }

  dimension: pk {
    primary_key: yes
  }

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
    datatype: timestamp
    sql: ${TABLE}._PARTITIONTIME ;;
  }

  dimension: date {
    hidden: no
    sql: TIMESTAMP(${EXTENDED}) ;;
    type: date
  }

  # drive

  parameter: visibility {
    hidden: no
    view_label: " Filters"
    type: unquoted
    default_value: "private"
    allowed_value: {
      label: "Private"
      value: "private"
    }
    allowed_value: {
      label: "Shared Internally"
      value: "shared_internally"
    }
    allowed_value: {
      label: "Anyone in Domain with Link"
      value: "anyone_in_domain_with_link"
    }
    allowed_value: {
      label: "Anyone in Domain"
      value: "anyone_in_domain"
    }
    allowed_value: {
      label: "Shared Externally"
      value: "shared_externally"
    }
    allowed_value: {
      label: "Anyone with link"
      value: "anyone_with_link"
    }
    allowed_value: {
      label: "Public"
      value: "public"
    }
    description: "Use with num_owned_items_with_visibility_* (Visibility) measures"
  }

  measure: drive_sum_num_items_visibility_added {
    hidden: no
    view_label: "Drive"
    group_label: "Visibility"
    label: "Num Items Visibility Added"
    type: sum
    sql: usage.drive.num_owned_items_with_visibility_{% parameter visibility %}_added ;;
    description: "Use with parameter 'Visibility'. The number of owned items with visibility added"
  }

  measure: drive_sum_num_items_visibility_delta {
    hidden: no
    view_label: "Drive"
    group_label: "Visibility"
    label: "Num Items Visibility Delta"
    type: sum
    sql: usage.drive.num_owned_items_with_visibility_{% parameter visibility %}_delta ;;
    description: "Use with parameter 'Visibility'. The number of owned items with visibility delta"
  }

  measure: drive_sum_num_items_visibility_removed {
    hidden: no
    view_label: "Drive"
    group_label: "Visibility"
    label: "Num Items Visibility Removed"
    type: sum
    sql: usage.drive.num_owned_items_with_visibility_{% parameter visibility %}_removed ;;
    description: "Use with parameter 'Visibility'. The number of owned items with visibility removed"
  }

  parameter: action {
    hidden: no
    view_label: " Filters"
    type: unquoted
    default_value: "created"
    allowed_value: {
      label: "Added"
      value: "added"
    }
    allowed_value: {
      label: "Created"
      value: "created"
    }
    allowed_value: {
      label: "Delta"
      value: "delta"
    }
    allowed_value: {
      label: "Edited"
      value: "edited"
    }
    allowed_value: {
      label: "Removed"
      value: "removed"
    }
    allowed_value: {
      label: "Trashed"
      value: "trashed"
    }
    allowed_value: {
      label: "Viewed"
      value: "viewed"
    }
    description: "Use with num_items, num_google_*, and num_owned_* (Active) measures"
  }

  measure: drive_sum_num_google_documents {
    hidden: no
    view_label: "Drive"
    group_label: "Action"
    label: "Num Docs [Action]"
    type: sum
    sql: usage.drive.num_google_documents_{% parameter action %} ;;
    description: "Use with parameter 'action'."
  }

  measure: drive_sum_num_google_drawings {
    hidden: no
    view_label: "Drive"
    group_label: "Action"
    label: "Num Drawings [Action]"
    type: sum
    sql: usage.drive.num_google_drawings_{% parameter action %} ;;
    description: "Use with parameter 'action'."
  }

  measure: drive_sum_num_google_forms {
    hidden: no
    view_label: "Drive"
    group_label: "Action"
    label: "Num Forms [Action]"
    type: sum
    sql: usage.drive.num_google_forms_{% parameter action %} ;;
    description: "Use with parameter 'action'."
  }

  measure: drive_sum_num_google_presentations {
    hidden: no
    view_label: "Drive"
    group_label: "Action"
    label: "Num Slides [Action]"
    type: sum
    sql: usage.drive.num_google_presentations_{% parameter action %} ;;
    description: "Use with parameter 'action'."
  }

  measure: drive_sum_num_google_sites {
    hidden: no
    view_label: "Drive"
    group_label: "Action"
    label: "Num Sites [Action]"
    type: sum
    sql: usage.drive.num_google_sites_{% parameter action %} ;;
    description: "Use with parameter 'action'."
  }

  measure: drive_sum_num_google_spreadsheets {
    hidden: no
    view_label: "Drive"
    group_label: "Action"
    label: "Num Sheets [Action]"
    type: sum
    sql: usage.drive.num_google_spreadsheets_{% parameter action %} ;;
    description: "Use with parameter 'action'."
  }

  measure: drive_sum_num_items {
    hidden: no
    view_label: "Drive"
    group_label: "Action"
    label: "Num All Items [Action]"
    type: sum
    sql: usage.drive.num_items_{% parameter action %} ;;
    description: "Use with parameter 'action'."
  }

  measure: drive_sum_num_other_types {
    hidden: no
    view_label: "Drive"
    group_label: "Action"
    label: "Num Other [Action]"
    type: sum
    sql: usage.drive.num_other_types_{% parameter action %} ;;
    description: "Use with parameter 'action'."
  }

  measure: drive_sum_num_owned_external_items {
    hidden: no
    view_label: "Drive"
    group_label: "Action"
    label: "Num Owned External [Action]"
    type: sum
    sql: usage.drive.num_owned_external_items_{% parameter action %} ;;
    description: "Use with parameter 'action'."
  }

  measure: drive_sum_num_owned_google_documents {
    hidden: no
    view_label: "Drive"
    group_label: "Action"
    label: "Num Owned Docs [Action]"
    type: sum
    sql: usage.drive.num_owned_google_documents_{% parameter action %} ;;
    description: "Use with parameter 'action'."
  }

  measure: drive_sum_num_owned_google_drawings {
    hidden: no
    view_label: "Drive"
    group_label: "Action"
    label: "Num Owned Drawings [Action]"
    type: sum
    sql: usage.drive.num_owned_google_drawings_{% parameter action %} ;;
    description: "Use with parameter 'action'."
  }

  measure: drive_sum_num_owned_google_forms {
    hidden: no
    view_label: "Drive"
    group_label: "Action"
    label: "Num Owned Forms [Action]"
    type: sum
    sql: usage.drive.num_owned_google_forms_{% parameter action %} ;;
    description: "Use with parameter 'action'."
  }

  measure: drive_sum_num_owned_google_presentations {
    hidden: no
    view_label: "Drive"
    group_label: "Action"
    label: "Num Owned Slides [Action]"
    type: sum
    sql: usage.drive.num_owned_google_presentations_{% parameter action %} ;;
    description: "Use with parameter 'action'."
  }

  measure: drive_sum_num_owned_google_sites {
    hidden: no
    view_label: "Drive"
    group_label: "Action"
    label: "Num Owned Sites [Action]"
    type: sum
    sql: usage.drive.num_owned_google_sites_{% parameter action %} ;;
    description: "Use with parameter 'action'."
  }

  measure: drive_sum_num_owned_google_spreadsheets {
    hidden: no
    view_label: "Drive"
    group_label: "Action"
    label: "Num Owned Sheets [Action]"
    type: sum
    sql: usage.drive.num_owned_google_spreadsheets_{% parameter action %} ;;
    description: "Use with parameter 'action'."
  }

  measure: drive_sum_num_owned_internal_items {
    hidden: no
    view_label: "Drive"
    group_label: "Action"
    label: "Num Owned Internal [Action]"
    type: sum
    sql: usage.drive.num_owned_internal_items_{% parameter action %} ;;
    description: "Use with parameter 'action'."
  }

  measure: drive_sum_num_owned_items {
    hidden: no
    view_label: "Drive"
    group_label: "Action"
    label: "Num Owned Items [Action]"
    type: sum
    sql: usage.drive.num_owned_items_{% parameter action %} ;;
    description: "Use with parameter 'action'."
  }

  measure: drive_sum_num_owned_other_types {
    hidden: no
    view_label: "Drive"
    group_label: "Action"
    label: "Num Owned Other [Action]"
    type: sum
    sql: usage.drive.num_owned_other_types{% parameter action %} ;;
    description: "Use with parameter 'action'."
  }


}

view: +usage__group_id {
  dimension: pk {
    primary_key: yes
    sql: CONCAT(${usage.pk},'|', CAST(${offset} AS STRING)) ;;
  }

  dimension: offset {
    type: number
    sql: usage__group_id_offset;;
  }

  dimension: usage__group_id {
    hidden: no
  }
}

view: +usage__accounts__authorized_apps {
  dimension: pk {
    primary_key: yes
    sql: CONCAT(${usage.pk},'|', CAST(${offset} AS STRING)) ;;
  }

  dimension: offset {
    type: number
    sql: usage__accounts__authorized_apps_offset;;
  }
}

view: +usage__cros__device_version_distribution {
  dimension: pk {
    primary_key: yes
    sql: CONCAT(${usage.pk},'|', CAST(${offset} AS STRING)) ;;
  }

  dimension: offset {
    type: number
    sql: usage__cros__device_version_distribution_offset;;
  }
}