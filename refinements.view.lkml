include: "explores/**/*.explore.lkml"
include: "/views/**/*.view.lkml"


view: user_teams_mapping {

  # UPDATE THIS LINE with your actual table location
  sql_table_name: `project-id.database.user_teams_mapping` ;;
  dimension: email {
    primary_key: yes
    hidden: yes
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: team {
    view_label: "Organization"
    label: "Team"
    hidden: no
    type: string
    sql: ${TABLE}.department ;;
    drill_fields: [activity.app_name, activity.action]
  }
}

# 3. Refine the existing Explore to join your new view

explore: +activity_base {
  join: user_teams_mapping {
    sql_on: ${activity.email} = ${user_teams_mapping.email} ;;
    type: left_outer
    relationship: many_to_one
  }
}
