include: "activity_base.explore"

include: "/views/pdt/activity_active_user_facts.view"
include: "/views/refined/activity_gemini.view"

# App penetration
include: "/views/refined/gemini_app_penetration.view"

# Workspace Penetration
include: "/views/pdt/workspace_benchmark_sidecar.view"
include: "/views/pdt/ou_user_lookup.view"

explore: gemini {
  extends: [activity_base]
  from: gemini
  description: "Analyze Gemini adoption, usage trends, across your organization. Includes metrics for Active Users, Action Categories, and Opportunity Gaps."
  always_filter: { filters: [activity.record_type: "gemini_for_workspace"] }

  # Benchmark Join
  # Joins the total workspace population for the "Real Penetration Rate"
  join: workspace_benchmark_sidecar {
    sql_on: ${ou_user_lookup_for_active_user.ou_name} = ${workspace_benchmark_sidecar.ou_name} ;;
    relationship: many_to_one
    type: left_outer
  }
}

explore: gemini_app_penetration {
  label: "Gemini Adoption by App (Standalone)"
  description: "Granular analysis of Gemini penetration rates per application (Docs, Sheets, Slides, etc.). Uses a pre-aggregated PDT for high-performance trend reporting."
}
