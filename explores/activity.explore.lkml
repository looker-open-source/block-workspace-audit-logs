include: "activity_base.explore"
include: "/views/refined/activity.view"

# this is used for dashboard OU filters
explore: activity {
  extends: [activity_base]
  hidden: yes
}
