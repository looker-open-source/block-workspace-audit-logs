include: "activity_base.explore"
include: "/views/refined/activity_login.view"

explore: login {
  extends: [activity_base]
  from: login
  always_filter: { filters: [activity.record_type: "login"] }

  join: activity__login__login_challenge_method {
    sql: LEFT JOIN UNNEST(${activity.login__login_challenge_method}) as activity__login__login_challenge_method ;;
    relationship: one_to_many
  }
}
