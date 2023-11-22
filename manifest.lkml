constant: CONNECTION_NAME {
  value: "bigquery"
  export: override_required
}

constant: PROJECT_ID {
  value: "GCP Project ID"
  export: override_required
}

constant: DATASET_NAME {
  value: "GCP BigQuery Dataset Name"
  export: override_required
}

constant: PRIMARY_DOMAIN {
  value: "MY_PRIMARY_DOMAIN.COM"
  export: override_required
}

constant: SECONDARY_DOMAINS {
  value: "MY_SECONDARY_DOMAIN_1.COM,MY_SECONDARY_DOMAIN_2.COM,..."
  export: override_required
}
