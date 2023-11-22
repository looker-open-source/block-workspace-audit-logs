include: "activity_base.explore"
include: "/views/refined/activity_meet.view"
include: "/views/pdt/activity_meet_facts.view"

explore: meet {
  extends: [activity_base]
  from: meet
  always_filter: { filters: [activity.record_type: "meet"] }

  join: activity_meet_facts {
    sql_on: ${activity.meet__conference_id} = ${activity_meet_facts.conference_id} ;;
    relationship: many_to_one
  }

  join: activity_meet_facts__participant_details {
    sql: LEFT JOIN UNNEST(${activity_meet_facts.participant_details}) as activity_meet_facts__participant_details ;;
    relationship: one_to_many
  }
}
