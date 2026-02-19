constant: WORKSPACE_ANALYTICS_CONNECTION_NAME {
  value: "bigquery"
  export: override_required
}

constant: WORKSPACE_ANALYTICS_PROJECT_ID {
  value: "GCP Project ID"
  export: override_required
}

constant: WORKSPACE_ANALYTICS_DATASET_NAME {
  value: "GCP BigQuery Dataset Name"
  export: override_required
}

constant: WORKSPACE_ANALYTICS_PRIMARY_DOMAIN {
  value: "MY_PRIMARY_DOMAIN.COM"
  export: override_required
}

constant: WORKSPACE_ANALYTICS_SECONDARY_DOMAINS {
  value: "MY_SECONDARY_DOMAIN_1.COM,MY_SECONDARY_DOMAIN_2.COM,..."
  export: override_required
}
