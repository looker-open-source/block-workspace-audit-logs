connection: "@{CONNECTION_NAME}"

include: "/explores/*.explore"
include: "/views/pdt/activity_aa.explore"
include: "/views/pdt/ou_lookup.view"
include: "/dashboards/*.dashboard"

datagroup: daily {
  sql_trigger: SELECT CURRENT_DATE() ;;
}

datagroup: weekly {
  sql_trigger: SELECT EXTRACT(WEEK FROM CURRENT_DATE()) ;;
}

datagroup: monthly {
  sql_trigger: SELECT EXTRACT(MONTH FROM CURRENT_DATE()) ;;
}

datagroup: yearly {
  sql_trigger: SELECT EXTRACT(YEAR FROM CURRENT_DATE()) ;;
}
