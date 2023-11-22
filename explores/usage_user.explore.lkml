include: "usage_base.explore"
include: "/views/refined/usage.view"
include: "/views/refined/usage_user.view"

explore: usage_user {
  extends: [usage_base]
  from: usage_user
  sql_always_where: ${usage.record_type} = 'user'
    ${EXTENDED} ;;
  always_filter: {
    filters: [usage.user_email: ""]
  }
}
