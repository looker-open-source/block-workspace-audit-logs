include: "activity_base.explore"
include: "/views/refined/activity_drive.view"
include: "/views/pdt/activity_drive_facts.view"
include: "/views/pdt/ou_user_lookup.view"

explore: drive {
  extends: [activity_base]
  from: drive
  always_filter: { filters: [activity.record_type: "drive"] }

  join: activity_drive_facts {
    sql_on: ${activity.drive__doc_id} = ${activity_drive_facts.doc_id} ;;
    relationship: many_to_one
  }

  join: ou_user_lookup_for_target_user {
    from: ou_user_lookup
    sql_on: ${activity.drive__target_user} = ${ou_user_lookup_for_target_user.email};;
    relationship: many_to_one
  }

  join: activity__drive__old_value {
    view_label: "Activity: Drive Old Value"
    sql: LEFT JOIN UNNEST(${activity.drive__old_value}) as activity__drive__old_value ;;
    relationship: one_to_many
  }

  join: activity__drive__new_value {
    view_label: "Activity: Drive New Value"
    sql: LEFT JOIN UNNEST(${activity.drive__new_value}) as activity__drive__new_value ;;
    relationship: one_to_many
  }

  join: activity__drive__added_role {
    view_label: "Activity: Drive Added Role"
    sql: LEFT JOIN UNNEST(${activity.drive__added_role}) as activity__drive__added_role ;;
    relationship: one_to_many
  }

  join: activity__drive__removed_role {
    view_label: "Activity: Drive Removed Role"
    sql: LEFT JOIN UNNEST(${activity.drive__removed_role}) as activity__drive__removed_role ;;
    relationship: one_to_many
  }

  join: activity__drive__execution_id {
    view_label: "Activity: Drive Execution Id"
    sql: LEFT JOIN UNNEST(${activity.drive__execution_id}) as activity__drive__execution_id ;;
    relationship: one_to_many
  }

  join: activity__drive__old_value_id {
    view_label: "Activity: Drive Old Value Id"
    sql: LEFT JOIN UNNEST(${activity.drive__old_value_id}) as activity__drive__old_value_id ;;
    relationship: one_to_many
  }

  join: activity__drive__new_value_id {
    view_label: "Activity: Drive New Value Id"
    sql: LEFT JOIN UNNEST(${activity.drive__new_value_id}) as activity__drive__new_value_id ;;
    relationship: one_to_many
  }

  join: activity__drive__old_field_value {
    view_label: "Activity: Drive Old Field Value"
    sql: LEFT JOIN UNNEST(${activity.drive__old_field_value}) as activity__drive__old_field_value ;;
    relationship: one_to_many
  }

  join: activity__drive__new_field_value {
    view_label: "Activity: Drive New Field Value"
    sql: LEFT JOIN UNNEST(${activity.drive__new_field_value}) as activity__drive__new_field_value ;;
    relationship: one_to_many
  }

  join: activity__drive__source_folder_id {
    view_label: "Activity: Drive Source Folder Id"
    sql: LEFT JOIN UNNEST(${activity.drive__source_folder_id}) as activity__drive__source_folder_id ;;
    relationship: one_to_many
  }

  join: activity__drive__old_attribute_value {
    view_label: "Activity: Drive Old Attribute Value"
    sql: LEFT JOIN UNNEST(${activity.drive__old_attribute_value}) as activity__drive__old_attribute_value ;;
    relationship: one_to_many
  }

  join: activity__drive__new_attribute_value {
    view_label: "Activity: Drive New Attribute Value"
    sql: LEFT JOIN UNNEST(${activity.drive__new_attribute_value}) as activity__drive__new_attribute_value ;;
    relationship: one_to_many
  }

  join: activity__drive__source_folder_title {
    view_label: "Activity: Drive Source Folder Title"
    sql: LEFT JOIN UNNEST(${activity.drive__source_folder_title}) as activity__drive__source_folder_title ;;
    relationship: one_to_many
  }

  join: activity__drive__destination_folder_id {
    view_label: "Activity: Drive Destination Folder Id"
    sql: LEFT JOIN UNNEST(${activity.drive__destination_folder_id}) as activity__drive__destination_folder_id ;;
    relationship: one_to_many
  }

  join: activity__drive__destination_folder_title {
    view_label: "Activity: Drive Destination Folder Title"
    sql: LEFT JOIN UNNEST(${activity.drive__destination_folder_title}) as activity__drive__destination_folder_title ;;
    relationship: one_to_many
  }
}
