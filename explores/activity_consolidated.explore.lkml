include: "activity_base.explore"
include: "/views/refined/activity_*.view"
include: "/views/pdt/activity_active_user_facts.view"


explore: activity_consolidated {
  extends: [activity_base]

  join: activity_active_user_facts {
    sql_on: ${activity.activity_date} = ${activity_active_user_facts.calendar_date}
      AND ${activity.json_ou_path} = ${activity_active_user_facts.json_ou_path};;
    relationship: many_to_one
  }
}
