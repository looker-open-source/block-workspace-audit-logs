include: "/workspace_audit_logs.model"

explore: +login {

  # date + OU
  aggregate_table: rollup_login_date_ou {
    query: {
      dimensions: [
        activity.activity_date,
        activity.json_ou_path,
        ou_lookup.ou_id,
        activity.event_type,
        activity.event_name,
      ]
      measures: [
        activity.count_user,
        activity.account_warning_event_count,
        activity.login_failure_count,
        activity.login_success_count,
        activity.logout_count,
        activity.password_edit_count,
        activity.suspicious_login_count
      ]
      filters: [activity.record_type: "login"]
    }
    materialization: {
      datagroup_trigger: daily
      partition_keys: [activity.activity_date]
      increment_key:  activity.activity_date
      increment_offset: 1
    }
  }

  # week + OU
  aggregate_table: rollup_login_week_ou {
    query: {
      dimensions: [
        activity.activity_week,
        activity.json_ou_path,
        ou_lookup.ou_id,
        activity.event_type,
        activity.event_name,
      ]
      measures: [
        activity.count_user,
        activity.account_warning_event_count,
        activity.login_failure_count,
        activity.login_success_count,
        activity.logout_count,
        activity.password_edit_count,
        activity.suspicious_login_count
      ]
      filters: [activity.record_type: "login"]
    }
    materialization: {
      datagroup_trigger: weekly
      partition_keys: [activity.activity_week]
      increment_key:  activity.activity_week
      increment_offset: 1
    }
  }

  # month + OU
  aggregate_table: rollup_login_month_ou {
    query: {
      dimensions: [
        activity.activity_month,
        activity.json_ou_path,
        ou_lookup.ou_id,
        activity.event_type,
        activity.event_name,
      ]
      measures: [
        activity.count_user,
        activity.account_warning_event_count,
        activity.login_failure_count,
        activity.login_success_count,
        activity.logout_count,
        activity.password_edit_count,
        activity.suspicious_login_count
      ]
      filters: [activity.record_type: "login"]
    }
    materialization: {
      datagroup_trigger: monthly
      partition_keys: [activity.activity_month]
      increment_key:  activity.activity_month
      increment_offset: 1
    }
  }

  # year + OU
  aggregate_table: rollup_login_year_ou {
    query: {
      dimensions: [
        activity.activity_year,
        activity.json_ou_path,
        ou_lookup.ou_id,
        activity.event_type,
        activity.event_name,
      ]
      measures: [
        activity.count_user,
        activity.account_warning_event_count,
        activity.login_failure_count,
        activity.login_success_count,
        activity.logout_count,
        activity.password_edit_count,
        activity.suspicious_login_count
      ]
      filters: [activity.record_type: "login"]
    }
    materialization: {
      datagroup_trigger: yearly
      partition_keys: [activity.activity_year]
      increment_key:  activity.activity_year
      increment_offset: 1
    }
  }
}

explore: +gmail {

  # date + OU
  aggregate_table: rollup_gmail_date_ou {
    query: {
      dimensions: [
        activity.activity_date,
        activity.json_ou_path,
        ou_lookup.ou_id,
        activity.event_type,
        activity.event_name,
      ]
      measures: [
        activity.count_user,
        activity.count_of_all_emails_received,
        activity.count_of_all_emails_sent,
        activity.count_of_authenticated_emails_received,
        activity.count_of_external_emails_sent,
        activity.count_of_internal_emails_sent,
        activity.count_of_spam,
        activity.count_of_unauthenticated_emails_received
      ]
      filters: [activity.record_type: "gmail"]
    }
    materialization: {
      datagroup_trigger: daily
      partition_keys: [activity.activity_date]
      increment_key:  activity.activity_date
      increment_offset: 1
    }
  }

  # week + OU
  aggregate_table: rollup_gmail_week_ou {
    query: {
      dimensions: [
        activity.activity_week,
        activity.json_ou_path,
        ou_lookup.ou_id,
        activity.event_type,
        activity.event_name,
      ]
      measures: [
        activity.count_user,
        activity.count_of_all_emails_received,
        activity.count_of_all_emails_sent,
        activity.count_of_authenticated_emails_received,
        activity.count_of_external_emails_sent,
        activity.count_of_internal_emails_sent,
        activity.count_of_spam,
        activity.count_of_unauthenticated_emails_received
      ]
      filters: [activity.record_type: "gmail"]
    }
    materialization: {
      datagroup_trigger: weekly
      partition_keys: [activity.activity_week]
      increment_key:  activity.activity_week
      increment_offset: 1
    }
  }

  # month + OU
  aggregate_table: rollup_gmail_month_ou {
    query: {
      dimensions: [
        activity.activity_month,
        activity.json_ou_path,
        ou_lookup.ou_id,
        activity.event_type,
        activity.event_name,
      ]
      measures: [
        activity.count_user,
        activity.count_of_all_emails_received,
        activity.count_of_all_emails_sent,
        activity.count_of_authenticated_emails_received,
        activity.count_of_external_emails_sent,
        activity.count_of_internal_emails_sent,
        activity.count_of_spam,
        activity.count_of_unauthenticated_emails_received
      ]
      filters: [activity.record_type: "gmail"]
    }
    materialization: {
      datagroup_trigger: monthly
      partition_keys: [activity.activity_month]
      increment_key:  activity.activity_month
      increment_offset: 1
    }
  }

  # year + OU
  aggregate_table: rollup_gmail_year_ou {
    query: {
      dimensions: [
        activity.activity_year,
        activity.json_ou_path,
        ou_lookup.ou_id,
        activity.event_type,
        activity.event_name,
      ]
      measures: [
        activity.count_user,
        activity.count_of_all_emails_received,
        activity.count_of_all_emails_sent,
        activity.count_of_authenticated_emails_received,
        activity.count_of_external_emails_sent,
        activity.count_of_internal_emails_sent,
        activity.count_of_spam,
        activity.count_of_unauthenticated_emails_received
      ]
      filters: [activity.record_type: "gmail"]
    }
    materialization: {
      datagroup_trigger: yearly
      partition_keys: [activity.activity_year]
      increment_key:  activity.activity_year
      increment_offset: 1
    }
  }
}

explore: +drive {


  # collaboration across OUs
  aggregate_table: rollup_drive_date_ou_collab {
    query: {
      dimensions: [
        activity.activity_date,
        activity.json_ou_path,
        ou_lookup.ou_id,
        activity.event_type,
        activity.event_name,
        activity.drive__doc_type,
        activity.is_target_user_internal,
        activity.is_active_user_internal,
        activity_drive_facts.current_owner_json_ou_path,
        activity_drive_facts.current_owner_ou_name,
        activity.active_user_org_unit_name,
        activity.email,
        activity_drive_facts.current_owner_email
      ]
      measures: [
        activity.count_user,
        activity.count_all,
        activity.count_copy,
        activity.count_create,
        activity.count_delete,
        activity.count_distinct_all_files_public,
        activity.count_distinct_all_files_shares,
        activity.count_distinct_all_user_shares,
        activity.count_distinct_external_files_shares,
        activity.count_distinct_external_user_shares,
        activity.count_distinct_internal_files_shares,
        activity.count_distinct_internal_user_shares,
        activity.count_download,
        activity.count_edit,
        activity.count_external,
        activity.count_internal,
        activity.count_of_docs,
        activity.count_primary,
        activity.count_secondary,
        activity.count_view,
        activity.count_collaboration
      ]
      filters: [activity.record_type: "drive"]
    }
    materialization: {
      datagroup_trigger: daily
      partition_keys: [activity.activity_date]
      increment_key:  activity.activity_date
      increment_offset: 1
    }
  }



  # date + OU
  aggregate_table: rollup_drive_date_ou {
    query: {
      dimensions: [
        activity.activity_date,
        activity.json_ou_path,
        ou_lookup.ou_id,
        activity.event_type,
        activity.event_name,
        activity.drive__doc_type,
        activity.is_target_user_internal
      ]
      measures: [
        activity.count_user,
        activity.count_all,
        activity.count_copy,
        activity.count_create,
        activity.count_delete,
        activity.count_distinct_all_files_public,
        activity.count_distinct_all_files_shares,
        activity.count_distinct_all_user_shares,
        activity.count_distinct_external_files_shares,
        activity.count_distinct_external_user_shares,
        activity.count_distinct_internal_files_shares,
        activity.count_distinct_internal_user_shares,
        activity.count_download,
        activity.count_edit,
        activity.count_external,
        activity.count_internal,
        activity.count_of_docs,
        activity.count_primary,
        activity.count_secondary,
        activity.count_view,
        activity.count_collaboration
      ]
      filters: [activity.record_type: "drive"]
    }
    materialization: {
      datagroup_trigger: daily
      partition_keys: [activity.activity_date]
      increment_key:  activity.activity_date
      increment_offset: 1
    }
  }

  # week + OU
  aggregate_table: rollup_drive_week_ou {
    query: {
      dimensions: [
        activity.activity_week,
        activity.json_ou_path,
        ou_lookup.ou_id,
        activity.event_type,
        activity.event_name,
        activity.drive__doc_type,
        activity.is_target_user_internal
      ]
      measures: [
        activity.count_user,
        activity.count_all,
        activity.count_copy,
        activity.count_create,
        activity.count_delete,
        activity.count_distinct_all_files_public,
        activity.count_distinct_all_files_shares,
        activity.count_distinct_all_user_shares,
        activity.count_distinct_external_files_shares,
        activity.count_distinct_external_user_shares,
        activity.count_distinct_internal_files_shares,
        activity.count_distinct_internal_user_shares,
        activity.count_download,
        activity.count_edit,
        activity.count_external,
        activity.count_internal,
        activity.count_of_docs,
        activity.count_primary,
        activity.count_secondary,
        activity.count_view,
        activity.count_collaboration
      ]
      filters: [activity.record_type: "drive"]
    }
    materialization: {
      datagroup_trigger: weekly
      partition_keys: [activity.activity_week]
      increment_key:  activity.activity_week
      increment_offset: 1
    }
  }

  # month + OU
  aggregate_table: rollup_drive_month_ou {
    query: {
      dimensions: [
        activity.activity_month,
        activity.json_ou_path,
        ou_lookup.ou_id,
        activity.event_type,
        activity.event_name,
        activity.drive__doc_type,
        activity.is_target_user_internal
      ]
      measures: [
        activity.count_user,
        activity.count_all,
        activity.count_copy,
        activity.count_create,
        activity.count_delete,
        activity.count_distinct_all_files_public,
        activity.count_distinct_all_files_shares,
        activity.count_distinct_all_user_shares,
        activity.count_distinct_external_files_shares,
        activity.count_distinct_external_user_shares,
        activity.count_distinct_internal_files_shares,
        activity.count_distinct_internal_user_shares,
        activity.count_download,
        activity.count_edit,
        activity.count_external,
        activity.count_internal,
        activity.count_of_docs,
        activity.count_primary,
        activity.count_secondary,
        activity.count_view,
        activity.count_collaboration
      ]
      filters: [activity.record_type: "drive"]
    }
    materialization: {
      datagroup_trigger: monthly
      partition_keys: [activity.activity_month]
      increment_key:  activity.activity_month
      increment_offset: 1
    }
  }

  # year + OU
  aggregate_table: rollup_drive_year_ou {
    query: {
      dimensions: [
        activity.activity_year,
        activity.json_ou_path,
        ou_lookup.ou_id,
        activity.event_type,
        activity.event_name,
        activity.drive__doc_type,
        activity.is_target_user_internal
      ]
      measures: [
        activity.count_user,
        activity.count_all,
        activity.count_copy,
        activity.count_create,
        activity.count_delete,
        activity.count_distinct_all_files_public,
        activity.count_distinct_all_files_shares,
        activity.count_distinct_all_user_shares,
        activity.count_distinct_external_files_shares,
        activity.count_distinct_external_user_shares,
        activity.count_distinct_internal_files_shares,
        activity.count_distinct_internal_user_shares,
        activity.count_download,
        activity.count_edit,
        activity.count_external,
        activity.count_internal,
        activity.count_of_docs,
        activity.count_primary,
        activity.count_secondary,
        activity.count_view,
        activity.count_collaboration
      ]
      filters: [activity.record_type: "drive"]
    }
    materialization: {
      datagroup_trigger: yearly
      partition_keys: [activity.activity_year]
      increment_key:  activity.activity_year
      increment_offset: 1
    }
  }
}

# Place in `workspace_audit_logs` model
explore: +gemini {
  aggregate_table: rollup_gemini_date_ou {
    query: {
      dimensions: [
        activity.activity_date,
        activity.json_ou_path,
        ou_lookup.ou_id,
        activity.event_type,
        activity.event_name,
      ]
      measures: [
        activity.count_user,
        activity.count_actions,
        activity.count_apps,
        activity.count_sources,
        ]
      filters: [
        activity.record_type: "gemini_for_workspace"
      ]
    }

    materialization: {
      datagroup_trigger: daily
      partition_keys: [activity.activity_date]
      increment_key:  activity.activity_date
      increment_offset: 1
    }
  }

  aggregate_table: rollup_gemini_week_ou {
    query: {
      dimensions: [
        activity.activity_week,
        activity.json_ou_path,
        ou_lookup.ou_id,
        activity.event_type,
        activity.event_name,
      ]
      measures: [
        activity.count_actions,
        activity.count_apps,
        activity.count_sources,
        activity.count_user
        ]
      filters: [
        activity.record_type: "gemini_for_workspace"
      ]
    }

    materialization: {
      datagroup_trigger: weekly
      partition_keys: [activity.activity_week]
      increment_key:  activity.activity_week
      increment_offset: 1
    }
  }

  aggregate_table: rollup_gemini_month_ou {
    query: {
      dimensions: [
        activity.activity_month,
        activity.json_ou_path,
        ou_lookup.ou_id,
        activity.event_type,
        activity.event_name,
      ]
      measures: [
        activity.count_actions,
        activity.count_apps,
        activity.count_sources,
        activity.count_user
      ]
      filters: [
        activity.record_type: "gemini_for_workspace"
      ]
    }

    materialization: {
      datagroup_trigger: monthly
      partition_keys: [activity.activity_month]
      increment_key:  activity.activity_month
      increment_offset: 1
    }
  }

  aggregate_table: rollup_gemini_year_ou {
    query: {
      dimensions: [
        activity.activity_year,
        activity.json_ou_path,
        ou_lookup.ou_id,
        activity.event_type,
        activity.event_name,
      ]
      measures: [
        activity.count_actions,
        activity.count_apps,
        activity.count_sources,
        activity.count_user
      ]
      filters: [
        activity.record_type: "gemini_for_workspace"
      ]
    }

    materialization: {
      datagroup_trigger: yearly
      partition_keys: [activity.activity_year]
      increment_key:  activity.activity_year
      increment_offset: 1
    }
  }
}
