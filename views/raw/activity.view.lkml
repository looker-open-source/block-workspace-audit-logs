view: activity {
  fields_hidden_by_default: yes

  dimension: admin__access_approval_action {
    type: string
    sql: ${TABLE}.admin.access_approval_action ;;
    group_label: "Admin"
    group_item_label: "Access Approval Action"
  }

  dimension: admin__access_level_curr_state {
    type: string
    sql: ${TABLE}.admin.access_level_curr_state ;;
    group_label: "Admin"
    group_item_label: "Access Level Curr State"
  }

  dimension: admin__access_level_name {
    type: string
    sql: ${TABLE}.admin.access_level_name ;;
    group_label: "Admin"
    group_item_label: "Access Level Name"
  }

  dimension: admin__access_level_prev_state {
    type: string
    sql: ${TABLE}.admin.access_level_prev_state ;;
    group_label: "Admin"
    group_item_label: "Access Level Prev State"
  }

  dimension: admin__access_level_request {
    type: string
    sql: ${TABLE}.admin.access_level_request ;;
    group_label: "Admin"
    group_item_label: "Access Level Request"
  }

  dimension: admin__access_level_title {
    type: string
    sql: ${TABLE}.admin.access_level_title ;;
    group_label: "Admin"
    group_item_label: "Access Level Title"
  }

  dimension: admin__access_policy_prev_state {
    type: string
    sql: ${TABLE}.admin.access_policy_prev_state ;;
    group_label: "Admin"
    group_item_label: "Access Policy Prev State"
  }

  dimension: admin__access_policy_request {
    type: string
    sql: ${TABLE}.admin.access_policy_request ;;
    group_label: "Admin"
    group_item_label: "Access Policy Request"
  }

  dimension: admin__action_id {
    type: string
    sql: ${TABLE}.admin.action_id ;;
    group_label: "Admin"
    group_item_label: "Action ID"
  }

  dimension: admin__action_type {
    type: string
    sql: ${TABLE}.admin.action_type ;;
    group_label: "Admin"
    group_item_label: "Action Type"
  }

  dimension: admin__addressbook_name {
    type: string
    sql: ${TABLE}.admin.addressbook_name ;;
    group_label: "Admin"
    group_item_label: "Addressbook Name"
  }

  dimension: admin__alert_change_id {
    type: string
    sql: ${TABLE}.admin.alert_change_id ;;
    group_label: "Admin"
    group_item_label: "Alert Change ID"
  }

  dimension: admin__alert_customer_settings_field {
    type: string
    sql: ${TABLE}.admin.alert_customer_settings_field ;;
    group_label: "Admin"
    group_item_label: "Alert Customer Settings Field"
  }

  dimension: admin__alert_feedback {
    type: string
    sql: ${TABLE}.admin.alert_feedback ;;
    group_label: "Admin"
    group_item_label: "Alert Feedback"
  }

  dimension: admin__alert_feedback_id {
    type: string
    sql: ${TABLE}.admin.alert_feedback_id ;;
    group_label: "Admin"
    group_item_label: "Alert Feedback ID"
  }

  dimension: admin__alert_id {
    type: string
    sql: ${TABLE}.admin.alert_id ;;
    group_label: "Admin"
    group_item_label: "Alert ID"
  }

  dimension: admin__alert_name {
    type: string
    sql: ${TABLE}.admin.alert_name ;;
    group_label: "Admin"
    group_item_label: "Alert Name"
  }

  dimension: admin__alert_source {
    type: string
    sql: ${TABLE}.admin.alert_source ;;
    group_label: "Admin"
    group_item_label: "Alert Source"
  }

  dimension: admin__alert_type {
    type: string
    sql: ${TABLE}.admin.alert_type ;;
    group_label: "Admin"
    group_item_label: "Alert Type"
  }

  dimension: admin__allowed_two_step_verification_method {
    type: string
    sql: ${TABLE}.admin.allowed_two_step_verification_method ;;
    group_label: "Admin"
    group_item_label: "Allowed Two Step Verification Method"
  }

  dimension: admin__api_client_name {
    type: string
    sql: ${TABLE}.admin.api_client_name ;;
    group_label: "Admin"
    group_item_label: "API Client Name"
  }

  dimension: admin__api_scopes {
    type: string
    sql: ${TABLE}.admin.api_scopes ;;
    group_label: "Admin"
    group_item_label: "API Scopes"
  }

  dimension: admin__app_id {
    type: string
    sql: ${TABLE}.admin.app_id ;;
    group_label: "Admin"
    group_item_label: "App ID"
  }

  dimension: admin__app_license {
    type: string
    sql: ${TABLE}.admin.app_license ;;
    group_label: "Admin"
    group_item_label: "App License"
  }

  dimension: admin__app_licenses_order_number {
    type: string
    sql: ${TABLE}.admin.app_licenses_order_number ;;
    group_label: "Admin"
    group_item_label: "App Licenses Order Number"
  }

  dimension: admin__app_resource_id {
    type: string
    sql: ${TABLE}.admin.app_resource_id ;;
    group_label: "Admin"
    group_item_label: "App Resource ID"
  }

  dimension: admin__app_type {
    type: string
    sql: ${TABLE}.admin.app_type ;;
    group_label: "Admin"
    group_item_label: "App Type"
  }

  dimension: admin__application_edition {
    type: string
    sql: ${TABLE}.admin.application_edition ;;
    group_label: "Admin"
    group_item_label: "Application Edition"
  }

  dimension: admin__application_enabled {
    type: string
    sql: ${TABLE}.admin.application_enabled ;;
    group_label: "Admin"
    group_item_label: "Application Enabled"
  }

  dimension: admin__application_name {
    type: string
    sql: ${TABLE}.admin.application_name ;;
    group_label: "Admin"
    group_item_label: "Application Name"
  }

  dimension: admin__asp_id {
    type: string
    sql: ${TABLE}.admin.asp_id ;;
    group_label: "Admin"
    group_item_label: "Asp ID"
  }

  dimension: admin__auth_granted {
    type: yesno
    sql: ${TABLE}.admin.auth_granted ;;
    group_label: "Admin"
    group_item_label: "Auth Granted"
  }

  dimension: admin__auth_permission {
    type: string
    sql: ${TABLE}.admin.auth_permission ;;
    group_label: "Admin"
    group_item_label: "Auth Permission"
  }

  dimension: admin__auth_principle_email {
    type: string
    sql: ${TABLE}.admin.auth_principle_email ;;
    group_label: "Admin"
    group_item_label: "Auth Principle Email"
  }

  dimension: admin__auth_resource {
    type: string
    sql: ${TABLE}.admin.auth_resource ;;
    group_label: "Admin"
    group_item_label: "Auth Resource"
  }

  dimension: admin__auto_prov_service_provider_attribute_name {
    type: string
    sql: ${TABLE}.admin.auto_prov_service_provider_attribute_name ;;
    group_label: "Admin"
    group_item_label: "Auto Prov Service Provider Attribute Name"
  }

  dimension: admin__begin_date_time {
    type: string
    sql: ${TABLE}.admin.begin_date_time ;;
    group_label: "Admin"
    group_item_label: "Begin Date Time"
  }

  dimension: admin__bigquery_project_id {
    type: string
    sql: ${TABLE}.admin.bigquery_project_id ;;
    group_label: "Admin"
    group_item_label: "Bigquery Project ID"
  }

  dimension: admin__birthdate {
    type: string
    sql: ${TABLE}.admin.birthdate ;;
    group_label: "Admin"
    group_item_label: "Birthdate"
  }

  dimension: admin__browser_virtual_device_id {
    type: string
    sql: ${TABLE}.admin.browser_virtual_device_id ;;
    group_label: "Admin"
    group_item_label: "Browser Virtual Device ID"
  }

  dimension: admin__bulk_upload_fail_users_number {
    type: string
    sql: ${TABLE}.admin.bulk_upload_fail_users_number ;;
    group_label: "Admin"
    group_item_label: "Bulk Upload Fail Users Number"
  }

  dimension: admin__bulk_upload_success_oauth_apps_number {
    type: string
    sql: ${TABLE}.admin.bulk_upload_success_oauth_apps_number ;;
    group_label: "Admin"
    group_item_label: "Bulk Upload Success Oauth Apps Number"
  }

  dimension: admin__bulk_upload_total_oauth_apps_number {
    type: string
    sql: ${TABLE}.admin.bulk_upload_total_oauth_apps_number ;;
    group_label: "Admin"
    group_item_label: "Bulk Upload Total Oauth Apps Number"
  }

  dimension: admin__bulk_upload_total_users_number {
    type: string
    sql: ${TABLE}.admin.bulk_upload_total_users_number ;;
    group_label: "Admin"
    group_item_label: "Bulk Upload Total Users Number"
  }

  dimension: admin__caa_access_levels_added {
    type: string
    sql: ${TABLE}.admin.caa_access_levels_added ;;
    group_label: "Admin"
    group_item_label: "Caa Access Levels Added"
  }

  dimension: admin__caa_access_levels_removed {
    type: string
    sql: ${TABLE}.admin.caa_access_levels_removed ;;
    group_label: "Admin"
    group_item_label: "Caa Access Levels Removed"
  }

  dimension: admin__caa_assignments_new {
    type: string
    sql: ${TABLE}.admin.caa_assignments_new ;;
    group_label: "Admin"
    group_item_label: "Caa Assignments New"
  }

  dimension: admin__caa_assignments_old {
    type: string
    sql: ${TABLE}.admin.caa_assignments_old ;;
    group_label: "Admin"
    group_item_label: "Caa Assignments Old"
  }

  dimension: admin__caa_enforcement_endpoints_new {
    type: string
    sql: ${TABLE}.admin.caa_enforcement_endpoints_new ;;
    group_label: "Admin"
    group_item_label: "Caa Enforcement Endpoints New"
  }

  dimension: admin__caa_enforcement_endpoints_old {
    type: string
    sql: ${TABLE}.admin.caa_enforcement_endpoints_old ;;
    group_label: "Admin"
    group_item_label: "Caa Enforcement Endpoints Old"
  }

  dimension: admin__certificate_grant_date {
    type: string
    sql: ${TABLE}.admin.certificate_grant_date ;;
    group_label: "Admin"
    group_item_label: "Certificate Grant Date"
  }

  dimension: admin__certificate_guid {
    type: string
    sql: ${TABLE}.admin.certificate_guid ;;
    group_label: "Admin"
    group_item_label: "Certificate Guid"
  }

  dimension: admin__certificate_name {
    type: string
    sql: ${TABLE}.admin.certificate_name ;;
    group_label: "Admin"
    group_item_label: "Certificate Name"
  }

  dimension: admin__certificate_setting_changes {
    type: string
    sql: ${TABLE}.admin.certificate_setting_changes ;;
    group_label: "Admin"
    group_item_label: "Certificate Setting Changes"
  }

  dimension: admin__certificate_type {
    type: string
    sql: ${TABLE}.admin.certificate_type ;;
    group_label: "Admin"
    group_item_label: "Certificate Type"
  }

  dimension: admin__chart_filters {
    type: string
    sql: ${TABLE}.admin.chart_filters ;;
    group_label: "Admin"
    group_item_label: "Chart Filters"
  }

  dimension: admin__chart_name {
    type: string
    sql: ${TABLE}.admin.chart_name ;;
    group_label: "Admin"
    group_item_label: "Chart Name"
  }

  dimension: admin__chrome_browser_machine_name {
    type: string
    sql: ${TABLE}.admin.chrome_browser_machine_name ;;
    group_label: "Admin"
    group_item_label: "Chrome Browser Machine Name"
  }

  dimension: admin__chrome_licenses_allowed {
    type: string
    sql: ${TABLE}.admin.chrome_licenses_allowed ;;
    group_label: "Admin"
    group_item_label: "Chrome Licenses Allowed"
  }

  dimension: admin__chrome_licenses_enabled {
    type: string
    sql: ${TABLE}.admin.chrome_licenses_enabled ;;
    group_label: "Admin"
    group_item_label: "Chrome Licenses Enabled"
  }

  dimension: admin__chrome_num_licenses_purchased {
    type: number
    sql: ${TABLE}.admin.chrome_num_licenses_purchased ;;
    group_label: "Admin"
    group_item_label: "Chrome Num Licenses Purchased"
  }

  dimension: admin__chrome_os_session_type {
    type: string
    sql: ${TABLE}.admin.chrome_os_session_type ;;
    group_label: "Admin"
    group_item_label: "Chrome OS Session Type"
  }

  dimension: admin__company_device_action {
    type: string
    sql: ${TABLE}.admin.company_device_action ;;
    group_label: "Admin"
    group_item_label: "Company Device Action"
  }

  dimension: admin__company_device_id {
    type: string
    sql: ${TABLE}.admin.company_device_id ;;
    group_label: "Admin"
    group_item_label: "Company Device ID"
  }

  dimension: admin__connector_config {
    type: string
    sql: ${TABLE}.admin.connector_config ;;
    group_label: "Admin"
    group_item_label: "Connector Config"
  }

  dimension: admin__connector_configuration_action {
    type: string
    sql: ${TABLE}.admin.connector_configuration_action ;;
    group_label: "Admin"
    group_item_label: "Connector Configuration Action"
  }

  dimension: admin__connector_configuration_name {
    type: string
    sql: ${TABLE}.admin.connector_configuration_name ;;
    group_label: "Admin"
    group_item_label: "Connector Configuration Name"
  }

  dimension: admin__connector_provider_name {
    type: string
    sql: ${TABLE}.admin.connector_provider_name ;;
    group_label: "Admin"
    group_item_label: "Connector Provider Name"
  }

  dimension: admin__custom_user_field_name {
    type: string
    sql: ${TABLE}.admin.custom_user_field_name ;;
    group_label: "Admin"
    group_item_label: "Custom User Field Name"
  }

  dimension: admin__custom_user_field_spec {
    type: string
    sql: ${TABLE}.admin.custom_user_field_spec ;;
    group_label: "Admin"
    group_item_label: "Custom User Field Spec"
  }

  dimension: admin__custom_user_schema_name {
    type: string
    sql: ${TABLE}.admin.custom_user_schema_name ;;
    group_label: "Admin"
    group_item_label: "Custom User Schema Name"
  }

  dimension: admin__customer_name {
    type: string
    sql: ${TABLE}.admin.customer_name ;;
    group_label: "Admin"
    group_item_label: "Customer Name"
  }

  dimension: admin__deprov_action_on_google {
    type: string
    sql: ${TABLE}.admin.deprov_action_on_google ;;
    group_label: "Admin"
    group_item_label: "Deprov Action on Google"
  }

  dimension: admin__deprov_action_on_sp {
    type: string
    sql: ${TABLE}.admin.deprov_action_on_sp ;;
    group_label: "Admin"
    group_item_label: "Deprov Action on Sp"
  }

  dimension: admin__destination_user_email {
    type: string
    sql: ${TABLE}.admin.destination_user_email ;;
    group_label: "Admin"
    group_item_label: "Destination User Email"
  }

  dimension: admin__device_alert_duration_in_seconds {
    type: string
    sql: ${TABLE}.admin.device_alert_duration_in_seconds ;;
    group_label: "Admin"
    group_item_label: "Device Alert Duration In Seconds"
  }

  dimension: admin__device_alert_id {
    type: string
    sql: ${TABLE}.admin.device_alert_id ;;
    group_label: "Admin"
    group_item_label: "Device Alert ID"
  }

  dimension: admin__device_alert_location_prefixes {
    type: string
    sql: ${TABLE}.admin.device_alert_location_prefixes ;;
    group_label: "Admin"
    group_item_label: "Device Alert Location Prefixes"
  }

  dimension: admin__device_alert_title {
    type: string
    sql: ${TABLE}.admin.device_alert_title ;;
    group_label: "Admin"
    group_item_label: "Device Alert Title"
  }

  dimension: admin__device_alert_type {
    type: string
    sql: ${TABLE}.admin.device_alert_type ;;
    group_label: "Admin"
    group_item_label: "Device Alert Type"
  }

  dimension: admin__device_command_details {
    type: string
    sql: ${TABLE}.admin.device_command_details ;;
    group_label: "Admin"
    group_item_label: "Device Command Details"
  }

  dimension: admin__device_id {
    type: string
    sql: ${TABLE}.admin.device_id ;;
    group_label: "Admin"
    group_item_label: "Device ID"
  }

  dimension: admin__device_new_org_unit {
    type: string
    sql: ${TABLE}.admin.device_new_org_unit ;;
    group_label: "Admin"
    group_item_label: "Device New Org Unit"
  }

  dimension: admin__device_new_state {
    type: string
    sql: ${TABLE}.admin.device_new_state ;;
    group_label: "Admin"
    group_item_label: "Device New State"
  }

  dimension: admin__device_previous_org_unit {
    type: string
    sql: ${TABLE}.admin.device_previous_org_unit ;;
    group_label: "Admin"
    group_item_label: "Device Previous Org Unit"
  }

  dimension: admin__device_previous_state {
    type: string
    sql: ${TABLE}.admin.device_previous_state ;;
    group_label: "Admin"
    group_item_label: "Device Previous State"
  }

  dimension: admin__device_serial_number {
    type: string
    sql: ${TABLE}.admin.device_serial_number ;;
    group_label: "Admin"
    group_item_label: "Device Serial Number"
  }

  dimension: admin__device_type {
    type: string
    sql: ${TABLE}.admin.device_type ;;
    group_label: "Admin"
    group_item_label: "Device Type"
  }

  dimension: admin__directory_api_id {
    type: string
    sql: ${TABLE}.admin.directory_api_id ;;
    group_label: "Admin"
    group_item_label: "Directory API ID"
  }

  dimension: admin__distribution_entity_name {
    type: string
    sql: ${TABLE}.admin.distribution_entity_name ;;
    group_label: "Admin"
    group_item_label: "Distribution Entity Name"
  }

  dimension: admin__distribution_entity_type {
    type: string
    sql: ${TABLE}.admin.distribution_entity_type ;;
    group_label: "Admin"
    group_item_label: "Distribution Entity Type"
  }

  dimension: admin__dlp_detector_name {
    type: string
    sql: ${TABLE}.admin.dlp_detector_name ;;
    group_label: "Admin"
    group_item_label: "Dlp Detector Name"
  }

  dimension: admin__domain_alias {
    type: string
    sql: ${TABLE}.admin.domain_alias ;;
    group_label: "Admin"
    group_item_label: "Domain Alias"
  }

  dimension: admin__domain_name {
    type: string
    sql: ${TABLE}.admin.domain_name ;;
    group_label: "Admin"
    group_item_label: "Domain Name"
  }

  dimension: admin__domain_takeover_new_admin_type {
    type: string
    sql: ${TABLE}.admin.domain_takeover_new_admin_type ;;
    group_label: "Admin"
    group_item_label: "Domain Takeover New Admin Type"
  }

  dimension: admin__domain_verification_method {
    type: string
    sql: ${TABLE}.admin.domain_verification_method ;;
    group_label: "Admin"
    group_item_label: "Domain Verification Method"
  }

  dimension: admin__email_export_include_deleted {
    type: string
    sql: ${TABLE}.admin.email_export_include_deleted ;;
    group_label: "Admin"
    group_item_label: "Email Export Include Deleted"
  }

  dimension: admin__email_export_package_content {
    type: string
    sql: ${TABLE}.admin.email_export_package_content ;;
    group_label: "Admin"
    group_item_label: "Email Export Package Content"
  }

  dimension: admin__email_log_search_end_date {
    type: string
    sql: ${TABLE}.admin.email_log_search_end_date ;;
    group_label: "Admin"
    group_item_label: "Email Log Search End Date"
  }

  dimension: admin__email_log_search_msg_id {
    type: string
    sql: ${TABLE}.admin.email_log_search_msg_id ;;
    group_label: "Admin"
    group_item_label: "Email Log Search Msg ID"
  }

  dimension: admin__email_log_search_recipient {
    type: string
    sql: ${TABLE}.admin.email_log_search_recipient ;;
    group_label: "Admin"
    group_item_label: "Email Log Search Recipient"
  }

  dimension: admin__email_log_search_sender {
    type: string
    sql: ${TABLE}.admin.email_log_search_sender ;;
    group_label: "Admin"
    group_item_label: "Email Log Search Sender"
  }

  dimension: admin__email_log_search_smtp_recipient_ip {
    type: string
    sql: ${TABLE}.admin.email_log_search_smtp_recipient_ip ;;
    group_label: "Admin"
    group_item_label: "Email Log Search Smtp Recipient IP"
  }

  dimension: admin__email_log_search_smtp_sender_ip {
    type: string
    sql: ${TABLE}.admin.email_log_search_smtp_sender_ip ;;
    group_label: "Admin"
    group_item_label: "Email Log Search Smtp Sender IP"
  }

  dimension: admin__email_log_search_start_date {
    type: string
    sql: ${TABLE}.admin.email_log_search_start_date ;;
    group_label: "Admin"
    group_item_label: "Email Log Search Start Date"
  }

  dimension: admin__email_monitor_dest_email {
    type: string
    sql: ${TABLE}.admin.email_monitor_dest_email ;;
    group_label: "Admin"
    group_item_label: "Email Monitor Dest Email"
  }

  dimension: admin__email_monitor_level_chat {
    type: string
    sql: ${TABLE}.admin.email_monitor_level_chat ;;
    group_label: "Admin"
    group_item_label: "Email Monitor Level Chat"
  }

  dimension: admin__email_monitor_level_draft_email {
    type: string
    sql: ${TABLE}.admin.email_monitor_level_draft_email ;;
    group_label: "Admin"
    group_item_label: "Email Monitor Level Draft Email"
  }

  dimension: admin__email_monitor_level_incoming_email {
    type: string
    sql: ${TABLE}.admin.email_monitor_level_incoming_email ;;
    group_label: "Admin"
    group_item_label: "Email Monitor Level Incoming Email"
  }

  dimension: admin__email_monitor_level_outgoing_email {
    type: string
    sql: ${TABLE}.admin.email_monitor_level_outgoing_email ;;
    group_label: "Admin"
    group_item_label: "Email Monitor Level Outgoing Email"
  }

  dimension: admin__end_date {
    type: string
    sql: ${TABLE}.admin.end_date ;;
    group_label: "Admin"
    group_item_label: "End Date"
  }

  dimension: admin__end_date_time {
    type: string
    sql: ${TABLE}.admin.end_date_time ;;
    group_label: "Admin"
    group_item_label: "End Date Time"
  }

  dimension: admin__entity_name {
    type: string
    sql: ${TABLE}.admin.entity_name ;;
    group_label: "Admin"
    group_item_label: "Entity Name"
  }

  dimension: admin__entity_transfer_entity_type {
    type: string
    sql: ${TABLE}.admin.entity_transfer_entity_type ;;
    group_label: "Admin"
    group_item_label: "Entity Transfer Entity Type"
  }

  dimension: admin__entity_type {
    type: string
    sql: ${TABLE}.admin.entity_type ;;
    group_label: "Admin"
    group_item_label: "Entity Type"
  }

  dimension: admin__exchange_role_account {
    type: string
    sql: ${TABLE}.admin.exchange_role_account ;;
    group_label: "Admin"
    group_item_label: "Exchange Role Account"
  }

  dimension: admin__exchange_web_services_url {
    type: string
    sql: ${TABLE}.admin.exchange_web_services_url ;;
    group_label: "Admin"
    group_item_label: "Exchange Web Services URL"
  }

  dimension: admin__field_name {
    type: string
    sql: ${TABLE}.admin.field_name ;;
    group_label: "Admin"
    group_item_label: "Field Name"
  }

  dimension: admin__flashlight_edu_non_featured_services_selection {
    type: string
    sql: ${TABLE}.admin.flashlight_edu_non_featured_services_selection ;;
    group_label: "Admin"
    group_item_label: "Flashlight Edu Non Featured Services Selection"
  }

  dimension: admin__framework_name {
    type: string
    sql: ${TABLE}.admin.framework_name ;;
    group_label: "Admin"
    group_item_label: "Framework Name"
  }

  dimension: admin__full_org_unit_path {
    type: string
    sql: ${TABLE}.admin.full_org_unit_path ;;
    group_label: "Admin"
    group_item_label: "Full Org Unit Path"
  }

  dimension: admin__gateway_name {
    type: string
    sql: ${TABLE}.admin.gateway_name ;;
    group_label: "Admin"
    group_item_label: "Gateway Name"
  }

  dimension: admin__gmail_reset_reason {
    type: string
    sql: ${TABLE}.admin.gmail_reset_reason ;;
    group_label: "Admin"
    group_item_label: "Gmail Reset Reason"
  }

  dimension: admin__group_email {
    type: string
    sql: ${TABLE}.admin.group_email ;;
    group_label: "Admin"
    group_item_label: "Group Email"
  }

  dimension: admin__group_member_bulk_upload_failed_number {
    type: string
    sql: ${TABLE}.admin.group_member_bulk_upload_failed_number ;;
    group_label: "Admin"
    group_item_label: "Group Member Bulk Upload Failed Number"
  }

  dimension: admin__group_member_bulk_upload_total_number {
    type: string
    sql: ${TABLE}.admin.group_member_bulk_upload_total_number ;;
    group_label: "Admin"
    group_item_label: "Group Member Bulk Upload Total Number"
  }

  dimension: admin__group_name {
    type: string
    sql: ${TABLE}.admin.group_name ;;
    group_label: "Admin"
    group_item_label: "Group Name"
  }

  dimension: admin__group_priorities {
    type: string
    sql: ${TABLE}.admin.group_priorities ;;
    group_label: "Admin"
    group_item_label: "Group Priorities"
  }

  dimension: admin__hangouts_video_conferencing_enabled {
    type: string
    sql: ${TABLE}.admin.hangouts_video_conferencing_enabled ;;
    group_label: "Admin"
    group_item_label: "Hangouts Video Conferencing Enabled"
  }

  dimension: admin__inbound_sso_profile_changes {
    type: string
    sql: ${TABLE}.admin.inbound_sso_profile_changes ;;
    group_label: "Admin"
    group_item_label: "Inbound Sso Profile Changes"
  }

  dimension: admin__inbound_sso_profile_name {
    type: string
    sql: ${TABLE}.admin.inbound_sso_profile_name ;;
    group_label: "Admin"
    group_item_label: "Inbound Sso Profile Name"
  }

  dimension: admin__info_type {
    type: string
    sql: ${TABLE}.admin.info_type ;;
    group_label: "Admin"
    group_item_label: "Info Type"
  }

  dimension: admin__investigation_action {
    type: string
    sql: ${TABLE}.admin.investigation_action ;;
    group_label: "Admin"
    group_item_label: "Investigation Action"
  }

  dimension: admin__investigation_action_id {
    type: string
    sql: ${TABLE}.admin.investigation_action_id ;;
    group_label: "Admin"
    group_item_label: "Investigation Action ID"
  }

  dimension: admin__investigation_action_identifier {
    type: string
    sql: ${TABLE}.admin.investigation_action_identifier ;;
    group_label: "Admin"
    group_item_label: "Investigation Action Identifier"
  }

  dimension: admin__investigation_action_justification {
    type: string
    sql: ${TABLE}.admin.investigation_action_justification ;;
    group_label: "Admin"
    group_item_label: "Investigation Action Justification"
  }

  dimension: admin__investigation_action_name {
    type: string
    sql: ${TABLE}.admin.investigation_action_name ;;
    group_label: "Admin"
    group_item_label: "Investigation Action Name"
  }

  dimension: admin__investigation_action_num_attempted {
    type: string
    sql: ${TABLE}.admin.investigation_action_num_attempted ;;
    group_label: "Admin"
    group_item_label: "Investigation Action Num Attempted"
  }

  dimension: admin__investigation_action_num_failed {
    type: string
    sql: ${TABLE}.admin.investigation_action_num_failed ;;
    group_label: "Admin"
    group_item_label: "Investigation Action Num Failed"
  }

  dimension: admin__investigation_action_num_success {
    type: string
    sql: ${TABLE}.admin.investigation_action_num_success ;;
    group_label: "Admin"
    group_item_label: "Investigation Action Num Success"
  }

  dimension: admin__investigation_action_verification_outcome {
    type: string
    sql: ${TABLE}.admin.investigation_action_verification_outcome ;;
    group_label: "Admin"
    group_item_label: "Investigation Action Verification Outcome"
  }

  dimension: admin__investigation_action_verifier_email {
    type: string
    sql: ${TABLE}.admin.investigation_action_verifier_email ;;
    group_label: "Admin"
    group_item_label: "Investigation Action Verifier Email"
  }

  dimension: admin__investigation_admin_email {
    type: string
    sql: ${TABLE}.admin.investigation_admin_email ;;
    group_label: "Admin"
    group_item_label: "Investigation Admin Email"
  }

  dimension: admin__investigation_content_access_device {
    type: string
    sql: ${TABLE}.admin.investigation_content_access_device ;;
    group_label: "Admin"
    group_item_label: "Investigation Content Access Device"
  }

  dimension: admin__investigation_content_access_entity_id {
    type: string
    sql: ${TABLE}.admin.investigation_content_access_entity_id ;;
    group_label: "Admin"
    group_item_label: "Investigation Content Access Entity ID"
  }

  dimension: admin__investigation_content_access_justification {
    type: string
    sql: ${TABLE}.admin.investigation_content_access_justification ;;
    group_label: "Admin"
    group_item_label: "Investigation Content Access Justification"
  }

  dimension: admin__investigation_data_source {
    type: string
    sql: ${TABLE}.admin.investigation_data_source ;;
    group_label: "Admin"
    group_item_label: "Investigation Data Source"
  }

  dimension: admin__investigation_data_source_name {
    type: string
    sql: ${TABLE}.admin.investigation_data_source_name ;;
    group_label: "Admin"
    group_item_label: "Investigation Data Source Name"
  }

  dimension: admin__investigation_description {
    type: string
    sql: ${TABLE}.admin.investigation_description ;;
    group_label: "Admin"
    group_item_label: "Investigation Description"
  }

  dimension: admin__investigation_download_attachment_attachment_hash {
    type: string
    sql: ${TABLE}.admin.investigation_download_attachment_attachment_hash ;;
    group_label: "Admin"
    group_item_label: "Investigation Download Attachment Attachment Hash"
  }

  dimension: admin__investigation_download_attachment_attachment_name {
    type: string
    sql: ${TABLE}.admin.investigation_download_attachment_attachment_name ;;
    group_label: "Admin"
    group_item_label: "Investigation Download Attachment Attachment Name"
  }

  dimension: admin__investigation_download_attachment_device {
    type: string
    sql: ${TABLE}.admin.investigation_download_attachment_device ;;
    group_label: "Admin"
    group_item_label: "Investigation Download Attachment Device"
  }

  dimension: admin__investigation_download_attachment_justification {
    type: string
    sql: ${TABLE}.admin.investigation_download_attachment_justification ;;
    group_label: "Admin"
    group_item_label: "Investigation Download Attachment Justification"
  }

  dimension: admin__investigation_download_attachment_message_id {
    type: string
    sql: ${TABLE}.admin.investigation_download_attachment_message_id ;;
    group_label: "Admin"
    group_item_label: "Investigation Download Attachment Message ID"
  }

  dimension: admin__investigation_entity_ids {
    type: string
    sql: ${TABLE}.admin.investigation_entity_ids ;;
    group_label: "Admin"
    group_item_label: "Investigation Entity Ids"
  }

  dimension: admin__investigation_name {
    type: string
    sql: ${TABLE}.admin.investigation_name ;;
    group_label: "Admin"
    group_item_label: "Investigation Name"
  }

  dimension: admin__investigation_object_identifier {
    type: string
    sql: ${TABLE}.admin.investigation_object_identifier ;;
    group_label: "Admin"
    group_item_label: "Investigation Object Identifier"
  }

  dimension: admin__investigation_query {
    type: string
    sql: ${TABLE}.admin.investigation_query ;;
    group_label: "Admin"
    group_item_label: "Investigation Query"
  }

  dimension: admin__investigation_setting_name {
    type: string
    sql: ${TABLE}.admin.investigation_setting_name ;;
    group_label: "Admin"
    group_item_label: "Investigation Setting Name"
  }

  dimension: admin__investigation_setting_value {
    type: string
    sql: ${TABLE}.admin.investigation_setting_value ;;
    group_label: "Admin"
    group_item_label: "Investigation Setting Value"
  }

  dimension: admin__investigation_url_display_text {
    type: string
    sql: ${TABLE}.admin.investigation_url_display_text ;;
    group_label: "Admin"
    group_item_label: "Investigation URL Display Text"
  }

  dimension: admin__label_id {
    type: string
    sql: ${TABLE}.admin.label_id ;;
    group_label: "Admin"
    group_item_label: "Label ID"
  }

  dimension: admin__label_name {
    type: string
    sql: ${TABLE}.admin.label_name ;;
    group_label: "Admin"
    group_item_label: "Label Name"
  }

  dimension: admin__label_principal {
    type: string
    sql: ${TABLE}.admin.label_principal ;;
    group_label: "Admin"
    group_item_label: "Label Principal"
  }

  dimension: admin__label_principal_email {
    type: string
    sql: ${TABLE}.admin.label_principal_email ;;
    group_label: "Admin"
    group_item_label: "Label Principal Email"
  }

  dimension: admin__label_principal_role {
    type: string
    sql: ${TABLE}.admin.label_principal_role ;;
    group_label: "Admin"
    group_item_label: "Label Principal Role"
  }

  dimension: admin__label_revision_id {
    type: number
    sql: ${TABLE}.admin.label_revision_id ;;
    group_label: "Admin"
    group_item_label: "Label Revision ID"
  }

  dimension: admin__ldap_application_authentication_settings {
    type: string
    sql: ${TABLE}.admin.ldap_application_authentication_settings ;;
    group_label: "Admin"
    group_item_label: "Ldap Application Authentication Settings"
  }

  dimension: admin__ldap_application_description {
    type: string
    sql: ${TABLE}.admin.ldap_application_description ;;
    group_label: "Admin"
    group_item_label: "Ldap Application Description"
  }

  dimension: admin__ldap_application_group_search_settings {
    type: string
    sql: ${TABLE}.admin.ldap_application_group_search_settings ;;
    group_label: "Admin"
    group_item_label: "Ldap Application Group Search Settings"
  }

  dimension: admin__ldap_application_id {
    type: string
    sql: ${TABLE}.admin.ldap_application_id ;;
    group_label: "Admin"
    group_item_label: "Ldap Application ID"
  }

  dimension: admin__ldap_application_name {
    type: string
    sql: ${TABLE}.admin.ldap_application_name ;;
    group_label: "Admin"
    group_item_label: "Ldap Application Name"
  }

  dimension: admin__ldap_application_user_search_settings {
    type: string
    sql: ${TABLE}.admin.ldap_application_user_search_settings ;;
    group_label: "Admin"
    group_item_label: "Ldap Application User Search Settings"
  }

  dimension: admin__ldap_certificate_name {
    type: string
    sql: ${TABLE}.admin.ldap_certificate_name ;;
    group_label: "Admin"
    group_item_label: "Ldap Certificate Name"
  }

  dimension: admin__ldap_credentials_username {
    type: string
    sql: ${TABLE}.admin.ldap_credentials_username ;;
    group_label: "Admin"
    group_item_label: "Ldap Credentials Username"
  }

  dimension: admin__ldap_error_message {
    type: string
    sql: ${TABLE}.admin.ldap_error_message ;;
    group_label: "Admin"
    group_item_label: "Ldap Error Message"
  }

  dimension: admin__ldap_error_root_cause_exception {
    type: string
    sql: ${TABLE}.admin.ldap_error_root_cause_exception ;;
    group_label: "Admin"
    group_item_label: "Ldap Error Root Cause Exception"
  }

  dimension: admin__ldap_query {
    type: string
    sql: ${TABLE}.admin.ldap_query ;;
    group_label: "Admin"
    group_item_label: "Ldap Query"
  }

  dimension: admin__ldap_result_code {
    type: string
    sql: ${TABLE}.admin.ldap_result_code ;;
    group_label: "Admin"
    group_item_label: "Ldap Result Code"
  }

  dimension: admin__ldap_result_message {
    type: string
    sql: ${TABLE}.admin.ldap_result_message ;;
    group_label: "Admin"
    group_item_label: "Ldap Result Message"
  }

  dimension: admin__log_name {
    type: string
    sql: ${TABLE}.admin.log_name ;;
    group_label: "Admin"
    group_item_label: "Log Name"
  }

  dimension: admin__managed_configuration_name {
    type: string
    sql: ${TABLE}.admin.managed_configuration_name ;;
    group_label: "Admin"
    group_item_label: "Managed Configuration Name"
  }

  dimension: admin__method_name {
    type: string
    sql: ${TABLE}.admin.method_name ;;
    group_label: "Admin"
    group_item_label: "Method Name"
  }

  dimension: admin__migration_type {
    type: string
    sql: ${TABLE}.admin.migration_type ;;
    group_label: "Admin"
    group_item_label: "Migration Type"
  }

  dimension: admin__mobile_app_package_id {
    type: string
    sql: ${TABLE}.admin.mobile_app_package_id ;;
    group_label: "Admin"
    group_item_label: "Mobile App Package ID"
  }

  dimension: admin__mobile_certificate_common_name {
    type: string
    sql: ${TABLE}.admin.mobile_certificate_common_name ;;
    group_label: "Admin"
    group_item_label: "Mobile Certificate Common Name"
  }

  dimension: admin__mobile_wireless_network_name {
    type: string
    sql: ${TABLE}.admin.mobile_wireless_network_name ;;
    group_label: "Admin"
    group_item_label: "Mobile Wireless Network Name"
  }

  dimension: admin__network_guid {
    type: string
    sql: ${TABLE}.admin.network_guid ;;
    group_label: "Admin"
    group_item_label: "Network Guid"
  }

  dimension: admin__network_name {
    type: string
    sql: ${TABLE}.admin.network_name ;;
    group_label: "Admin"
    group_item_label: "Network Name"
  }

  dimension: admin__network_setting_changes {
    type: string
    sql: ${TABLE}.admin.network_setting_changes ;;
    group_label: "Admin"
    group_item_label: "Network Setting Changes"
  }

  dimension: admin__new_permission_grant_state {
    type: string
    sql: ${TABLE}.admin.new_permission_grant_state ;;
    group_label: "Admin"
    group_item_label: "New Permission Grant State"
  }

  dimension: admin__new_remote_directory_config {
    type: string
    sql: ${TABLE}.admin.new_remote_directory_config ;;
    group_label: "Admin"
    group_item_label: "New Remote Directory Config"
  }

  dimension: admin__new_scim_directory_config {
    type: string
    sql: ${TABLE}.admin.new_scim_directory_config ;;
    group_label: "Admin"
    group_item_label: "New Scim Directory Config"
  }

  dimension: admin__new_sync_job_config {
    type: string
    sql: ${TABLE}.admin.new_sync_job_config ;;
    group_label: "Admin"
    group_item_label: "New Sync Job Config"
  }

  dimension: admin__new_value {
    type: string
    sql: ${TABLE}.admin.new_value ;;
    group_label: "Admin"
    group_item_label: "New Value"
  }

  dimension: admin__number_of_additional_exchange_endpoints {
    type: number
    sql: ${TABLE}.admin.number_of_additional_exchange_endpoints ;;
    group_label: "Admin"
    group_item_label: "Number of Additional Exchange Endpoints"
  }

  dimension: admin__number_of_company_owned_devices {
    type: number
    sql: ${TABLE}.admin.number_of_company_owned_devices ;;
    group_label: "Admin"
    group_item_label: "Number of Company Owned Devices"
  }

  dimension: admin__number_of_users {
    type: string
    sql: ${TABLE}.admin.number_of_users ;;
    group_label: "Admin"
    group_item_label: "Number of Users"
  }

  dimension: admin__oauth2_app_id {
    type: string
    sql: ${TABLE}.admin.oauth2_app_id ;;
    group_label: "Admin"
    group_item_label: "Oauth2 App ID"
  }

  dimension: admin__oauth2_app_name {
    type: string
    sql: ${TABLE}.admin.oauth2_app_name ;;
    group_label: "Admin"
    group_item_label: "Oauth2 App Name"
  }

  dimension: admin__oauth2_app_type {
    type: string
    sql: ${TABLE}.admin.oauth2_app_type ;;
    group_label: "Admin"
    group_item_label: "Oauth2 App Type"
  }

  dimension: admin__oauth2_service_name {
    type: string
    sql: ${TABLE}.admin.oauth2_service_name ;;
    group_label: "Admin"
    group_item_label: "Oauth2 Service Name"
  }

  dimension: admin__obfuscated_customer_takeout_request_id {
    type: string
    sql: ${TABLE}.admin.obfuscated_customer_takeout_request_id ;;
    group_label: "Admin"
    group_item_label: "Obfuscated Customer Takeout Request ID"
  }

  dimension: admin__old_permission_grant_state {
    type: string
    sql: ${TABLE}.admin.old_permission_grant_state ;;
    group_label: "Admin"
    group_item_label: "Old Permission Grant State"
  }

  dimension: admin__old_remote_directory_config {
    type: string
    sql: ${TABLE}.admin.old_remote_directory_config ;;
    group_label: "Admin"
    group_item_label: "Old Remote Directory Config"
  }

  dimension: admin__old_sync_job_config {
    type: string
    sql: ${TABLE}.admin.old_sync_job_config ;;
    group_label: "Admin"
    group_item_label: "Old Sync Job Config"
  }

  dimension: admin__old_value {
    type: string
    sql: ${TABLE}.admin.old_value ;;
    group_label: "Admin"
    group_item_label: "Old Value"
  }

  dimension: admin__operation_first {
    type: yesno
    sql: ${TABLE}.admin.operation_first ;;
    group_label: "Admin"
    group_item_label: "Operation First"
  }

  dimension: admin__operation_id {
    type: string
    sql: ${TABLE}.admin.operation_id ;;
    group_label: "Admin"
    group_item_label: "Operation ID"
  }

  dimension: admin__operation_last {
    type: yesno
    sql: ${TABLE}.admin.operation_last ;;
    group_label: "Admin"
    group_item_label: "Operation Last"
  }

  dimension: admin__operation_producer {
    type: string
    sql: ${TABLE}.admin.operation_producer ;;
    group_label: "Admin"
    group_item_label: "Operation Producer"
  }

  dimension: admin__org_unit_name {
    type: string
    sql: ${TABLE}.admin.org_unit_name ;;
    group_label: "Admin"
    group_item_label: "Org Unit Name"
  }

  dimension: admin__permission_group_name {
    type: string
    sql: ${TABLE}.admin.permission_group_name ;;
    group_label: "Admin"
    group_item_label: "Permission Group Name"
  }

  dimension: admin__play_for_work_mdm_vendor_name {
    type: string
    sql: ${TABLE}.admin.play_for_work_mdm_vendor_name ;;
    group_label: "Admin"
    group_item_label: "Play for Work Mdm Vendor Name"
  }

  dimension: admin__play_for_work_token_id {
    type: string
    sql: ${TABLE}.admin.play_for_work_token_id ;;
    group_label: "Admin"
    group_item_label: "Play for Work Token ID"
  }

  dimension: admin__previous_customer_name {
    type: string
    sql: ${TABLE}.admin.previous_customer_name ;;
    group_label: "Admin"
    group_item_label: "Previous Customer Name"
  }

  dimension: admin__print_server_name {
    type: string
    sql: ${TABLE}.admin.print_server_name ;;
    group_label: "Admin"
    group_item_label: "Print Server Name"
  }

  dimension: admin__printer_name {
    type: string
    sql: ${TABLE}.admin.printer_name ;;
    group_label: "Admin"
    group_item_label: "Printer Name"
  }

  dimension: admin__privilege_name {
    type: string
    sql: ${TABLE}.admin.privilege_name ;;
    group_label: "Admin"
    group_item_label: "Privilege Name"
  }

  dimension: admin__product_name {
    type: string
    sql: ${TABLE}.admin.product_name ;;
    group_label: "Admin"
    group_item_label: "Product Name"
  }

  dimension: admin__quarantine_name {
    type: string
    sql: ${TABLE}.admin.quarantine_name ;;
    group_label: "Admin"
    group_item_label: "Quarantine Name"
  }

  dimension: admin__reauth_application {
    type: string
    sql: ${TABLE}.admin.reauth_application ;;
    group_label: "Admin"
    group_item_label: "Reauth Application"
  }

  dimension: admin__reauth_setting_new {
    type: string
    sql: ${TABLE}.admin.reauth_setting_new ;;
    group_label: "Admin"
    group_item_label: "Reauth Setting New"
  }

  dimension: admin__reauth_setting_old {
    type: string
    sql: ${TABLE}.admin.reauth_setting_old ;;
    group_label: "Admin"
    group_item_label: "Reauth Setting Old"
  }

  dimension: admin__receive_timestamp {
    type: number
    sql: ${TABLE}.admin.receive_timestamp ;;
    group_label: "Admin"
    group_item_label: "Receive Timestamp"
  }

  dimension: admin__related_alert_id {
    type: string
    sql: ${TABLE}.admin.related_alert_id ;;
    group_label: "Admin"
    group_item_label: "Related Alert ID"
  }

  dimension: admin__remote_directory_name {
    type: string
    sql: ${TABLE}.admin.remote_directory_name ;;
    group_label: "Admin"
    group_item_label: "Remote Directory Name"
  }

  dimension: admin__request_id {
    type: string
    sql: ${TABLE}.admin.request_id ;;
    group_label: "Admin"
    group_item_label: "Request ID"
  }

  dimension: admin__resource {
    type: string
    sql: ${TABLE}.admin.resource ;;
    group_label: "Admin"
    group_item_label: "Resource"
  }

  dimension: admin__resource_identifier {
    type: string
    sql: ${TABLE}.admin.resource_identifier ;;
    group_label: "Admin"
    group_item_label: "Resource Identifier"
  }

  dimension: admin__role_condition {
    type: string
    sql: ${TABLE}.admin.role_condition ;;
    group_label: "Admin"
    group_item_label: "Role Condition"
  }

  dimension: admin__role_id {
    type: string
    sql: ${TABLE}.admin.role_id ;;
    group_label: "Admin"
    group_item_label: "Role ID"
  }

  dimension: admin__role_name {
    type: string
    sql: ${TABLE}.admin.role_name ;;
    group_label: "Admin"
    group_item_label: "Role Name"
  }

  dimension: admin__rule_name {
    type: string
    sql: ${TABLE}.admin.rule_name ;;
    group_label: "Admin"
    group_item_label: "Rule Name"
  }

  dimension: admin__saml2_service_provider_attribute_name {
    type: string
    sql: ${TABLE}.admin.saml2_service_provider_attribute_name ;;
    group_label: "Admin"
    group_item_label: "Saml2 Service Provider Attribute Name"
  }

  dimension: admin__saml2_service_provider_entity_id {
    type: string
    sql: ${TABLE}.admin.saml2_service_provider_entity_id ;;
    group_label: "Admin"
    group_item_label: "Saml2 Service Provider Entity ID"
  }

  dimension: admin__saml2_service_provider_name {
    type: string
    sql: ${TABLE}.admin.saml2_service_provider_name ;;
    group_label: "Admin"
    group_item_label: "Saml2 Service Provider Name"
  }

  dimension: admin__scim_directory_name {
    type: string
    sql: ${TABLE}.admin.scim_directory_name ;;
    group_label: "Admin"
    group_item_label: "Scim Directory Name"
  }

  dimension: admin__search_query_for_dump {
    type: string
    sql: ${TABLE}.admin.search_query_for_dump ;;
    group_label: "Admin"
    group_item_label: "Search Query for Dump"
  }

  dimension: admin__secondary_domain_name {
    type: string
    sql: ${TABLE}.admin.secondary_domain_name ;;
    group_label: "Admin"
    group_item_label: "Secondary Domain Name"
  }

  dimension: admin__security_center_rule_action {
    type: string
    sql: ${TABLE}.admin.security_center_rule_action ;;
    group_label: "Admin"
    group_item_label: "Security Center Rule Action"
  }

  dimension: admin__security_center_rule_action_failed {
    type: string
    sql: ${TABLE}.admin.security_center_rule_action_failed ;;
    group_label: "Admin"
    group_item_label: "Security Center Rule Action Failed"
  }

  dimension: admin__security_center_rule_action_num_attempted {
    type: string
    sql: ${TABLE}.admin.security_center_rule_action_num_attempted ;;
    group_label: "Admin"
    group_item_label: "Security Center Rule Action Num Attempted"
  }

  dimension: admin__security_center_rule_action_success {
    type: string
    sql: ${TABLE}.admin.security_center_rule_action_success ;;
    group_label: "Admin"
    group_item_label: "Security Center Rule Action Success"
  }

  dimension: admin__security_center_rule_condition {
    type: string
    sql: ${TABLE}.admin.security_center_rule_condition ;;
    group_label: "Admin"
    group_item_label: "Security Center Rule Condition"
  }

  dimension: admin__security_center_rule_name {
    type: string
    sql: ${TABLE}.admin.security_center_rule_name ;;
    group_label: "Admin"
    group_item_label: "Security Center Rule Name"
  }

  dimension: admin__security_center_rule_threshold {
    type: string
    sql: ${TABLE}.admin.security_center_rule_threshold ;;
    group_label: "Admin"
    group_item_label: "Security Center Rule Threshold"
  }

  dimension: admin__security_center_rule_time_frame {
    type: string
    sql: ${TABLE}.admin.security_center_rule_time_frame ;;
    group_label: "Admin"
    group_item_label: "Security Center Rule Time Frame"
  }

  dimension: admin__security_center_rule_trigger_window {
    type: string
    sql: ${TABLE}.admin.security_center_rule_trigger_window ;;
    group_label: "Admin"
    group_item_label: "Security Center Rule Trigger Window"
  }

  dimension: admin__security_investigation_direct_share_new_value {
    type: string
    sql: ${TABLE}.admin.security_investigation_direct_share_new_value ;;
    group_label: "Admin"
    group_item_label: "Security Investigation Direct Share New Value"
  }

  dimension: admin__security_investigation_direct_share_old_value {
    type: string
    sql: ${TABLE}.admin.security_investigation_direct_share_old_value ;;
    group_label: "Admin"
    group_item_label: "Security Investigation Direct Share Old Value"
  }

  dimension: admin__security_investigation_link_share_new_value {
    type: string
    sql: ${TABLE}.admin.security_investigation_link_share_new_value ;;
    group_label: "Admin"
    group_item_label: "Security Investigation Link Share New Value"
  }

  dimension: admin__security_investigation_link_share_old_value {
    type: string
    sql: ${TABLE}.admin.security_investigation_link_share_old_value ;;
    group_label: "Admin"
    group_item_label: "Security Investigation Link Share Old Value"
  }

  dimension: admin__security_investigation_object_new_owner_email {
    type: string
    sql: ${TABLE}.admin.security_investigation_object_new_owner_email ;;
    group_label: "Admin"
    group_item_label: "Security Investigation Object New Owner Email"
  }

  dimension: admin__security_investigation_object_old_owner_email {
    type: string
    sql: ${TABLE}.admin.security_investigation_object_old_owner_email ;;
    group_label: "Admin"
    group_item_label: "Security Investigation Object Old Owner Email"
  }

  dimension: admin__security_trial_sku {
    type: string
    sql: ${TABLE}.admin.security_trial_sku ;;
    group_label: "Admin"
    group_item_label: "Security Trial SKU"
  }

  dimension: admin__service_account_email {
    type: string
    sql: ${TABLE}.admin.service_account_email ;;
    group_label: "Admin"
    group_item_label: "Service Account Email"
  }

  dimension: admin__service_name {
    type: string
    sql: ${TABLE}.admin.service_name ;;
    group_label: "Admin"
    group_item_label: "Service Name"
  }

  dimension: admin__setting_description {
    type: string
    sql: ${TABLE}.admin.setting_description ;;
    group_label: "Admin"
    group_item_label: "Setting Description"
  }

  dimension: admin__setting_name {
    type: string
    sql: ${TABLE}.admin.setting_name ;;
    group_label: "Admin"
    group_item_label: "Setting Name"
  }

  dimension: admin__severity {
    type: string
    sql: ${TABLE}.admin.severity ;;
    group_label: "Admin"
    group_item_label: "Severity"
  }

  dimension: admin__shared_drive_id {
    type: string
    sql: ${TABLE}.admin.shared_drive_id ;;
    group_label: "Admin"
    group_item_label: "Shared Drive ID"
  }

  dimension: admin__site_location {
    type: string
    sql: ${TABLE}.admin.site_location ;;
    group_label: "Admin"
    group_item_label: "Site Location"
  }

  dimension: admin__site_name {
    type: string
    sql: ${TABLE}.admin.site_name ;;
    group_label: "Admin"
    group_item_label: "Site Name"
  }

  dimension: admin__sku_name {
    type: string
    sql: ${TABLE}.admin.sku_name ;;
    group_label: "Admin"
    group_item_label: "SKU Name"
  }

  dimension: admin__source_directory_display_name {
    type: string
    sql: ${TABLE}.admin.source_directory_display_name ;;
    group_label: "Admin"
    group_item_label: "Source Directory Display Name"
  }

  dimension: admin__start_date {
    type: string
    sql: ${TABLE}.admin.start_date ;;
    group_label: "Admin"
    group_item_label: "Start Date"
  }

  dimension: admin__sync_failed_reason {
    type: string
    sql: ${TABLE}.admin.sync_failed_reason ;;
    group_label: "Admin"
    group_item_label: "Sync Failed Reason"
  }

  dimension: admin__sync_job_name {
    type: string
    sql: ${TABLE}.admin.sync_job_name ;;
    group_label: "Admin"
    group_item_label: "Sync Job Name"
  }

  dimension: admin__system_defined_rule_action_receivers_change {
    type: string
    sql: ${TABLE}.admin.system_defined_rule_action_receivers_change ;;
    group_label: "Admin"
    group_item_label: "System Defined Rule Action Receivers Change"
  }

  dimension: admin__system_defined_rule_action_severity_change {
    type: string
    sql: ${TABLE}.admin.system_defined_rule_action_severity_change ;;
    group_label: "Admin"
    group_item_label: "System Defined Rule Action Severity Change"
  }

  dimension: admin__system_defined_rule_action_status_change {
    type: string
    sql: ${TABLE}.admin.system_defined_rule_action_status_change ;;
    group_label: "Admin"
    group_item_label: "System Defined Rule Action Status Change"
  }

  dimension: admin__system_defined_rule_name {
    type: string
    sql: ${TABLE}.admin.system_defined_rule_name ;;
    group_label: "Admin"
    group_item_label: "System Defined Rule Name"
  }

  dimension: admin__time_to_wait_for_deprov {
    type: string
    sql: ${TABLE}.admin.time_to_wait_for_deprov ;;
    group_label: "Admin"
    group_item_label: "Time to Wait for Deprov"
  }

  dimension: admin__timestamp {
    type: number
    sql: ${TABLE}.admin.timestamp ;;
    group_label: "Admin"
    group_item_label: "Timestamp"
  }

  dimension: admin__user_custom_field {
    type: string
    sql: ${TABLE}.admin.user_custom_field ;;
    group_label: "Admin"
    group_item_label: "User Custom Field"
  }

  dimension: admin__user_defined_setting_name {
    type: string
    sql: ${TABLE}.admin.user_defined_setting_name ;;
    group_label: "Admin"
    group_item_label: "User Defined Setting Name"
  }

  dimension: admin__user_email {
    type: string
    sql: ${TABLE}.admin.user_email ;;
    group_label: "Admin"
    group_item_label: "User Email"
  }

  dimension: admin__user_nickname {
    type: string
    sql: ${TABLE}.admin.user_nickname ;;
    group_label: "Admin"
    group_item_label: "User Nickname"
  }

  dimension: admin__web_address {
    type: string
    sql: ${TABLE}.admin.web_address ;;
    group_label: "Admin"
    group_item_label: "Web Address"
  }

  dimension: admin__web_origin {
    type: string
    sql: ${TABLE}.admin.web_origin ;;
    group_label: "Admin"
    group_item_label: "Web Origin"
  }

  # this is an unnested record and used as a view
  dimension: admin__whitelisted_groups {
    hidden: yes
    sql: ${TABLE}.admin.whitelisted_groups ;;
    group_label: "Admin"
    group_item_label: "Whitelisted Groups"
  }

  dimension: calendar__access_level {
    type: string
    sql: ${TABLE}.calendar.access_level ;;
    group_label: "Calendar"
    group_item_label: "Access Level"
  }

  dimension: calendar__api_kind {
    type: string
    sql: ${TABLE}.calendar.api_kind ;;
    group_label: "Calendar"
    group_item_label: "API Kind"
  }

  dimension: calendar__calendar_country {
    type: string
    sql: ${TABLE}.calendar.calendar_country ;;
    group_label: "Calendar"
    group_item_label: "Calendar Country"
  }

  dimension: calendar__calendar_description {
    type: string
    sql: ${TABLE}.calendar.calendar_description ;;
    group_label: "Calendar"
    group_item_label: "Calendar Description"
  }

  dimension: calendar__calendar_id {
    type: string
    sql: ${TABLE}.calendar.calendar_id ;;
    group_label: "Calendar"
    group_item_label: "Calendar ID"
  }

  dimension: calendar__calendar_location {
    type: string
    sql: ${TABLE}.calendar.calendar_location ;;
    group_label: "Calendar"
    group_item_label: "Calendar Location"
  }

  dimension: calendar__calendar_timezone {
    type: string
    sql: ${TABLE}.calendar.calendar_timezone ;;
    group_label: "Calendar"
    group_item_label: "Calendar Timezone"
  }

  dimension: calendar__calendar_title {
    type: string
    sql: ${TABLE}.calendar.calendar_title ;;
    group_label: "Calendar"
    group_item_label: "Calendar Title"
  }

  dimension: calendar__end_time {
    type: number
    sql: ${TABLE}.calendar.end_time ;;
    group_label: "Calendar"
    group_item_label: "End Time"
  }

  dimension: calendar__event_guest {
    type: string
    sql: ${TABLE}.calendar.event_guest ;;
    group_label: "Calendar"
    group_item_label: "Event Guest"
  }

  dimension: calendar__event_id {
    type: string
    sql: ${TABLE}.calendar.event_id ;;
    group_label: "Calendar"
    group_item_label: "Event ID"
  }

  dimension: calendar__event_response_status {
    type: string
    sql: ${TABLE}.calendar.event_response_status ;;
    group_label: "Calendar"
    group_item_label: "Event Response Status"
  }

  dimension: calendar__event_title {
    type: string
    sql: ${TABLE}.calendar.event_title ;;
    group_label: "Calendar"
    group_item_label: "Event Title"
  }

  dimension: calendar__grantee_email {
    type: string
    sql: ${TABLE}.calendar.grantee_email ;;
    group_label: "Calendar"
    group_item_label: "Grantee Email"
  }

  dimension: calendar__interop_error_code {
    type: string
    sql: ${TABLE}.calendar.interop_error_code ;;
    group_label: "Calendar"
    group_item_label: "Interop Error Code"
  }

  dimension: calendar__notification_message_id {
    type: string
    sql: ${TABLE}.calendar.notification_message_id ;;
    group_label: "Calendar"
    group_item_label: "Notification Message ID"
  }

  dimension: calendar__notification_method {
    type: string
    sql: ${TABLE}.calendar.notification_method ;;
    group_label: "Calendar"
    group_item_label: "Notification Method"
  }

  dimension: calendar__notification_type {
    type: string
    sql: ${TABLE}.calendar.notification_type ;;
    group_label: "Calendar"
    group_item_label: "Notification Type"
  }

  dimension: calendar__old_event_title {
    type: string
    sql: ${TABLE}.calendar.old_event_title ;;
    group_label: "Calendar"
    group_item_label: "Old Event Title"
  }

  dimension: calendar__organizer_calendar_id {
    type: string
    sql: ${TABLE}.calendar.organizer_calendar_id ;;
    group_label: "Calendar"
    group_item_label: "Organizer Calendar ID"
  }

  dimension: calendar__recipient_email {
    type: string
    sql: ${TABLE}.calendar.recipient_email ;;
    group_label: "Calendar"
    group_item_label: "Recipient Email"
  }

  dimension: calendar__remote_ews_url {
    type: string
    sql: ${TABLE}.calendar.remote_ews_url ;;
    group_label: "Calendar"
    group_item_label: "Remote Ews URL"
  }

  dimension: calendar__requested_period_end {
    type: number
    sql: ${TABLE}.calendar.requested_period_end ;;
    group_label: "Calendar"
    group_item_label: "Requested Period End"
  }

  dimension: calendar__requested_period_start {
    type: number
    sql: ${TABLE}.calendar.requested_period_start ;;
    group_label: "Calendar"
    group_item_label: "Requested Period Start"
  }

  dimension: calendar__start_time {
    type: number
    sql: ${TABLE}.calendar.start_time ;;
    group_label: "Calendar"
    group_item_label: "Start Time"
  }

  dimension: calendar__subscriber_calendar_id {
    type: string
    sql: ${TABLE}.calendar.subscriber_calendar_id ;;
    group_label: "Calendar"
    group_item_label: "Subscriber Calendar ID"
  }

  dimension: calendar__time_proposal_change {
    type: yesno
    sql: ${TABLE}.calendar.time_proposal_change ;;
    group_label: "Calendar"
    group_item_label: "Time Proposal Change"
  }

  dimension: calendar__user_agent {
    type: string
    sql: ${TABLE}.calendar.user_agent ;;
    group_label: "Calendar"
    group_item_label: "User Agent"
  }

  dimension: chat__actor {
    type: string
    sql: ${TABLE}.chat.actor ;;
    group_label: "Chat"
    group_item_label: "Actor"
  }

  dimension: chat__attachment_hash {
    type: string
    sql: ${TABLE}.chat.attachment_hash ;;
    group_label: "Chat"
    group_item_label: "Attachment Hash"
  }

  dimension: chat__attachment_name {
    type: string
    sql: ${TABLE}.chat.attachment_name ;;
    group_label: "Chat"
    group_item_label: "Attachment Name"
  }

  dimension: chat__attachment_url {
    type: string
    sql: ${TABLE}.chat.attachment_url ;;
    group_label: "Chat"
    group_item_label: "Attachment URL"
  }

  dimension: chat__dlp_scan_status {
    type: string
    sql: ${TABLE}.chat.dlp_scan_status ;;
    group_label: "Chat"
    group_item_label: "Dlp Scan Status"
  }

  dimension: chat__dm_id {
    type: string
    sql: ${TABLE}.chat.dm_id ;;
    group_label: "Chat"
    group_item_label: "Dm ID"
  }

  dimension: chat__emoji_shortcode {
    type: string
    sql: ${TABLE}.chat.emoji_shortcode ;;
    group_label: "Chat"
    group_item_label: "Emoji Shortcode"
  }

  dimension: chat__external_room {
    type: string
    sql: ${TABLE}.chat.external_room ;;
    group_label: "Chat"
    group_item_label: "External Room"
  }

  dimension: chat__filename {
    type: string
    sql: ${TABLE}.chat.filename ;;
    group_label: "Chat"
    group_item_label: "Filename"
  }

  dimension: chat__message_id {
    type: string
    sql: ${TABLE}.chat.message_id ;;
    group_label: "Chat"
    group_item_label: "Message ID"
  }

  dimension: chat__report_type {
    type: string
    sql: ${TABLE}.chat.report_type ;;
    group_label: "Chat"
    group_item_label: "Report Type"
  }

  dimension: chat__retention_state {
    type: string
    sql: ${TABLE}.chat.retention_state ;;
    group_label: "Chat"
    group_item_label: "Retention State"
  }

  dimension: chat__room_id {
    type: string
    sql: ${TABLE}.chat.room_id ;;
    group_label: "Chat"
    group_item_label: "Room ID"
  }

  dimension: chat__room_name {
    type: string
    sql: ${TABLE}.chat.room_name ;;
    group_label: "Chat"
    group_item_label: "Room Name"
  }

  # this is an unnested record and used as a view
  dimension: chat__target_users {
    hidden: yes
    sql: ${TABLE}.chat.target_users ;;
    group_label: "Chat"
    group_item_label: "Target Users"
  }

  # this is an unnested record and used as a view
  dimension: chrome__access_level {
    hidden: yes
    sql: ${TABLE}.chrome.access_level ;;
    group_label: "Chrome"
    group_item_label: "Access Level"
  }

  dimension: chrome__app_id {
    type: string
    sql: ${TABLE}.chrome.app_id ;;
    group_label: "Chrome"
    group_item_label: "App ID"
  }

  dimension: chrome__app_name {
    type: string
    sql: ${TABLE}.chrome.app_name ;;
    group_label: "Chrome"
    group_item_label: "App Name"
  }

  dimension: chrome__browser_version {
    type: string
    sql: ${TABLE}.chrome.browser_version ;;
    group_label: "Chrome"
    group_item_label: "Browser Version"
  }

  dimension: chrome__channel {
    type: string
    sql: ${TABLE}.chrome.channel ;;
    group_label: "Chrome"
    group_item_label: "Channel"
  }

  dimension: chrome__chrome_extension_requester {
    type: string
    sql: ${TABLE}.chrome.chrome_extension_requester ;;
    group_label: "Chrome"
    group_item_label: "Chrome Extension Requester"
  }

  dimension: chrome__chrome_org_unit_id {
    type: string
    sql: ${TABLE}.chrome.chrome_org_unit_id ;;
    group_label: "Chrome"
    group_item_label: "Chrome Org Unit ID"
  }

  dimension: chrome__client_type {
    type: string
    sql: ${TABLE}.chrome.client_type ;;
    group_label: "Chrome"
    group_item_label: "Client Type"
  }

  dimension: chrome__connection_type {
    type: string
    sql: ${TABLE}.chrome.connection_type ;;
    group_label: "Chrome"
    group_item_label: "Connection Type"
  }

  dimension: chrome__content_hash {
    type: string
    sql: ${TABLE}.chrome.content_hash ;;
    group_label: "Chrome"
    group_item_label: "Content Hash"
  }

  dimension: chrome__content_name {
    type: string
    sql: ${TABLE}.chrome.content_name ;;
    group_label: "Chrome"
    group_item_label: "Content Name"
  }

  dimension: chrome__content_size {
    type: number
    sql: ${TABLE}.chrome.content_size ;;
    group_label: "Chrome"
    group_item_label: "Content Size"
  }

  dimension: chrome__content_type {
    type: string
    sql: ${TABLE}.chrome.content_type ;;
    group_label: "Chrome"
    group_item_label: "Content Type"
  }

  dimension: chrome__crd_connection_type {
    type: string
    sql: ${TABLE}.chrome.crd_connection_type ;;
    group_label: "Chrome"
    group_item_label: "Crd Connection Type"
  }

  dimension: chrome__device_id {
    type: string
    sql: ${TABLE}.chrome.device_id ;;
    group_label: "Chrome"
    group_item_label: "Device ID"
  }

  dimension: chrome__device_name {
    type: string
    sql: ${TABLE}.chrome.device_name ;;
    group_label: "Chrome"
    group_item_label: "Device Name"
  }

  dimension: chrome__device_platform {
    type: string
    sql: ${TABLE}.chrome.device_platform ;;
    group_label: "Chrome"
    group_item_label: "Device Platform"
  }

  dimension: chrome__device_user {
    type: string
    sql: ${TABLE}.chrome.device_user ;;
    group_label: "Chrome"
    group_item_label: "Device User"
  }

  dimension: chrome__directory_device_id {
    type: string
    sql: ${TABLE}.chrome.directory_device_id ;;
    group_label: "Chrome"
    group_item_label: "Directory Device ID"
  }

  dimension: chrome__event_reason {
    type: string
    sql: ${TABLE}.chrome.event_reason ;;
    group_label: "Chrome"
    group_item_label: "Event Reason"
  }

  dimension: chrome__event_result {
    type: string
    sql: ${TABLE}.chrome.event_result ;;
    group_label: "Chrome"
    group_item_label: "Event Result"
  }

  dimension: chrome__evidence_locker_filepath {
    type: string
    sql: ${TABLE}.chrome.evidence_locker_filepath ;;
    group_label: "Chrome"
    group_item_label: "Evidence Locker Filepath"
  }

  dimension: chrome__federated_origin {
    type: string
    sql: ${TABLE}.chrome.federated_origin ;;
    group_label: "Chrome"
    group_item_label: "Federated Origin"
  }

  dimension: chrome__is_federated {
    type: yesno
    sql: ${TABLE}.chrome.is_federated ;;
    group_label: "Chrome"
    group_item_label: "Is Federated (Yes / No)"
  }

  dimension: chrome__login_failure_reason {
    type: string
    sql: ${TABLE}.chrome.login_failure_reason ;;
    group_label: "Chrome"
    group_item_label: "Login Failure Reason"
  }

  dimension: chrome__login_user_name {
    type: string
    sql: ${TABLE}.chrome.login_user_name ;;
    group_label: "Chrome"
    group_item_label: "Login User Name"
  }

  dimension: chrome__new_boot_mode {
    type: string
    sql: ${TABLE}.chrome.new_boot_mode ;;
    group_label: "Chrome"
    group_item_label: "New Boot Mode"
  }

  dimension: chrome__org_unit_name {
    type: string
    sql: ${TABLE}.chrome.org_unit_name ;;
    group_label: "Chrome"
    group_item_label: "Org Unit Name"
  }

  dimension: chrome__previous_boot_mode {
    type: string
    sql: ${TABLE}.chrome.previous_boot_mode ;;
    group_label: "Chrome"
    group_item_label: "Previous Boot Mode"
  }

  dimension: chrome__product_id {
    type: string
    sql: ${TABLE}.chrome.product_id ;;
    group_label: "Chrome"
    group_item_label: "Product ID"
  }

  dimension: chrome__product_name {
    type: string
    sql: ${TABLE}.chrome.product_name ;;
    group_label: "Chrome"
    group_item_label: "Product Name"
  }

  dimension: chrome__profile_user_name {
    type: string
    sql: ${TABLE}.chrome.profile_user_name ;;
    group_label: "Chrome"
    group_item_label: "Profile User Name"
  }

  dimension: chrome__remove_user_reason {
    type: string
    sql: ${TABLE}.chrome.remove_user_reason ;;
    group_label: "Chrome"
    group_item_label: "Remove User Reason"
  }

  dimension: chrome__report_id {
    type: string
    sql: ${TABLE}.chrome.report_id ;;
    group_label: "Chrome"
    group_item_label: "Report ID"
  }

  dimension: chrome__scan_id {
    type: string
    sql: ${TABLE}.chrome.scan_id ;;
    group_label: "Chrome"
    group_item_label: "Scan ID"
  }

  dimension: chrome__session_id {
    type: string
    sql: ${TABLE}.chrome.session_id ;;
    group_label: "Chrome"
    group_item_label: "Session ID"
  }

  dimension: chrome__timestamp {
    type: number
    sql: ${TABLE}.chrome.timestamp ;;
    group_label: "Chrome"
    group_item_label: "Timestamp"
  }

  dimension: chrome__trigger_destination {
    type: string
    sql: ${TABLE}.chrome.trigger_destination ;;
    group_label: "Chrome"
    group_item_label: "Trigger Destination"
  }

  dimension: chrome__trigger_source {
    type: string
    sql: ${TABLE}.chrome.trigger_source ;;
    group_label: "Chrome"
    group_item_label: "Trigger Source"
  }

  dimension: chrome__trigger_type {
    type: string
    sql: ${TABLE}.chrome.trigger_type ;;
    group_label: "Chrome"
    group_item_label: "Trigger Type"
  }

  dimension: chrome__trigger_user {
    type: string
    sql: ${TABLE}.chrome.trigger_user ;;
    group_label: "Chrome"
    group_item_label: "Trigger User"
  }

  # this is an unnested record and used as a view
  dimension: chrome__triggered_rules_reason {
    hidden: yes
    sql: ${TABLE}.chrome.triggered_rules_reason ;;
    group_label: "Chrome"
    group_item_label: "Triggered Rules Reason"
  }

  dimension: chrome__url {
    type: string
    sql: ${TABLE}.chrome.url ;;
    group_label: "Chrome"
    group_item_label: "URL"
  }

  dimension: chrome__url_category {
    type: string
    sql: ${TABLE}.chrome.url_category ;;
    group_label: "Chrome"
    group_item_label: "URL Category"
  }

  dimension: chrome__user_agent {
    type: string
    sql: ${TABLE}.chrome.user_agent ;;
    group_label: "Chrome"
    group_item_label: "User Agent"
  }

  dimension: chrome__user_justification {
    type: string
    sql: ${TABLE}.chrome.user_justification ;;
    group_label: "Chrome"
    group_item_label: "User Justification"
  }

  dimension: chrome__vendor_id {
    type: string
    sql: ${TABLE}.chrome.vendor_id ;;
    group_label: "Chrome"
    group_item_label: "Vendor ID"
  }

  dimension: chrome__vendor_name {
    type: string
    sql: ${TABLE}.chrome.vendor_name ;;
    group_label: "Chrome"
    group_item_label: "Vendor Name"
  }

  dimension: chrome__virtual_device_id {
    type: string
    sql: ${TABLE}.chrome.virtual_device_id ;;
    group_label: "Chrome"
    group_item_label: "Virtual Device ID"
  }

  dimension: classroom__add_on_actor {
    type: string
    sql: ${TABLE}.classroom.add_on_actor ;;
    group_label: "Classroom"
    group_item_label: "Add on Actor"
  }

  dimension: classroom__add_on_attachment_id {
    type: string
    sql: ${TABLE}.classroom.add_on_attachment_id ;;
    group_label: "Classroom"
    group_item_label: "Add on Attachment ID"
  }

  dimension: classroom__add_on_attachment_title {
    type: string
    sql: ${TABLE}.classroom.add_on_attachment_title ;;
    group_label: "Classroom"
    group_item_label: "Add on Attachment Title"
  }

  dimension: classroom__add_on_id {
    type: string
    sql: ${TABLE}.classroom.add_on_id ;;
    group_label: "Classroom"
    group_item_label: "Add on ID"
  }

  dimension: classroom__add_on_title {
    type: string
    sql: ${TABLE}.classroom.add_on_title ;;
    group_label: "Classroom"
    group_item_label: "Add on Title"
  }

  # this is an unnested record and used as a view
  dimension: classroom__attachment_types {
    hidden: yes
    sql: ${TABLE}.classroom.attachment_types ;;
    group_label: "Classroom"
    group_item_label: "Attachment Types"
  }

  dimension: classroom__course_id {
    type: string
    sql: ${TABLE}.classroom.course_id ;;
    group_label: "Classroom"
    group_item_label: "Course ID"
  }

  dimension: classroom__course_join_method {
    type: string
    sql: ${TABLE}.classroom.course_join_method ;;
    group_label: "Classroom"
    group_item_label: "Course Join Method"
  }

  dimension: classroom__course_role {
    type: string
    sql: ${TABLE}.classroom.course_role ;;
    group_label: "Classroom"
    group_item_label: "Course Role"
  }

  dimension: classroom__course_title {
    type: string
    sql: ${TABLE}.classroom.course_title ;;
    group_label: "Classroom"
    group_item_label: "Course Title"
  }

  dimension: classroom__course_work_title {
    type: string
    sql: ${TABLE}.classroom.course_work_title ;;
    group_label: "Classroom"
    group_item_label: "Course Work Title"
  }

  dimension: classroom__course_work_type {
    type: string
    sql: ${TABLE}.classroom.course_work_type ;;
    group_label: "Classroom"
    group_item_label: "Course Work Type"
  }

  dimension: classroom__document_id {
    type: string
    sql: ${TABLE}.classroom.document_id ;;
    group_label: "Classroom"
    group_item_label: "Document ID"
  }

  dimension: classroom__draft_grade {
    type: string
    sql: ${TABLE}.classroom.draft_grade ;;
    group_label: "Classroom"
    group_item_label: "Draft Grade"
  }

  dimension: classroom__due_date {
    type: string
    sql: ${TABLE}.classroom.due_date ;;
    group_label: "Classroom"
    group_item_label: "Due Date"
  }

  dimension: classroom__event_source {
    type: string
    sql: ${TABLE}.classroom.event_source ;;
    group_label: "Classroom"
    group_item_label: "Event Source"
  }

  dimension: classroom__grade {
    type: string
    sql: ${TABLE}.classroom.grade ;;
    group_label: "Classroom"
    group_item_label: "Grade"
  }

  dimension: classroom__grade_denominator {
    type: string
    sql: ${TABLE}.classroom.grade_denominator ;;
    group_label: "Classroom"
    group_item_label: "Grade Denominator"
  }

  # this is an unnested record and used as a view
  dimension: classroom__guardians {
    hidden: yes
    sql: ${TABLE}.classroom.guardians ;;
    group_label: "Classroom"
    group_item_label: "Guardians"
  }

  dimension: classroom__has_grade {
    type: yesno
    sql: ${TABLE}.classroom.has_grade ;;
    group_label: "Classroom"
    group_item_label: "Has Grade"
  }

  # this is an unnested record and used as a view
  dimension: classroom__impacted_users {
    hidden: yes
    sql: ${TABLE}.classroom.impacted_users ;;
    group_label: "Classroom"
    group_item_label: "Impacted Users"
  }

  dimension: classroom__invite_status {
    type: string
    sql: ${TABLE}.classroom.invite_status ;;
    group_label: "Classroom"
    group_item_label: "Invite Status"
  }

  # this is an unnested record and used as a view
  dimension: classroom__invited_emails {
    hidden: yes
    sql: ${TABLE}.classroom.invited_emails ;;
    group_label: "Classroom"
    group_item_label: "Invited Emails"
  }

  dimension: classroom__is_late {
    type: yesno
    sql: ${TABLE}.classroom.is_late ;;
    group_label: "Classroom"
    group_item_label: "Is Late (Yes / No)"
  }

  dimension: classroom__post_id {
    type: string
    sql: ${TABLE}.classroom.post_id ;;
    group_label: "Classroom"
    group_item_label: "Post ID"
  }

  dimension: classroom__previous_course_owner {
    type: string
    sql: ${TABLE}.classroom.previous_course_owner ;;
    group_label: "Classroom"
    group_item_label: "Previous Course Owner"
  }

  dimension: classroom__previous_email {
    type: string
    sql: ${TABLE}.classroom.previous_email ;;
    group_label: "Classroom"
    group_item_label: "Previous Email"
  }

  dimension: classroom__submission_id {
    type: string
    sql: ${TABLE}.classroom.submission_id ;;
    group_label: "Classroom"
    group_item_label: "Submission ID"
  }

  dimension: classroom__submission_state {
    type: string
    sql: ${TABLE}.classroom.submission_state ;;
    group_label: "Classroom"
    group_item_label: "Submission State"
  }

  dimension: classroom__summaries_status {
    type: string
    sql: ${TABLE}.classroom.summaries_status ;;
    group_label: "Classroom"
    group_item_label: "Summaries Status"
  }

  dimension: classroom__user_previously_student {
    type: yesno
    sql: ${TABLE}.classroom.user_previously_student ;;
    group_label: "Classroom"
    group_item_label: "User Previously Student"
  }

  dimension: data_studio__asset_id {
    type: string
    sql: ${TABLE}.data_studio.asset_id ;;
    group_label: "Data Studio"
    group_item_label: "Asset ID"
  }

  dimension: data_studio__asset_name {
    type: string
    sql: ${TABLE}.data_studio.asset_name ;;
    group_label: "Data Studio"
    group_item_label: "Asset Name"
  }

  dimension: data_studio__asset_type {
    type: string
    sql: ${TABLE}.data_studio.asset_type ;;
    group_label: "Data Studio"
    group_item_label: "Asset Type"
  }

  dimension: data_studio__connector_type {
    type: string
    sql: ${TABLE}.data_studio.connector_type ;;
    group_label: "Data Studio"
    group_item_label: "Connector Type"
  }

  dimension: data_studio__data_export_type {
    type: string
    sql: ${TABLE}.data_studio.data_export_type ;;
    group_label: "Data Studio"
    group_item_label: "Data Export Type"
  }

  dimension: data_studio__embedded_in_report_id {
    type: string
    sql: ${TABLE}.data_studio.embedded_in_report_id ;;
    group_label: "Data Studio"
    group_item_label: "Embedded In Report ID"
  }

  dimension: data_studio__new_value {
    type: string
    sql: ${TABLE}.data_studio.new_value ;;
    group_label: "Data Studio"
    group_item_label: "New Value"
  }

  dimension: data_studio__old_value {
    type: string
    sql: ${TABLE}.data_studio.old_value ;;
    group_label: "Data Studio"
    group_item_label: "Old Value"
  }

  dimension: data_studio__owner_email {
    type: string
    sql: ${TABLE}.data_studio.owner_email ;;
    group_label: "Data Studio"
    group_item_label: "Owner Email"
  }

  dimension: data_studio__prior_visibility {
    type: string
    sql: ${TABLE}.data_studio.prior_visibility ;;
    group_label: "Data Studio"
    group_item_label: "Prior Visibility"
  }

  dimension: data_studio__target_domain {
    type: string
    sql: ${TABLE}.data_studio.target_domain ;;
    group_label: "Data Studio"
    group_item_label: "Target Domain"
  }

  dimension: data_studio__target_user_email {
    type: string
    sql: ${TABLE}.data_studio.target_user_email ;;
    group_label: "Data Studio"
    group_item_label: "Target User Email"
  }

  dimension: data_studio__visibility {
    type: string
    sql: ${TABLE}.data_studio.visibility ;;
    group_label: "Data Studio"
    group_item_label: "Visibility"
  }

  dimension: domain_name {
    type: string
    sql: ${TABLE}.domain_name ;;
  }

  dimension: drive__actor_is_collaborator_account {
    type: yesno
    sql: ${TABLE}.drive.actor_is_collaborator_account ;;
    group_label: "Drive"
    group_item_label: "Actor Is Collaborator Account"
  }

  # this is an unnested record and used as a view
  dimension: drive__added_role {
    hidden: yes
    sql: ${TABLE}.drive.added_role ;;
    group_label: "Drive"
    group_item_label: "Added Role"
  }

  dimension: drive__attribute_id {
    type: string
    sql: ${TABLE}.drive.attribute_id ;;
    group_label: "Drive"
    group_item_label: "Attribute ID"
  }

  dimension: drive__billable {
    type: yesno
    sql: ${TABLE}.drive.billable ;;
    group_label: "Drive"
    group_item_label: "Billable"
  }

  dimension: drive__category_name {
    type: string
    sql: ${TABLE}.drive.category_name ;;
    group_label: "Drive"
    group_item_label: "Category Name"
  }

  dimension: drive__copy_type {
    type: string
    sql: ${TABLE}.drive.copy_type ;;
    group_label: "Drive"
    group_item_label: "Copy Type"
  }

  dimension: drive__data_connection_id {
    type: string
    sql: ${TABLE}.drive.data_connection_id ;;
    group_label: "Drive"
    group_item_label: "Data Connection ID"
  }

  dimension: drive__delegating_principal {
    type: string
    sql: ${TABLE}.drive.delegating_principal ;;
    group_label: "Drive"
    group_item_label: "Delegating Principal"
  }

  # this is an unnested record and used as a view
  dimension: drive__destination_folder_id {
    hidden: yes
    sql: ${TABLE}.drive.destination_folder_id ;;
    group_label: "Drive"
    group_item_label: "Destination Folder ID"
  }

  # this is an unnested record and used as a view
  dimension: drive__destination_folder_title {
    hidden: yes
    sql: ${TABLE}.drive.destination_folder_title ;;
    group_label: "Drive"
    group_item_label: "Destination Folder Title"
  }

  dimension: drive__dlp_info {
    type: string
    sql: ${TABLE}.drive.dlp_info ;;
    group_label: "Drive"
    group_item_label: "Dlp Info"
  }

  dimension: drive__doc_id {
    type: string
    sql: ${TABLE}.drive.doc_id ;;
    group_label: "Drive"
    group_item_label: "Doc ID"
  }

  dimension: drive__doc_title {
    type: string
    sql: ${TABLE}.drive.doc_title ;;
    group_label: "Drive"
    group_item_label: "Doc Title"
  }

  dimension: drive__doc_type {
    type: string
    sql: ${TABLE}.drive.doc_type ;;
    group_label: "Drive"
    group_item_label: "Doc Type"
  }

  # this is an unnested record and used as a view
  dimension: drive__execution_id {
    hidden: yes
    sql: ${TABLE}.drive.execution_id ;;
    group_label: "Drive"
    group_item_label: "Execution ID"
  }

  dimension: drive__execution_trigger {
    type: string
    sql: ${TABLE}.drive.execution_trigger ;;
    group_label: "Drive"
    group_item_label: "Execution Trigger"
  }

  dimension: drive__field {
    type: string
    sql: ${TABLE}.drive.field ;;
    group_label: "Drive"
    group_item_label: "Field"
  }

  dimension: drive__field_id {
    type: string
    sql: ${TABLE}.drive.field_id ;;
    group_label: "Drive"
    group_item_label: "Field ID"
  }

  dimension: drive__is_encrypted {
    type: yesno
    sql: ${TABLE}.drive.is_encrypted ;;
    group_label: "Drive"
    group_item_label: "Is Encrypted (Yes / No)"
  }

  dimension: drive__label {
    type: string
    sql: ${TABLE}.drive.label ;;
    group_label: "Drive"
    group_item_label: "Label"
  }

  dimension: drive__label_title {
    type: string
    sql: ${TABLE}.drive.label_title ;;
    group_label: "Drive"
    group_item_label: "Label Title"
  }

  dimension: drive__membership_change_type {
    type: string
    sql: ${TABLE}.drive.membership_change_type ;;
    group_label: "Drive"
    group_item_label: "Membership Change Type"
  }

  # this is an unnested record and used as a view
  dimension: drive__new_attribute_value {
    hidden: yes
    sql: ${TABLE}.drive.new_attribute_value ;;
    group_label: "Drive"
    group_item_label: "New Attribute Value"
  }

  # this is an unnested record and used as a view
  dimension: drive__new_field_value {
    hidden: yes
    sql: ${TABLE}.drive.new_field_value ;;
    group_label: "Drive"
    group_item_label: "New Field Value"
  }

  dimension: drive__new_publish_visibility {
    type: string
    sql: ${TABLE}.drive.new_publish_visibility ;;
    group_label: "Drive"
    group_item_label: "New Publish Visibility"
  }

  dimension: drive__new_settings_state {
    type: string
    sql: ${TABLE}.drive.new_settings_state ;;
    group_label: "Drive"
    group_item_label: "New Settings State"
  }

  # this is an unnested record and used as a view
  dimension: drive__new_value {
    hidden: yes
    sql: ${TABLE}.drive.new_value ;;
    group_label: "Drive"
    group_item_label: "New Value"
  }

  # this is an unnested record and used as a view
  dimension: drive__new_value_id {
    hidden: yes
    sql: ${TABLE}.drive.new_value_id ;;
    group_label: "Drive"
    group_item_label: "New Value ID"
  }

  # this is an unnested record and used as a view
  dimension: drive__old_attribute_value {
    hidden: yes
    sql: ${TABLE}.drive.old_attribute_value ;;
    group_label: "Drive"
    group_item_label: "Old Attribute Value"
  }

  # this is an unnested record and used as a view
  dimension: drive__old_field_value {
    hidden: yes
    sql: ${TABLE}.drive.old_field_value ;;
    group_label: "Drive"
    group_item_label: "Old Field Value"
  }

  dimension: drive__old_publish_visibility {
    type: string
    sql: ${TABLE}.drive.old_publish_visibility ;;
    group_label: "Drive"
    group_item_label: "Old Publish Visibility"
  }

  dimension: drive__old_settings_state {
    type: string
    sql: ${TABLE}.drive.old_settings_state ;;
    group_label: "Drive"
    group_item_label: "Old Settings State"
  }

  # this is an unnested record and used as a view
  dimension: drive__old_value {
    hidden: yes
    sql: ${TABLE}.drive.old_value ;;
    group_label: "Drive"
    group_item_label: "Old Value"
  }

  # this is an unnested record and used as a view
  dimension: drive__old_value_id {
    hidden: yes
    sql: ${TABLE}.drive.old_value_id ;;
    group_label: "Drive"
    group_item_label: "Old Value ID"
  }

  dimension: drive__old_visibility {
    type: string
    sql: ${TABLE}.drive.old_visibility ;;
    group_label: "Drive"
    group_item_label: "Old Visibility"
  }

  dimension: drive__originating_app_id {
    type: string
    sql: ${TABLE}.drive.originating_app_id ;;
    group_label: "Drive"
    group_item_label: "Originating App ID"
  }

  dimension: drive__owner {
    type: string
    sql: ${TABLE}.drive.owner ;;
    group_label: "Drive"
    group_item_label: "Owner"
  }

  dimension: drive__owner_is_shared_drive {
    type: yesno
    sql: ${TABLE}.drive.owner_is_shared_drive ;;
    group_label: "Drive"
    group_item_label: "Owner Is Shared Drive"
  }

  dimension: drive__owner_is_team_drive {
    type: yesno
    sql: ${TABLE}.drive.owner_is_team_drive ;;
    group_label: "Drive"
    group_item_label: "Owner Is Team Drive"
  }

  dimension: drive__primary_event {
    type: yesno
    sql: ${TABLE}.drive.primary_event ;;
    group_label: "Drive"
    group_item_label: "Primary Event"
  }

  dimension: drive__query_type {
    type: string
    sql: ${TABLE}.drive.query_type ;;
    group_label: "Drive"
    group_item_label: "Query Type"
  }

  dimension: drive__reason {
    type: string
    sql: ${TABLE}.drive.reason ;;
    group_label: "Drive"
    group_item_label: "Reason"
  }

  # this is an unnested record and used as a view
  dimension: drive__removed_role {
    hidden: yes
    sql: ${TABLE}.drive.removed_role ;;
    group_label: "Drive"
    group_item_label: "Removed Role"
  }

  dimension: drive__shared_drive_id {
    type: string
    sql: ${TABLE}.drive.shared_drive_id ;;
    group_label: "Drive"
    group_item_label: "Shared Drive ID"
  }

  dimension: drive__shared_drive_settings_change_type {
    type: string
    sql: ${TABLE}.drive.shared_drive_settings_change_type ;;
    group_label: "Drive"
    group_item_label: "Shared Drive Settings Change Type"
  }

  dimension: drive__sheets_import_range_recipient_doc {
    type: string
    sql: ${TABLE}.drive.sheets_import_range_recipient_doc ;;
    group_label: "Drive"
    group_item_label: "Sheets Import Range Recipient Doc"
  }

  # this is an unnested record and used as a view
  dimension: drive__source_folder_id {
    hidden: yes
    sql: ${TABLE}.drive.source_folder_id ;;
    group_label: "Drive"
    group_item_label: "Source Folder ID"
  }

  # this is an unnested record and used as a view
  dimension: drive__source_folder_title {
    hidden: yes
    sql: ${TABLE}.drive.source_folder_title ;;
    group_label: "Drive"
    group_item_label: "Source Folder Title"
  }

  dimension: drive__storage_entity_id {
    type: number
    sql: ${TABLE}.drive.storage_entity_id ;;
    group_label: "Drive"
    group_item_label: "Storage Entity ID"
  }

  dimension: drive__storage_usage_in_bytes {
    type: number
    sql: ${TABLE}.drive.storage_usage_in_bytes ;;
    group_label: "Drive"
    group_item_label: "Storage Usage In Bytes"
  }

  dimension: drive__target {
    type: string
    sql: ${TABLE}.drive.target ;;
    group_label: "Drive"
    group_item_label: "Target"
  }

  dimension: drive__target_domain {
    type: string
    sql: ${TABLE}.drive.target_domain ;;
    group_label: "Drive"
    group_item_label: "Target Domain"
  }

  dimension: drive__target_user {
    type: string
    sql: ${TABLE}.drive.target_user ;;
    group_label: "Drive"
    group_item_label: "Target User"
  }

  dimension: drive__team_drive_id {
    type: string
    sql: ${TABLE}.drive.team_drive_id ;;
    group_label: "Drive"
    group_item_label: "Team Drive ID"
  }

  dimension: drive__team_drive_settings_change_type {
    type: string
    sql: ${TABLE}.drive.team_drive_settings_change_type ;;
    group_label: "Drive"
    group_item_label: "Team Drive Settings Change Type"
  }

  dimension: drive__usage_billing_entity_id {
    type: number
    sql: ${TABLE}.drive.usage_billing_entity_id ;;
    group_label: "Drive"
    group_item_label: "Usage Billing Entity ID"
  }

  dimension: drive__usage_billing_metric_container__integer_application_metric {
    type: number
    sql: ${TABLE}.drive.usage_billing_metric_container.integer_application_metric ;;
    group_label: "Drive Usage Billing Metric Container"
    group_item_label: "Integer Application Metric"
  }

  dimension: drive__usage_billing_metric_container__usage_billing_metric_id {
    type: string
    sql: ${TABLE}.drive.usage_billing_metric_container.usage_billing_metric_id ;;
    group_label: "Drive Usage Billing Metric Container"
    group_item_label: "Usage Billing Metric ID"
  }

  dimension: drive__visibility {
    type: string
    sql: ${TABLE}.drive.visibility ;;
    group_label: "Drive"
    group_item_label: "Visibility"
  }

  dimension: drive__visibility_change {
    type: string
    sql: ${TABLE}.drive.visibility_change ;;
    group_label: "Drive"
    group_item_label: "Visibility Change"
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: event_name {
    type: string
    sql: ${TABLE}.event_name ;;
  }

  dimension: event_type {
    type: string
    sql: ${TABLE}.event_type ;;
  }

  dimension: gmail__event_info__elapsed_time_usec {
    type: number
    sql: ${TABLE}.gmail.event_info.elapsed_time_usec ;;
    group_label: "Event Info"
    group_item_label: "Elapsed Time Usec"
  }

  dimension: gmail__event_info__success {
    type: yesno
    sql: ${TABLE}.gmail.event_info.success ;;
    group_label: "Event Info"
    group_item_label: "Success"
  }

  dimension: gmail__event_info__timestamp_usec {
    type: number
    sql: ${TABLE}.gmail.event_info.timestamp_usec ;;
    group_label: "Event Info"
    group_item_label: "Timestamp Usec"
  }

  dimension: gmail__message_info__action_type {
    type: number
    sql: ${TABLE}.gmail.message_info.action_type ;;
    group_label: "Message Info"
    group_item_label: "Action Type"
  }

  # this is an unnested record and used as a view
  dimension: gmail__message_info__attachment {
    hidden: yes
    sql: ${TABLE}.gmail.message_info.attachment ;;
    group_label: "Message Info"
    group_item_label: "Attachment"
  }

  # this is an unnested record and used as a view
  dimension: gmail__message_info__connection_info__authenticated_domain {
    hidden: yes
    sql: ${TABLE}.gmail.message_info.connection_info.authenticated_domain ;;
    group_label: "Message Info Connection Info"
    group_item_label: "Authenticated Domain"
  }

  dimension: gmail__message_info__connection_info__client_host_zone {
    type: string
    sql: ${TABLE}.gmail.message_info.connection_info.client_host_zone ;;
    group_label: "Message Info Connection Info"
    group_item_label: "Client Host Zone"
  }

  dimension: gmail__message_info__connection_info__client_ip {
    type: string
    sql: ${TABLE}.gmail.message_info.connection_info.client_ip ;;
    group_label: "Message Info Connection Info"
    group_item_label: "Client IP"
  }

  dimension: gmail__message_info__connection_info__dkim_pass {
    type: yesno
    sql: ${TABLE}.gmail.message_info.connection_info.dkim_pass ;;
    group_label: "Message Info Connection Info"
    group_item_label: "DKIM Pass"
  }

  dimension: gmail__message_info__connection_info__dmarc_pass {
    type: yesno
    sql: ${TABLE}.gmail.message_info.connection_info.dmarc_pass ;;
    group_label: "Message Info Connection Info"
    group_item_label: "DMARC Pass"
  }

  dimension: gmail__message_info__connection_info__dmarc_published_domain {
    type: string
    sql: ${TABLE}.gmail.message_info.connection_info.dmarc_published_domain ;;
    group_label: "Message Info Connection Info"
    group_item_label: "DMARC Published Domain"
  }

  # this is an unnested record and used as a view
  dimension: gmail__message_info__connection_info__failed_smtp_out_connect_ip {
    hidden: yes
    sql: ${TABLE}.gmail.message_info.connection_info.failed_smtp_out_connect_ip ;;
    group_label: "Message Info Connection Info"
    group_item_label: "Failed Smtp Out Connect IP"
  }

  dimension: gmail__message_info__connection_info__ip_geo_city {
    type: string
    sql: ${TABLE}.gmail.message_info.connection_info.ip_geo_city ;;
    group_label: "Message Info Connection Info"
    group_item_label: "IP Geo City"
  }

  dimension: gmail__message_info__connection_info__ip_geo_country {
    type: string
    sql: ${TABLE}.gmail.message_info.connection_info.ip_geo_country ;;
    group_label: "Message Info Connection Info"
    group_item_label: "IP Geo Country"
  }

  dimension: gmail__message_info__connection_info__is_internal {
    type: yesno
    sql: ${TABLE}.gmail.message_info.connection_info.is_internal ;;
    group_label: "Message Info Connection Info"
    group_item_label: "Is Internal (Yes / No)"
  }

  dimension: gmail__message_info__connection_info__is_intra_domain {
    type: yesno
    sql: ${TABLE}.gmail.message_info.connection_info.is_intra_domain ;;
    group_label: "Message Info Connection Info"
    group_item_label: "Is Intra Domain (Yes / No)"
  }

  dimension: gmail__message_info__connection_info__smtp_in_connect_ip {
    type: string
    sql: ${TABLE}.gmail.message_info.connection_info.smtp_in_connect_ip ;;
    group_label: "Message Info Connection Info"
    group_item_label: "SMTP In Connect IP"
  }

  dimension: gmail__message_info__connection_info__smtp_out_connect_ip {
    type: string
    sql: ${TABLE}.gmail.message_info.connection_info.smtp_out_connect_ip ;;
    group_label: "Message Info Connection Info"
    group_item_label: "SMTP Out Connect IP"
  }

  dimension: gmail__message_info__connection_info__smtp_out_remote_host {
    type: string
    sql: ${TABLE}.gmail.message_info.connection_info.smtp_out_remote_host ;;
    group_label: "Message Info Connection Info"
    group_item_label: "SMTP Out Remote Host"
  }

  dimension: gmail__message_info__connection_info__smtp_reply_code {
    type: number
    sql: ${TABLE}.gmail.message_info.connection_info.smtp_reply_code ;;
    group_label: "Message Info Connection Info"
    group_item_label: "SMTP Reply Code"
  }

  dimension: gmail__message_info__connection_info__smtp_response_reason {
    type: number
    sql: ${TABLE}.gmail.message_info.connection_info.smtp_response_reason ;;
    group_label: "Message Info Connection Info"
    group_item_label: "SMTP Response Reason"
  }

  dimension: gmail__message_info__connection_info__smtp_tls_cipher {
    type: string
    sql: ${TABLE}.gmail.message_info.connection_info.smtp_tls_cipher ;;
    group_label: "Message Info Connection Info"
    group_item_label: "SMTP Tls Cipher"
  }

  dimension: gmail__message_info__connection_info__smtp_tls_state {
    type: number
    sql: ${TABLE}.gmail.message_info.connection_info.smtp_tls_state ;;
    group_label: "Message Info Connection Info"
    group_item_label: "SMTP Tls State"
  }

  dimension: gmail__message_info__connection_info__smtp_tls_version {
    type: string
    sql: ${TABLE}.gmail.message_info.connection_info.smtp_tls_version ;;
    group_label: "Message Info Connection Info"
    group_item_label: "SMTP Tls Version"
  }

  dimension: gmail__message_info__connection_info__smtp_user_agent_ip {
    type: string
    sql: ${TABLE}.gmail.message_info.connection_info.smtp_user_agent_ip ;;
    group_label: "Message Info Connection Info"
    group_item_label: "SMTP User Agent IP"
  }

  dimension: gmail__message_info__connection_info__spf_pass {
    type: yesno
    sql: ${TABLE}.gmail.message_info.connection_info.spf_pass ;;
    group_label: "Message Info Connection Info"
    group_item_label: "Spf Pass"
  }

  dimension: gmail__message_info__connection_info__tls_required_but_unavailable {
    type: yesno
    sql: ${TABLE}.gmail.message_info.connection_info.tls_required_but_unavailable ;;
    group_label: "Message Info Connection Info"
    group_item_label: "Tls Required But Unavailable"
  }

  dimension: gmail__message_info__description {
    type: string
    sql: ${TABLE}.gmail.message_info.description ;;
    group_label: "Message Info"
    group_item_label: "Description"
  }

  # this is an unnested record and used as a view
  dimension: gmail__message_info__destination {
    hidden: yes
    sql: ${TABLE}.gmail.message_info.destination ;;
    group_label: "Message Info"
    group_item_label: "Destination"
  }

  dimension: gmail__message_info__flattened_destinations {
    type: string
    sql: ${TABLE}.gmail.message_info.flattened_destinations ;;
    group_label: "Message Info"
    group_item_label: "Flattened Destination Addresses"
  }

  dimension: gmail__message_info__flattened_triggered_rule_info {
    type: string
    sql: ${TABLE}.gmail.message_info.flattened_triggered_rule_info ;;
    group_label: "Message Info"
    group_item_label: "Flattened Triggered Rule Info"
  }

  dimension: gmail__message_info__is_policy_check_for_sender {
    type: yesno
    sql: ${TABLE}.gmail.message_info.is_policy_check_for_sender ;;
    group_label: "Message Info"
    group_item_label: "Is Policy Check for Sender (Yes / No)"
  }

  dimension: gmail__message_info__is_spam {
    type: yesno
    sql: ${TABLE}.gmail.message_info.is_spam ;;
    group_label: "Message Info"
    group_item_label: "Is Spam (Yes / No)"
  }

  # this is an unnested record and used as a view
  dimension: gmail__message_info__link_domain {
    hidden: yes
    sql: ${TABLE}.gmail.message_info.link_domain ;;
    group_label: "Message Info"
    group_item_label: "Link Domain"
  }

  # this is an unnested record and used as a view
  dimension: gmail__message_info__message_set {
    hidden: yes
    sql: ${TABLE}.gmail.message_info.message_set ;;
    group_label: "Message Info"
    group_item_label: "Message Set"
  }

  dimension: gmail__message_info__num_message_attachments {
    type: number
    sql: ${TABLE}.gmail.message_info.num_message_attachments ;;
    group_label: "Message Info"
    group_item_label: "Num Message Attachments"
  }

  dimension: gmail__message_info__payload_size {
    type: number
    sql: ${TABLE}.gmail.message_info.payload_size ;;
    group_label: "Message Info"
    group_item_label: "Payload Size"
  }

  dimension: gmail__message_info__rfc2822_message_id {
    type: string
    sql: ${TABLE}.gmail.message_info.rfc2822_message_id ;;
    group_label: "Message Info"
    group_item_label: "RFC 2822 Message ID"
  }

  dimension: gmail__message_info__smime_content_type {
    type: number
    sql: ${TABLE}.gmail.message_info.smime_content_type ;;
    group_label: "Message Info"
    group_item_label: "S/MIME Content Type"
  }

  dimension: gmail__message_info__smime_encrypt_message {
    type: yesno
    sql: ${TABLE}.gmail.message_info.smime_encrypt_message ;;
    group_label: "Message Info"
    group_item_label: "S/MIME Encrypt Message"
  }

  dimension: gmail__message_info__smime_extraction_success {
    type: yesno
    sql: ${TABLE}.gmail.message_info.smime_extraction_success ;;
    group_label: "Message Info"
    group_item_label: "S/MIME Extraction Success"
  }

  dimension: gmail__message_info__smime_packaging_success {
    type: yesno
    sql: ${TABLE}.gmail.message_info.smime_packaging_success ;;
    group_label: "Message Info"
    group_item_label: "S/MIME Packaging Success"
  }

  dimension: gmail__message_info__smime_sign_message {
    type: yesno
    sql: ${TABLE}.gmail.message_info.smime_sign_message ;;
    group_label: "Message Info"
    group_item_label: "S/MIME Sign Message"
  }

  dimension: gmail__message_info__smtp_relay_error {
    type: number
    sql: ${TABLE}.gmail.message_info.smtp_relay_error ;;
    group_label: "Message Info"
    group_item_label: "SMTP Relay Error"
  }

  dimension: gmail__message_info__source__address {
    type: string
    sql: ${TABLE}.gmail.message_info.source.address ;;
    group_label: "Message Info Source"
    group_item_label: "Address"
  }

  dimension: gmail__message_info__source__from_header_address {
    type: string
    sql: ${TABLE}.gmail.message_info.source.from_header_address ;;
    group_label: "Message Info Source"
    group_item_label: "From Header Address"
  }

  dimension: gmail__message_info__source__from_header_displayname {
    type: string
    sql: ${TABLE}.gmail.message_info.source.from_header_displayname ;;
    group_label: "Message Info Source"
    group_item_label: "From Header Displayname"
  }

  dimension: gmail__message_info__source__selector {
    type: string
    sql: ${TABLE}.gmail.message_info.source.selector ;;
    group_label: "Message Info Source"
    group_item_label: "Selector"
  }

  dimension: gmail__message_info__source__service {
    type: string
    sql: ${TABLE}.gmail.message_info.source.service ;;
    group_label: "Message Info Source"
    group_item_label: "Service"
  }

  dimension: gmail__message_info__spam_info__classification_reason {
    type: number
    sql: ${TABLE}.gmail.message_info.spam_info.classification_reason ;;
    group_label: "Message Info Spam Info"
    group_item_label: "Classification Reason"
  }

  dimension: gmail__message_info__spam_info__classification_timestamp_usec {
    type: number
    sql: ${TABLE}.gmail.message_info.spam_info.classification_timestamp_usec ;;
    group_label: "Message Info Spam Info"
    group_item_label: "Classification Timestamp Usec"
  }

  dimension: gmail__message_info__spam_info__disposition {
    type: number
    sql: ${TABLE}.gmail.message_info.spam_info.disposition ;;
    group_label: "Message Info Spam Info"
    group_item_label: "Disposition"
  }

  dimension: gmail__message_info__spam_info__ip_whitelist_entry {
    type: string
    sql: ${TABLE}.gmail.message_info.spam_info.ip_whitelist_entry ;;
    group_label: "Message Info Spam Info"
    group_item_label: "IP Whitelist Entry"
  }

  # this is an unnested record and used as a view
  dimension: gmail__message_info__structured_policy_log_info__detected_file_types {
    hidden: yes
    sql: ${TABLE}.gmail.message_info.structured_policy_log_info.detected_file_types ;;
    group_label: "Message Info Structured Policy Log Info"
    group_item_label: "Detected File Types"
  }

  # this is an unnested record and used as a view
  dimension: gmail__message_info__structured_policy_log_info__exchange_journal_info__recipients {
    hidden: yes
    sql: ${TABLE}.gmail.message_info.structured_policy_log_info.exchange_journal_info.recipients ;;
    group_label: "Message Info Structured Policy Log Info Exchange Journal Info"
    group_item_label: "Recipients"
  }

  dimension: gmail__message_info__structured_policy_log_info__exchange_journal_info__rfc822_message_id {
    type: string
    sql: ${TABLE}.gmail.message_info.structured_policy_log_info.exchange_journal_info.rfc822_message_id ;;
    group_label: "Message Info Structured Policy Log Info Exchange Journal Info"
    group_item_label: "Rfc822 Message ID"
  }

  dimension: gmail__message_info__structured_policy_log_info__exchange_journal_info__timestamp {
    type: number
    sql: ${TABLE}.gmail.message_info.structured_policy_log_info.exchange_journal_info.timestamp ;;
    group_label: "Message Info Structured Policy Log Info Exchange Journal Info"
    group_item_label: "Timestamp"
  }

  # this is an unnested record and used as a view
  dimension: gmail__message_info__structured_policy_log_info__exchange_journal_info__unknown_recipients {
    hidden: yes
    sql: ${TABLE}.gmail.message_info.structured_policy_log_info.exchange_journal_info.unknown_recipients ;;
    group_label: "Message Info Structured Policy Log Info Exchange Journal Info"
    group_item_label: "Unknown Recipients"
  }

  dimension: gmail__message_info__subject {
    type: string
    sql: ${TABLE}.gmail.message_info.subject ;;
    group_label: "Message Info"
    group_item_label: "Subject"
  }

  # this is an unnested record and used as a view
  dimension: gmail__message_info__triggered_rule_info {
    hidden: yes
    sql: ${TABLE}.gmail.message_info.triggered_rule_info ;;
    group_label: "Message Info"
    group_item_label: "Triggered Rule Info"
  }

  dimension: gmail__message_info__upload_error_category {
    type: number
    sql: ${TABLE}.gmail.message_info.upload_error_category ;;
    group_label: "Message Info"
    group_item_label: "Upload Error Category"
  }

  dimension: gplus__attachment_type {
    type: string
    sql: ${TABLE}.gplus.attachment_type ;;
    group_label: "Gplus"
    group_item_label: "Attachment Type"
  }

  dimension: gplus__comment_resource_name {
    type: string
    sql: ${TABLE}.gplus.comment_resource_name ;;
    group_label: "Gplus"
    group_item_label: "Comment Resource Name"
  }

  dimension: gplus__log_event_resource_name {
    type: string
    sql: ${TABLE}.gplus.log_event_resource_name ;;
    group_label: "Gplus"
    group_item_label: "Log Event Resource Name"
  }

  dimension: gplus__plusone_context {
    type: string
    sql: ${TABLE}.gplus.plusone_context ;;
    group_label: "Gplus"
    group_item_label: "Plusone Context"
  }

  dimension: gplus__post_author_name {
    type: string
    sql: ${TABLE}.gplus.post_author_name ;;
    group_label: "Gplus"
    group_item_label: "Post Author Name"
  }

  dimension: gplus__post_permalink {
    type: string
    sql: ${TABLE}.gplus.post_permalink ;;
    group_label: "Gplus"
    group_item_label: "Post Permalink"
  }

  dimension: gplus__post_resource_name {
    type: string
    sql: ${TABLE}.gplus.post_resource_name ;;
    group_label: "Gplus"
    group_item_label: "Post Resource Name"
  }

  dimension: gplus__post_visibility {
    type: string
    sql: ${TABLE}.gplus.post_visibility ;;
    group_label: "Gplus"
    group_item_label: "Post Visibility"
  }

  dimension: gplus__user_type {
    type: string
    sql: ${TABLE}.gplus.user_type ;;
    group_label: "Gplus"
    group_item_label: "User Type"
  }

  # this is an unnested record and used as a view
  dimension: group_id {
    hidden: yes
    sql: ${TABLE}.group_id ;;
  }

  dimension: groups__acl_permission {
    type: string
    sql: ${TABLE}.`groups`.acl_permission ;;
    group_label: "Groups"
    group_item_label: "Acl Permission"
  }

  dimension: groups__basic_setting {
    type: string
    sql: ${TABLE}.`groups`.basic_setting ;;
    group_label: "Groups"
    group_item_label: "Basic Setting"
  }

  dimension: groups__group_email {
    type: string
    sql: ${TABLE}.`groups`.group_email ;;
    group_label: "Groups"
    group_item_label: "Group Email"
  }

  dimension: groups__identity_setting {
    type: string
    sql: ${TABLE}.`groups`.identity_setting ;;
    group_label: "Groups"
    group_item_label: "Identity Setting"
  }

  dimension: groups__info_setting {
    type: string
    sql: ${TABLE}.`groups`.info_setting ;;
    group_label: "Groups"
    group_item_label: "Info Setting"
  }

  dimension: groups__member_role {
    type: string
    sql: ${TABLE}.`groups`.member_role ;;
    group_label: "Groups"
    group_item_label: "Member Role"
  }

  dimension: groups__message_id {
    type: string
    sql: ${TABLE}.`groups`.message_id ;;
    group_label: "Groups"
    group_item_label: "Message ID"
  }

  dimension: groups__message_moderation_action {
    type: string
    sql: ${TABLE}.`groups`.message_moderation_action ;;
    group_label: "Groups"
    group_item_label: "Message Moderation Action"
  }

  dimension: groups__new_members_restrictions_setting {
    type: string
    sql: ${TABLE}.`groups`.new_members_restrictions_setting ;;
    group_label: "Groups"
    group_item_label: "New Members Restrictions Setting"
  }

  dimension: groups__new_value {
    type: string
    sql: ${TABLE}.`groups`.new_value ;;
    group_label: "Groups"
    group_item_label: "New Value"
  }

  # this is an unnested record and used as a view
  dimension: groups__new_value_repeated {
    hidden: yes
    sql: ${TABLE}.groups.new_value_repeated ;;
    group_label: "Groups"
    group_item_label: "New Value Repeated"
  }

  dimension: groups__old_value {
    type: string
    sql: ${TABLE}.`groups`.old_value ;;
    group_label: "Groups"
    group_item_label: "Old Value"
  }

  # this is an unnested record and used as a view
  dimension: groups__old_value_repeated {
    hidden: yes
    sql: ${TABLE}.groups.old_value_repeated ;;
    group_label: "Groups"
    group_item_label: "Old Value Repeated"
  }

  dimension: groups__post_replies_setting {
    type: string
    sql: ${TABLE}.`groups`.post_replies_setting ;;
    group_label: "Groups"
    group_item_label: "Post Replies Setting"
  }

  dimension: groups__spam_moderation_setting {
    type: string
    sql: ${TABLE}.`groups`.spam_moderation_setting ;;
    group_label: "Groups"
    group_item_label: "Spam Moderation Setting"
  }

  dimension: groups__status {
    type: string
    sql: ${TABLE}.`groups`.status ;;
    group_label: "Groups"
    group_item_label: "Status"
  }

  dimension: groups__topic_setting {
    type: string
    sql: ${TABLE}.`groups`.topic_setting ;;
    group_label: "Groups"
    group_item_label: "Topic Setting"
  }

  dimension: groups__user_email {
    type: string
    sql: ${TABLE}.`groups`.user_email ;;
    group_label: "Groups"
    group_item_label: "User Email"
  }

  dimension: groups__value {
    type: string
    sql: ${TABLE}.`groups`.value ;;
    group_label: "Groups"
    group_item_label: "Value"
  }

  dimension: ip_address {
    type: string
    sql: ${TABLE}.ip_address ;;
  }

  dimension: login__affected_email_address {
    type: string
    sql: ${TABLE}.login.affected_email_address ;;
    group_label: "Login"
    group_item_label: "Affected Email Address"
  }

  dimension: login__email_forwarding_destination_address {
    type: string
    sql: ${TABLE}.login.email_forwarding_destination_address ;;
    group_label: "Login"
    group_item_label: "Email Forwarding Destination Address"
  }

  dimension: login__is_second_factor {
    type: yesno
    sql: ${TABLE}.login.is_second_factor ;;
    group_label: "Login"
    group_item_label: "Is Second Factor (Yes / No)"
  }

  dimension: login__is_suspicious {
    type: yesno
    sql: ${TABLE}.login.is_suspicious ;;
    group_label: "Login"
    group_item_label: "Is Suspicious (Yes / No)"
  }

  # this is an unnested record and used as a view
  dimension: login__login_challenge_method {
    hidden: yes
    sql: ${TABLE}.login.login_challenge_method ;;
    group_label: "Login"
    group_item_label: "Login Challenge Method"
  }

  dimension: login__login_challenge_status {
    type: string
    sql: ${TABLE}.login.login_challenge_status ;;
    group_label: "Login"
    group_item_label: "Login Challenge Status"
  }

  dimension: login__login_failure_type {
    type: string
    sql: ${TABLE}.login.login_failure_type ;;
    group_label: "Login"
    group_item_label: "Login Failure Type"
  }

  dimension: login__login_timestamp {
    type: number
    sql: ${TABLE}.login.login_timestamp ;;
    group_label: "Login"
    group_item_label: "Login Timestamp"
  }

  dimension: login__login_type {
    type: string
    sql: ${TABLE}.login.login_type ;;
    group_label: "Login"
    group_item_label: "Login Type"
  }

  dimension: login__sensitive_action_name {
    type: string
    sql: ${TABLE}.login.sensitive_action_name ;;
    group_label: "Login"
    group_item_label: "Sensitive Action Name"
  }

  dimension: meet__action_description {
    type: string
    sql: ${TABLE}.meet.action_description ;;
    group_label: "Meet"
    group_item_label: "Action Description"
  }

  dimension: meet__action_reason {
    type: string
    sql: ${TABLE}.meet.action_reason ;;
    group_label: "Meet"
    group_item_label: "Action Reason"
  }

  dimension: meet__audio_recv_packet_loss_max {
    type: number
    sql: ${TABLE}.meet.audio_recv_packet_loss_max ;;
    group_label: "Meet"
    group_item_label: "Audio Recv Packet Loss Max"
  }

  dimension: meet__audio_recv_packet_loss_mean {
    type: number
    sql: ${TABLE}.meet.audio_recv_packet_loss_mean ;;
    group_label: "Meet"
    group_item_label: "Audio Recv Packet Loss Mean"
  }

  dimension: meet__audio_recv_seconds {
    type: number
    sql: ${TABLE}.meet.audio_recv_seconds ;;
    group_label: "Meet"
    group_item_label: "Audio Recv Seconds"
  }

  dimension: meet__audio_send_bitrate_kbps_mean {
    type: number
    sql: ${TABLE}.meet.audio_send_bitrate_kbps_mean ;;
    group_label: "Meet"
    group_item_label: "Audio Send Bitrate Kbps Mean"
  }

  dimension: meet__audio_send_packet_loss_max {
    type: number
    sql: ${TABLE}.meet.audio_send_packet_loss_max ;;
    group_label: "Meet"
    group_item_label: "Audio Send Packet Loss Max"
  }

  dimension: meet__audio_send_packet_loss_mean {
    type: number
    sql: ${TABLE}.meet.audio_send_packet_loss_mean ;;
    group_label: "Meet"
    group_item_label: "Audio Send Packet Loss Mean"
  }

  dimension: meet__audio_send_seconds {
    type: number
    sql: ${TABLE}.meet.audio_send_seconds ;;
    group_label: "Meet"
    group_item_label: "Audio Send Seconds"
  }

  dimension: meet__broadcast_state {
    type: string
    sql: ${TABLE}.meet.broadcast_state ;;
    group_label: "Meet"
    group_item_label: "Broadcast State"
  }

  dimension: meet__calendar_event_id {
    type: string
    sql: ${TABLE}.meet.calendar_event_id ;;
    group_label: "Meet"
    group_item_label: "Calendar Event ID"
  }

  dimension: meet__conference_id {
    type: string
    sql: ${TABLE}.meet.conference_id ;;
    group_label: "Meet"
    group_item_label: "Conference ID"
  }

  dimension: meet__device_type {
    type: string
    sql: ${TABLE}.meet.device_type ;;
    group_label: "Meet"
    group_item_label: "Device Type"
  }

  dimension: meet__display_name {
    type: string
    sql: ${TABLE}.meet.display_name ;;
    group_label: "Meet"
    group_item_label: "Display Name"
  }

  dimension: meet__duration_seconds {
    type: number
    sql: ${TABLE}.meet.duration_seconds ;;
    group_label: "Meet"
    group_item_label: "Duration Seconds"
  }

  dimension: meet__end_of_call_rating {
    type: number
    sql: ${TABLE}.meet.end_of_call_rating ;;
    group_label: "Meet"
    group_item_label: "End of Call Rating"
  }

  dimension: meet__endpoint_id {
    type: string
    sql: ${TABLE}.meet.endpoint_id ;;
    group_label: "Meet"
    group_item_label: "Endpoint ID"
  }

  dimension: meet__identifier {
    type: string
    sql: ${TABLE}.meet.identifier ;;
    group_label: "Meet"
    group_item_label: "Identifier"
  }

  dimension: meet__identifier_type {
    type: string
    sql: ${TABLE}.meet.identifier_type ;;
    group_label: "Meet"
    group_item_label: "Identifier Type"
  }

  dimension: meet__ip_address {
    type: string
    sql: ${TABLE}.meet.ip_address ;;
    group_label: "Meet"
    group_item_label: "IP Address"
  }

  dimension: meet__is_external {
    type: yesno
    sql: ${TABLE}.meet.is_external ;;
    group_label: "Meet"
    group_item_label: "Is External (Yes / No)"
  }

  dimension: meet__livestream_view_page_id {
    type: string
    sql: ${TABLE}.meet.livestream_view_page_id ;;
    group_label: "Meet"
    group_item_label: "Livestream View Page ID"
  }

  dimension: meet__location_country {
    type: string
    sql: ${TABLE}.meet.location_country ;;
    group_label: "Meet"
    group_item_label: "Location Country"
  }

  dimension: meet__location_region {
    type: string
    sql: ${TABLE}.meet.location_region ;;
    group_label: "Meet"
    group_item_label: "Location Region"
  }

  dimension: meet__meeting_code {
    type: string
    sql: ${TABLE}.meet.meeting_code ;;
    group_label: "Meet"
    group_item_label: "Meeting Code"
  }

  dimension: meet__network_congestion {
    type: number
    sql: ${TABLE}.meet.network_congestion ;;
    group_label: "Meet"
    group_item_label: "Network Congestion"
  }

  dimension: meet__network_estimated_download_kbps_mean {
    type: number
    sql: ${TABLE}.meet.network_estimated_download_kbps_mean ;;
    group_label: "Meet"
    group_item_label: "Network Estimated Download Kbps Mean"
  }

  dimension: meet__network_estimated_upload_kbps_mean {
    type: number
    sql: ${TABLE}.meet.network_estimated_upload_kbps_mean ;;
    group_label: "Meet"
    group_item_label: "Network Estimated Upload Kbps Mean"
  }

  dimension: meet__network_recv_jitter_msec_max {
    type: number
    sql: ${TABLE}.meet.network_recv_jitter_msec_max ;;
    group_label: "Meet"
    group_item_label: "Network Recv Jitter Msec Max"
  }

  dimension: meet__network_recv_jitter_msec_mean {
    type: number
    sql: ${TABLE}.meet.network_recv_jitter_msec_mean ;;
    group_label: "Meet"
    group_item_label: "Network Recv Jitter Msec Mean"
  }

  dimension: meet__network_rtt_msec_mean {
    type: number
    sql: ${TABLE}.meet.network_rtt_msec_mean ;;
    group_label: "Meet"
    group_item_label: "Network Rtt Msec Mean"
  }

  dimension: meet__network_send_jitter_msec_mean {
    type: number
    sql: ${TABLE}.meet.network_send_jitter_msec_mean ;;
    group_label: "Meet"
    group_item_label: "Network Send Jitter Msec Mean"
  }

  dimension: meet__network_transport_protocol {
    type: string
    sql: ${TABLE}.meet.network_transport_protocol ;;
    group_label: "Meet"
    group_item_label: "Network Transport Protocol"
  }

  dimension: meet__organizer_email {
    type: string
    sql: ${TABLE}.meet.organizer_email ;;
    group_label: "Meet"
    group_item_label: "Organizer Email"
  }

  dimension: meet__product_type {
    type: string
    sql: ${TABLE}.meet.product_type ;;
    group_label: "Meet"
    group_item_label: "Product Type"
  }

  dimension: meet__screencast_recv_bitrate_kbps_mean {
    type: number
    sql: ${TABLE}.meet.screencast_recv_bitrate_kbps_mean ;;
    group_label: "Meet"
    group_item_label: "Screencast Recv Bitrate Kbps Mean"
  }

  dimension: meet__screencast_recv_fps_mean {
    type: number
    sql: ${TABLE}.meet.screencast_recv_fps_mean ;;
    group_label: "Meet"
    group_item_label: "Screencast Recv Fps Mean"
  }

  dimension: meet__screencast_recv_long_side_median_pixels {
    type: number
    sql: ${TABLE}.meet.screencast_recv_long_side_median_pixels ;;
    group_label: "Meet"
    group_item_label: "Screencast Recv Long Side Median Pixels"
  }

  dimension: meet__screencast_recv_packet_loss_max {
    type: number
    sql: ${TABLE}.meet.screencast_recv_packet_loss_max ;;
    group_label: "Meet"
    group_item_label: "Screencast Recv Packet Loss Max"
  }

  dimension: meet__screencast_recv_packet_loss_mean {
    type: number
    sql: ${TABLE}.meet.screencast_recv_packet_loss_mean ;;
    group_label: "Meet"
    group_item_label: "Screencast Recv Packet Loss Mean"
  }

  dimension: meet__screencast_recv_seconds {
    type: number
    sql: ${TABLE}.meet.screencast_recv_seconds ;;
    group_label: "Meet"
    group_item_label: "Screencast Recv Seconds"
  }

  dimension: meet__screencast_recv_short_side_median_pixels {
    type: number
    sql: ${TABLE}.meet.screencast_recv_short_side_median_pixels ;;
    group_label: "Meet"
    group_item_label: "Screencast Recv Short Side Median Pixels"
  }

  dimension: meet__screencast_send_bitrate_kbps_mean {
    type: number
    sql: ${TABLE}.meet.screencast_send_bitrate_kbps_mean ;;
    group_label: "Meet"
    group_item_label: "Screencast Send Bitrate Kbps Mean"
  }

  dimension: meet__screencast_send_fps_mean {
    type: number
    sql: ${TABLE}.meet.screencast_send_fps_mean ;;
    group_label: "Meet"
    group_item_label: "Screencast Send Fps Mean"
  }

  dimension: meet__screencast_send_long_side_median_pixels {
    type: number
    sql: ${TABLE}.meet.screencast_send_long_side_median_pixels ;;
    group_label: "Meet"
    group_item_label: "Screencast Send Long Side Median Pixels"
  }

  dimension: meet__screencast_send_packet_loss_max {
    type: number
    sql: ${TABLE}.meet.screencast_send_packet_loss_max ;;
    group_label: "Meet"
    group_item_label: "Screencast Send Packet Loss Max"
  }

  dimension: meet__screencast_send_packet_loss_mean {
    type: number
    sql: ${TABLE}.meet.screencast_send_packet_loss_mean ;;
    group_label: "Meet"
    group_item_label: "Screencast Send Packet Loss Mean"
  }

  dimension: meet__screencast_send_seconds {
    type: number
    sql: ${TABLE}.meet.screencast_send_seconds ;;
    group_label: "Meet"
    group_item_label: "Screencast Send Seconds"
  }

  dimension: meet__screencast_send_short_side_median_pixels {
    type: number
    sql: ${TABLE}.meet.screencast_send_short_side_median_pixels ;;
    group_label: "Meet"
    group_item_label: "Screencast Send Short Side Median Pixels"
  }

  dimension: meet__start_timestamp_seconds {
    type: number
    sql: ${TABLE}.meet.start_timestamp_seconds ;;
    group_label: "Meet"
    group_item_label: "Start Timestamp Seconds"
  }

  dimension: meet__target_display_names {
    type: string
    sql: ${TABLE}.meet.target_display_names ;;
    group_label: "Meet"
    group_item_label: "Target Display Names"
  }

  dimension: meet__target_email {
    type: string
    sql: ${TABLE}.meet.target_email ;;
    group_label: "Meet"
    group_item_label: "Target Email"
  }

  dimension: meet__target_phone_number {
    type: string
    sql: ${TABLE}.meet.target_phone_number ;;
    group_label: "Meet"
    group_item_label: "Target Phone Number"
  }

  dimension: meet__video_recv_fps_mean {
    type: number
    sql: ${TABLE}.meet.video_recv_fps_mean ;;
    group_label: "Meet"
    group_item_label: "Video Recv Fps Mean"
  }

  dimension: meet__video_recv_long_side_median_pixels {
    type: number
    sql: ${TABLE}.meet.video_recv_long_side_median_pixels ;;
    group_label: "Meet"
    group_item_label: "Video Recv Long Side Median Pixels"
  }

  dimension: meet__video_recv_packet_loss_max {
    type: number
    sql: ${TABLE}.meet.video_recv_packet_loss_max ;;
    group_label: "Meet"
    group_item_label: "Video Recv Packet Loss Max"
  }

  dimension: meet__video_recv_packet_loss_mean {
    type: number
    sql: ${TABLE}.meet.video_recv_packet_loss_mean ;;
    group_label: "Meet"
    group_item_label: "Video Recv Packet Loss Mean"
  }

  dimension: meet__video_recv_seconds {
    type: number
    sql: ${TABLE}.meet.video_recv_seconds ;;
    group_label: "Meet"
    group_item_label: "Video Recv Seconds"
  }

  dimension: meet__video_recv_short_side_median_pixels {
    type: number
    sql: ${TABLE}.meet.video_recv_short_side_median_pixels ;;
    group_label: "Meet"
    group_item_label: "Video Recv Short Side Median Pixels"
  }

  dimension: meet__video_send_bitrate_kbps_mean {
    type: number
    sql: ${TABLE}.meet.video_send_bitrate_kbps_mean ;;
    group_label: "Meet"
    group_item_label: "Video Send Bitrate Kbps Mean"
  }

  dimension: meet__video_send_fps_mean {
    type: number
    sql: ${TABLE}.meet.video_send_fps_mean ;;
    group_label: "Meet"
    group_item_label: "Video Send Fps Mean"
  }

  dimension: meet__video_send_long_side_median_pixels {
    type: number
    sql: ${TABLE}.meet.video_send_long_side_median_pixels ;;
    group_label: "Meet"
    group_item_label: "Video Send Long Side Median Pixels"
  }

  dimension: meet__video_send_packet_loss_max {
    type: number
    sql: ${TABLE}.meet.video_send_packet_loss_max ;;
    group_label: "Meet"
    group_item_label: "Video Send Packet Loss Max"
  }

  dimension: meet__video_send_packet_loss_mean {
    type: number
    sql: ${TABLE}.meet.video_send_packet_loss_mean ;;
    group_label: "Meet"
    group_item_label: "Video Send Packet Loss Mean"
  }

  dimension: meet__video_send_seconds {
    type: number
    sql: ${TABLE}.meet.video_send_seconds ;;
    group_label: "Meet"
    group_item_label: "Video Send Seconds"
  }

  dimension: meet__video_send_short_side_median_pixels {
    type: number
    sql: ${TABLE}.meet.video_send_short_side_median_pixels ;;
    group_label: "Meet"
    group_item_label: "Video Send Short Side Median Pixels"
  }

  dimension: mobile__account_state {
    type: string
    sql: ${TABLE}.mobile.account_state ;;
    group_label: "Mobile"
    group_item_label: "Account State"
  }

  dimension: mobile__action_execution_status {
    type: string
    sql: ${TABLE}.mobile.action_execution_status ;;
    group_label: "Mobile"
    group_item_label: "Action Execution Status"
  }

  dimension: mobile__action_id {
    type: string
    sql: ${TABLE}.mobile.action_id ;;
    group_label: "Mobile"
    group_item_label: "Action ID"
  }

  dimension: mobile__action_type {
    type: string
    sql: ${TABLE}.mobile.action_type ;;
    group_label: "Mobile"
    group_item_label: "Action Type"
  }

  dimension: mobile__apk_sha256_hash {
    type: string
    sql: ${TABLE}.mobile.apk_sha256_hash ;;
    group_label: "Mobile"
    group_item_label: "Apk Sha256 Hash"
  }

  dimension: mobile__application_id {
    type: string
    sql: ${TABLE}.mobile.application_id ;;
    group_label: "Mobile"
    group_item_label: "Application ID"
  }

  dimension: mobile__application_message {
    type: string
    sql: ${TABLE}.mobile.application_message ;;
    group_label: "Mobile"
    group_item_label: "Application Message"
  }

  dimension: mobile__application_report_key {
    type: string
    sql: ${TABLE}.mobile.application_report_key ;;
    group_label: "Mobile"
    group_item_label: "Application Report Key"
  }

  dimension: mobile__application_report_severity {
    type: string
    sql: ${TABLE}.mobile.application_report_severity ;;
    group_label: "Mobile"
    group_item_label: "Application Report Severity"
  }

  dimension: mobile__application_report_timestamp {
    type: number
    sql: ${TABLE}.mobile.application_report_timestamp ;;
    group_label: "Mobile"
    group_item_label: "Application Report Timestamp"
  }

  dimension: mobile__application_state {
    type: string
    sql: ${TABLE}.mobile.application_state ;;
    group_label: "Mobile"
    group_item_label: "Application State"
  }

  dimension: mobile__basic_integrity {
    type: string
    sql: ${TABLE}.mobile.basic_integrity ;;
    group_label: "Mobile"
    group_item_label: "Basic Integrity"
  }

  dimension: mobile__cts_profile_match {
    type: string
    sql: ${TABLE}.mobile.cts_profile_match ;;
    group_label: "Mobile"
    group_item_label: "Cts Profile Match"
  }

  dimension: mobile__device_app_compliance {
    type: string
    sql: ${TABLE}.mobile.device_app_compliance ;;
    group_label: "Mobile"
    group_item_label: "Device App Compliance"
  }

  dimension: mobile__device_compliance {
    type: string
    sql: ${TABLE}.mobile.device_compliance ;;
    group_label: "Mobile"
    group_item_label: "Device Compliance"
  }

  dimension: mobile__device_compromised_state {
    type: string
    sql: ${TABLE}.mobile.device_compromised_state ;;
    group_label: "Mobile"
    group_item_label: "Device Compromised State"
  }

  # this is an unnested record and used as a view
  dimension: mobile__device_deactivation_reason {
    hidden: yes
    sql: ${TABLE}.mobile.device_deactivation_reason ;;
    group_label: "Mobile"
    group_item_label: "Device Deactivation Reason"
  }

  dimension: mobile__device_id {
    type: string
    sql: ${TABLE}.mobile.device_id ;;
    group_label: "Mobile"
    group_item_label: "Device ID"
  }

  dimension: mobile__device_model {
    type: string
    sql: ${TABLE}.mobile.device_model ;;
    group_label: "Mobile"
    group_item_label: "Device Model"
  }

  dimension: mobile__device_ownership {
    type: string
    sql: ${TABLE}.mobile.device_ownership ;;
    group_label: "Mobile"
    group_item_label: "Device Ownership"
  }

  dimension: mobile__device_property {
    type: string
    sql: ${TABLE}.mobile.device_property ;;
    group_label: "Mobile"
    group_item_label: "Device Property"
  }

  dimension: mobile__device_setting {
    type: string
    sql: ${TABLE}.mobile.device_setting ;;
    group_label: "Mobile"
    group_item_label: "Device Setting"
  }

  dimension: mobile__device_status_on_apple_portal {
    type: string
    sql: ${TABLE}.mobile.device_status_on_apple_portal ;;
    group_label: "Mobile"
    group_item_label: "Device Status on Apple Portal"
  }

  dimension: mobile__device_type {
    type: string
    sql: ${TABLE}.mobile.device_type ;;
    group_label: "Mobile"
    group_item_label: "Device Type"
  }

  dimension: mobile__dmagent_sync_count {
    type: number
    sql: ${TABLE}.mobile.dmagent_sync_count ;;
    group_label: "Mobile"
    group_item_label: "Dmagent Sync Count"
  }

  dimension: mobile__failed_passwd_attempts {
    type: number
    sql: ${TABLE}.mobile.failed_passwd_attempts ;;
    group_label: "Mobile"
    group_item_label: "Failed Passwd Attempts"
  }

  dimension: mobile__hostname {
    type: string
    sql: ${TABLE}.mobile.hostname ;;
    group_label: "Mobile"
    group_item_label: "Hostname"
  }

  dimension: mobile__hostname_text {
    type: string
    sql: ${TABLE}.mobile.hostname_text ;;
    group_label: "Mobile"
    group_item_label: "Hostname Text"
  }

  dimension: mobile__ios_vendor_id {
    type: string
    sql: ${TABLE}.mobile.ios_vendor_id ;;
    group_label: "Mobile"
    group_item_label: "Ios Vendor ID"
  }

  dimension: mobile__ip_address_count {
    type: number
    sql: ${TABLE}.mobile.ip_address_count ;;
    group_label: "Mobile"
    group_item_label: "IP Address Count"
  }

  # this is an unnested record and used as a view
  dimension: mobile__ip_addresses {
    hidden: yes
    sql: ${TABLE}.mobile.ip_addresses ;;
    group_label: "Mobile"
    group_item_label: "IP Addresses"
  }

  dimension: mobile__network_log_event_type {
    type: string
    sql: ${TABLE}.mobile.network_log_event_type ;;
    group_label: "Mobile"
    group_item_label: "Network Log Event Type"
  }

  dimension: mobile__new_device_id {
    type: string
    sql: ${TABLE}.mobile.new_device_id ;;
    group_label: "Mobile"
    group_item_label: "New Device ID"
  }

  dimension: mobile__new_value {
    type: string
    sql: ${TABLE}.mobile.new_value ;;
    group_label: "Mobile"
    group_item_label: "New Value"
  }

  dimension: mobile__old_value {
    type: string
    sql: ${TABLE}.mobile.old_value ;;
    group_label: "Mobile"
    group_item_label: "Old Value"
  }

  dimension: mobile__os_edition {
    type: string
    sql: ${TABLE}.mobile.os_edition ;;
    group_label: "Mobile"
    group_item_label: "OS Edition"
  }

  dimension: mobile__os_property {
    type: string
    sql: ${TABLE}.mobile.os_property ;;
    group_label: "Mobile"
    group_item_label: "OS Property"
  }

  dimension: mobile__os_version {
    type: string
    sql: ${TABLE}.mobile.os_version ;;
    group_label: "Mobile"
    group_item_label: "OS Version"
  }

  dimension: mobile__pha_category {
    type: string
    sql: ${TABLE}.mobile.pha_category ;;
    group_label: "Mobile"
    group_item_label: "Pha Category"
  }

  dimension: mobile__policy_name {
    type: string
    sql: ${TABLE}.mobile.policy_name ;;
    group_label: "Mobile"
    group_item_label: "Policy Name"
  }

  dimension: mobile__policy_sync_result {
    type: string
    sql: ${TABLE}.mobile.policy_sync_result ;;
    group_label: "Mobile"
    group_item_label: "Policy Sync Result"
  }

  dimension: mobile__policy_sync_type {
    type: string
    sql: ${TABLE}.mobile.policy_sync_type ;;
    group_label: "Mobile"
    group_item_label: "Policy Sync Type"
  }

  dimension: mobile__port {
    type: string
    sql: ${TABLE}.mobile.port ;;
    group_label: "Mobile"
    group_item_label: "Port"
  }

  dimension: mobile__port_text {
    type: string
    sql: ${TABLE}.mobile.port_text ;;
    group_label: "Mobile"
    group_item_label: "Port Text"
  }

  dimension: mobile__register_privilege {
    type: string
    sql: ${TABLE}.mobile.register_privilege ;;
    group_label: "Mobile"
    group_item_label: "Register Privilege"
  }

  dimension: mobile__resource_id {
    type: string
    sql: ${TABLE}.mobile.resource_id ;;
    group_label: "Mobile"
    group_item_label: "Resource ID"
  }

  dimension: mobile__risk_signal {
    type: string
    sql: ${TABLE}.mobile.risk_signal ;;
    group_label: "Mobile"
    group_item_label: "Risk Signal"
  }

  dimension: mobile__security_event_id {
    type: number
    sql: ${TABLE}.mobile.security_event_id ;;
    group_label: "Mobile"
    group_item_label: "Security Event ID"
  }

  dimension: mobile__security_log_adb_event_action {
    type: string
    sql: ${TABLE}.mobile.security_log_adb_event_action ;;
    group_label: "Mobile"
    group_item_label: "Security Log Adb Event Action"
  }

  dimension: mobile__security_log_adb_event_type {
    type: string
    sql: ${TABLE}.mobile.security_log_adb_event_type ;;
    group_label: "Mobile"
    group_item_label: "Security Log Adb Event Type"
  }

  dimension: mobile__security_log_adb_event_value {
    type: string
    sql: ${TABLE}.mobile.security_log_adb_event_value ;;
    group_label: "Mobile"
    group_item_label: "Security Log Adb Event Value"
  }

  dimension: mobile__security_log_app_pid {
    type: string
    sql: ${TABLE}.mobile.security_log_app_pid ;;
    group_label: "Mobile"
    group_item_label: "Security Log App Pid"
  }

  dimension: mobile__security_log_app_seinfo {
    type: string
    sql: ${TABLE}.mobile.security_log_app_seinfo ;;
    group_label: "Mobile"
    group_item_label: "Security Log App Seinfo"
  }

  dimension: mobile__security_log_app_uid {
    type: string
    sql: ${TABLE}.mobile.security_log_app_uid ;;
    group_label: "Mobile"
    group_item_label: "Security Log App Uid"
  }

  dimension: mobile__security_log_first_missing_id {
    type: number
    sql: ${TABLE}.mobile.security_log_first_missing_id ;;
    group_label: "Mobile"
    group_item_label: "Security Log First Missing ID"
  }

  dimension: mobile__security_log_hours_since_security_log_upload {
    type: number
    sql: ${TABLE}.mobile.security_log_hours_since_security_log_upload ;;
    group_label: "Mobile"
    group_item_label: "Security Log Hours Since Security Log Upload"
  }

  dimension: mobile__security_log_last_missing_id {
    type: number
    sql: ${TABLE}.mobile.security_log_last_missing_id ;;
    group_label: "Mobile"
    group_item_label: "Security Log Last Missing ID"
  }

  dimension: mobile__security_log_last_received_timestamp {
    type: number
    sql: ${TABLE}.mobile.security_log_last_received_timestamp ;;
    group_label: "Mobile"
    group_item_label: "Security Log Last Received Timestamp"
  }

  dimension: mobile__security_log_screen_lock_event_state {
    type: string
    sql: ${TABLE}.mobile.security_log_screen_lock_event_state ;;
    group_label: "Mobile"
    group_item_label: "Security Log Screen Lock Event State"
  }

  dimension: mobile__security_patch_level {
    type: string
    sql: ${TABLE}.mobile.security_patch_level ;;
    group_label: "Mobile"
    group_item_label: "Security Patch Level"
  }

  dimension: mobile__serial_number {
    type: string
    sql: ${TABLE}.mobile.serial_number ;;
    group_label: "Mobile"
    group_item_label: "Serial Number"
  }

  dimension: mobile__user_email {
    type: string
    sql: ${TABLE}.mobile.user_email ;;
    group_label: "Mobile"
    group_item_label: "User Email"
  }

  dimension: mobile__value {
    type: string
    sql: ${TABLE}.mobile.value ;;
    group_label: "Mobile"
    group_item_label: "Value"
  }

  dimension: mobile__windows_syncml_policy_status_code {
    type: string
    sql: ${TABLE}.mobile.windows_syncml_policy_status_code ;;
    group_label: "Mobile"
    group_item_label: "Windows Syncml Policy Status Code"
  }

  # this is an unnested record and used as a view
  dimension: org_unit_name_path {
    hidden: yes
    sql: ${TABLE}.org_unit_name_path ;;
  }

  dimension: record_type {
    type: string
    sql: ${TABLE}.record_type ;;
  }

  # this is an unnested record and used as a view
  dimension: rules__access_level {
    hidden: yes
    sql: ${TABLE}.rules.access_level ;;
    group_label: "Rules"
    group_item_label: "Access Level"
  }

  # this is an unnested record and used as a view
  dimension: rules__actions {
    hidden: yes
    sql: ${TABLE}.rules.actions ;;
    group_label: "Rules"
    group_item_label: "Actions"
  }

  dimension: rules__actor_ip_address {
    type: string
    sql: ${TABLE}.rules.actor_ip_address ;;
    group_label: "Rules"
    group_item_label: "Actor IP Address"
  }

  dimension: rules__application {
    type: string
    sql: ${TABLE}.rules.application ;;
    group_label: "Rules"
    group_item_label: "Application"
  }

  # this is an unnested record and used as a view
  dimension: rules__applied_actions {
    hidden: yes
    sql: ${TABLE}.rules.applied_actions ;;
    group_label: "Rules"
    group_item_label: "Applied Actions"
  }

  dimension: rules__conference_id {
    type: string
    sql: ${TABLE}.rules.conference_id ;;
    group_label: "Rules"
    group_item_label: "Conference ID"
  }

  dimension: rules__content_hash {
    type: string
    sql: ${TABLE}.rules.content_hash ;;
    group_label: "Rules"
    group_item_label: "Content Hash"
  }

  dimension: rules__data_source {
    type: string
    sql: ${TABLE}.rules.data_source ;;
    group_label: "Rules"
    group_item_label: "Data Source"
  }

  dimension: rules__device_id {
    type: string
    sql: ${TABLE}.rules.device_id ;;
    group_label: "Rules"
    group_item_label: "Device ID"
  }

  dimension: rules__device_type {
    type: string
    sql: ${TABLE}.rules.device_type ;;
    group_label: "Rules"
    group_item_label: "Device Type"
  }

  dimension: rules__drive_shared_drive_id {
    type: string
    sql: ${TABLE}.rules.drive_shared_drive_id ;;
    group_label: "Rules"
    group_item_label: "Drive Shared Drive ID"
  }

  dimension: rules__drive_team_drive_id {
    type: string
    sql: ${TABLE}.rules.drive_team_drive_id ;;
    group_label: "Rules"
    group_item_label: "Drive Team Drive ID"
  }

  # this is an unnested record and used as a view
  dimension: rules__evaluation_context__evaluation_resource_ids {
    hidden: yes
    sql: ${TABLE}.rules.evaluation_context.evaluation_resource_ids ;;
    group_label: "Rules Evaluation Context"
    group_item_label: "Evaluation Resource Ids"
  }

  dimension: rules__has_alert {
    type: yesno
    sql: ${TABLE}.rules.has_alert ;;
    group_label: "Rules"
    group_item_label: "Has Alert"
  }

  dimension: rules__has_content_match {
    type: yesno
    sql: ${TABLE}.rules.has_content_match ;;
    group_label: "Rules"
    group_item_label: "Has Content Match"
  }

  dimension: rules__label_field {
    type: string
    sql: ${TABLE}.rules.label_field ;;
    group_label: "Rules"
    group_item_label: "Label Field"
  }

  dimension: rules__label_title {
    type: string
    sql: ${TABLE}.rules.label_title ;;
    group_label: "Rules"
    group_item_label: "Label Title"
  }

  # this is an unnested record and used as a view
  dimension: rules__matched_detectors {
    hidden: yes
    sql: ${TABLE}.rules.matched_detectors ;;
    group_label: "Rules"
    group_item_label: "Matched Detectors"
  }

  dimension: rules__matched_templates {
    type: string
    sql: ${TABLE}.rules.matched_templates ;;
    group_label: "Rules"
    group_item_label: "Matched Templates"
  }

  dimension: rules__matched_threshold {
    type: string
    sql: ${TABLE}.rules.matched_threshold ;;
    group_label: "Rules"
    group_item_label: "Matched Threshold"
  }

  dimension: rules__matched_trigger {
    type: string
    sql: ${TABLE}.rules.matched_trigger ;;
    group_label: "Rules"
    group_item_label: "Matched Trigger"
  }

  dimension: rules__mobile_device_type {
    type: string
    sql: ${TABLE}.rules.mobile_device_type ;;
    group_label: "Rules"
    group_item_label: "Mobile Device Type"
  }

  dimension: rules__mobile_ios_vendor_id {
    type: string
    sql: ${TABLE}.rules.mobile_ios_vendor_id ;;
    group_label: "Rules"
    group_item_label: "Mobile Ios Vendor ID"
  }

  dimension: rules__new_value {
    type: string
    sql: ${TABLE}.rules.new_value ;;
    group_label: "Rules"
    group_item_label: "New Value"
  }

  dimension: rules__old_value {
    type: string
    sql: ${TABLE}.rules.old_value ;;
    group_label: "Rules"
    group_item_label: "Old Value"
  }

  dimension: rules__resource_id {
    type: string
    sql: ${TABLE}.rules.resource_id ;;
    group_label: "Rules"
    group_item_label: "Resource ID"
  }

  dimension: rules__resource_name {
    type: string
    sql: ${TABLE}.rules.resource_name ;;
    group_label: "Rules"
    group_item_label: "Resource Name"
  }

  dimension: rules__resource_owner_email {
    type: string
    sql: ${TABLE}.rules.resource_owner_email ;;
    group_label: "Rules"
    group_item_label: "Resource Owner Email"
  }

  # this is an unnested record and used as a view
  dimension: rules__resource_recipients {
    hidden: yes
    sql: ${TABLE}.rules.resource_recipients ;;
    group_label: "Rules"
    group_item_label: "Resource Recipients"
  }

  dimension: rules__resource_recipients_omitted_count {
    type: number
    sql: ${TABLE}.rules.resource_recipients_omitted_count ;;
    group_label: "Rules"
    group_item_label: "Resource Recipients Omitted Count"
  }

  dimension: rules__resource_title {
    type: string
    sql: ${TABLE}.rules.resource_title ;;
    group_label: "Rules"
    group_item_label: "Resource Title"
  }

  dimension: rules__resource_type {
    type: string
    sql: ${TABLE}.rules.resource_type ;;
    group_label: "Rules"
    group_item_label: "Resource Type"
  }

  dimension: rules__rule_id {
    type: number
    sql: ${TABLE}.rules.rule_id ;;
    group_label: "Rules"
    group_item_label: "Rule ID"
  }

  dimension: rules__rule_name {
    type: string
    sql: ${TABLE}.rules.rule_name ;;
    group_label: "Rules"
    group_item_label: "Rule Name"
  }

  dimension: rules__rule_resource_name {
    type: string
    sql: ${TABLE}.rules.rule_resource_name ;;
    group_label: "Rules"
    group_item_label: "Rule Resource Name"
  }

  dimension: rules__rule_type {
    type: string
    sql: ${TABLE}.rules.rule_type ;;
    group_label: "Rules"
    group_item_label: "Rule Type"
  }

  dimension: rules__rule_update_time_usec {
    type: number
    sql: ${TABLE}.rules.rule_update_time_usec ;;
    group_label: "Rules"
    group_item_label: "Rule Update Time Usec"
  }

  dimension: rules__scan_type {
    type: string
    sql: ${TABLE}.rules.scan_type ;;
    group_label: "Rules"
    group_item_label: "Scan Type"
  }

  dimension: rules__severity {
    type: string
    sql: ${TABLE}.rules.severity ;;
    group_label: "Rules"
    group_item_label: "Severity"
  }

  dimension: rules__space_id {
    type: string
    sql: ${TABLE}.rules.space_id ;;
    group_label: "Rules"
    group_item_label: "Space ID"
  }

  dimension: rules__space_type {
    type: string
    sql: ${TABLE}.rules.space_type ;;
    group_label: "Rules"
    group_item_label: "Space Type"
  }

  # this is an unnested record and used as a view
  dimension: rules__suppressed_actions {
    hidden: yes
    sql: ${TABLE}.rules.suppressed_actions ;;
    group_label: "Rules"
    group_item_label: "Suppressed Actions"
  }

  # this is an unnested record and used as a view
  dimension: rules__triggered_actions {
    hidden: yes
    sql: ${TABLE}.rules.triggered_actions ;;
    group_label: "Rules"
    group_item_label: "Triggered Actions"
  }

  dimension: saml__application_name {
    type: string
    sql: ${TABLE}.saml.application_name ;;
    group_label: "Saml"
    group_item_label: "Application Name"
  }

  dimension: saml__device_id {
    type: string
    sql: ${TABLE}.saml.device_id ;;
    group_label: "Saml"
    group_item_label: "Device ID"
  }

  dimension: saml__failure_type {
    type: string
    sql: ${TABLE}.saml.failure_type ;;
    group_label: "Saml"
    group_item_label: "Failure Type"
  }

  dimension: saml__initiated_by {
    type: string
    sql: ${TABLE}.saml.initiated_by ;;
    group_label: "Saml"
    group_item_label: "Initiated By"
  }

  dimension: saml__orgunit_path {
    type: string
    sql: ${TABLE}.saml.orgunit_path ;;
    group_label: "Saml"
    group_item_label: "Orgunit Path"
  }

  dimension: saml__saml_second_level_status_code {
    type: string
    sql: ${TABLE}.saml.saml_second_level_status_code ;;
    group_label: "Saml"
    group_item_label: "Saml Second Level Status Code"
  }

  dimension: saml__saml_status_code {
    type: string
    sql: ${TABLE}.saml.saml_status_code ;;
    group_label: "Saml"
    group_item_label: "Saml Status Code"
  }

  dimension: time_usec {
    type: number
    sql: ${TABLE}.time_usec ;;
  }

  dimension: token__api_name {
    type: string
    sql: ${TABLE}.token.api_name ;;
    group_label: "Token"
    group_item_label: "API Name"
  }

  dimension: token__app_name {
    type: string
    sql: ${TABLE}.token.app_name ;;
    group_label: "Token"
    group_item_label: "App Name"
  }

  dimension: token__client_id {
    type: string
    sql: ${TABLE}.token.client_id ;;
    group_label: "Token"
    group_item_label: "Client ID"
  }

  dimension: token__client_type {
    type: string
    sql: ${TABLE}.token.client_type ;;
    group_label: "Token"
    group_item_label: "Client Type"
  }

  dimension: token__method_name {
    type: string
    sql: ${TABLE}.token.method_name ;;
    group_label: "Token"
    group_item_label: "Method Name"
  }

  dimension: token__num_response_bytes {
    type: number
    sql: ${TABLE}.token.num_response_bytes ;;
    group_label: "Token"
    group_item_label: "Num Response Bytes"
  }

  dimension: token__product_bucket {
    type: string
    sql: ${TABLE}.token.product_bucket ;;
    group_label: "Token"
    group_item_label: "Product Bucket"
  }

  # this is an unnested record and used as a view
  dimension: token__scope {
    hidden: yes
    sql: ${TABLE}.token.scope ;;
    group_label: "Token"
    group_item_label: "Scope"
  }

  # this is an unnested record and used as a view
  dimension: token__scope_data {
    hidden: yes
    sql: ${TABLE}.token.scope_data ;;
    group_label: "Token"
    group_item_label: "Scope Data"
  }

  dimension: user_accounts__email_forwarding_destination_address {
    type: string
    sql: ${TABLE}.user_accounts.email_forwarding_destination_address ;;
    group_label: "User Accounts"
    group_item_label: "Email Forwarding Destination Address"
  }

  dimension: voice__param_auto_attendant_email {
    type: string
    sql: ${TABLE}.voice.param_auto_attendant_email ;;
    group_label: "Voice"
    group_item_label: "Param Auto Attendant Email"
  }

  dimension: voice__param_auto_attendant_id {
    type: string
    sql: ${TABLE}.voice.param_auto_attendant_id ;;
    group_label: "Voice"
    group_item_label: "Param Auto Attendant ID"
  }

  dimension: voice__param_auto_attendant_name {
    type: string
    sql: ${TABLE}.voice.param_auto_attendant_name ;;
    group_label: "Voice"
    group_item_label: "Param Auto Attendant Name"
  }

  dimension: voice__param_call_cost {
    type: string
    sql: ${TABLE}.voice.param_call_cost ;;
    group_label: "Voice"
    group_item_label: "Param Call Cost"
  }

  dimension: voice__param_call_placed_or_call_received {
    type: string
    sql: ${TABLE}.voice.param_call_placed_or_call_received ;;
    group_label: "Voice"
    group_item_label: "Param Call Placed or Call Received"
  }

  dimension: voice__param_call_quality_receive_jitter_average_ms {
    type: number
    sql: ${TABLE}.voice.param_call_quality_receive_jitter_average_ms ;;
    group_label: "Voice"
    group_item_label: "Param Call Quality Receive Jitter Average Ms"
  }

  dimension: voice__param_call_quality_receive_jitter_average_ms_str {
    type: string
    sql: ${TABLE}.voice.param_call_quality_receive_jitter_average_ms_str ;;
    group_label: "Voice"
    group_item_label: "Param Call Quality Receive Jitter Average Ms Str"
  }

  dimension: voice__param_call_quality_receive_jitter_max_ms {
    type: number
    sql: ${TABLE}.voice.param_call_quality_receive_jitter_max_ms ;;
    group_label: "Voice"
    group_item_label: "Param Call Quality Receive Jitter Max Ms"
  }

  dimension: voice__param_call_quality_receive_jitter_max_ms_str {
    type: string
    sql: ${TABLE}.voice.param_call_quality_receive_jitter_max_ms_str ;;
    group_label: "Voice"
    group_item_label: "Param Call Quality Receive Jitter Max Ms Str"
  }

  dimension: voice__param_call_quality_receive_packet_loss_per_thousand {
    type: number
    sql: ${TABLE}.voice.param_call_quality_receive_packet_loss_per_thousand ;;
    group_label: "Voice"
    group_item_label: "Param Call Quality Receive Packet Loss per Thousand"
  }

  dimension: voice__param_call_quality_receive_packet_loss_per_thousand_str {
    type: string
    sql: ${TABLE}.voice.param_call_quality_receive_packet_loss_per_thousand_str ;;
    group_label: "Voice"
    group_item_label: "Param Call Quality Receive Packet Loss per Thousand Str"
  }

  dimension: voice__param_call_quality_rtt_average_ms {
    type: number
    sql: ${TABLE}.voice.param_call_quality_rtt_average_ms ;;
    group_label: "Voice"
    group_item_label: "Param Call Quality Rtt Average Ms"
  }

  dimension: voice__param_call_quality_rtt_average_ms_str {
    type: string
    sql: ${TABLE}.voice.param_call_quality_rtt_average_ms_str ;;
    group_label: "Voice"
    group_item_label: "Param Call Quality Rtt Average Ms Str"
  }

  dimension: voice__param_call_recording {
    type: string
    sql: ${TABLE}.voice.param_call_recording ;;
    group_label: "Voice"
    group_item_label: "Param Call Recording"
  }

  dimension: voice__param_desk_phone_device_id {
    type: string
    sql: ${TABLE}.voice.param_desk_phone_device_id ;;
    group_label: "Voice"
    group_item_label: "Param Desk Phone Device ID"
  }

  dimension: voice__param_desk_phone_device_model {
    type: string
    sql: ${TABLE}.voice.param_desk_phone_device_model ;;
    group_label: "Voice"
    group_item_label: "Param Desk Phone Device Model"
  }

  dimension: voice__param_desk_phone_line_phone_number {
    type: string
    sql: ${TABLE}.voice.param_desk_phone_line_phone_number ;;
    group_label: "Voice"
    group_item_label: "Param Desk Phone Line Phone Number"
  }

  dimension: voice__param_desk_phone_user {
    type: string
    sql: ${TABLE}.voice.param_desk_phone_user ;;
    group_label: "Voice"
    group_item_label: "Param Desk Phone User"
  }

  dimension: voice__param_destination {
    type: string
    sql: ${TABLE}.voice.param_destination ;;
    group_label: "Voice"
    group_item_label: "Param Destination"
  }

  dimension: voice__param_disclosure_played {
    type: yesno
    sql: ${TABLE}.voice.param_disclosure_played ;;
    group_label: "Voice"
    group_item_label: "Param Disclosure Played"
  }

  dimension: voice__param_duration {
    type: number
    sql: ${TABLE}.voice.param_duration ;;
    group_label: "Voice"
    group_item_label: "Param Duration"
  }

  dimension: voice__param_is_group {
    type: yesno
    sql: ${TABLE}.voice.param_is_group ;;
    group_label: "Voice"
    group_item_label: "Param Is Group"
  }

  dimension: voice__param_meet_device_name {
    type: string
    sql: ${TABLE}.voice.param_meet_device_name ;;
    group_label: "Voice"
    group_item_label: "Param Meet Device Name"
  }

  dimension: voice__param_meet_meeting_id {
    type: string
    sql: ${TABLE}.voice.param_meet_meeting_id ;;
    group_label: "Voice"
    group_item_label: "Param Meet Meeting ID"
  }

  dimension: voice__param_pbx_service_name {
    type: string
    sql: ${TABLE}.voice.param_pbx_service_name ;;
    group_label: "Voice"
    group_item_label: "Param Pbx Service Name"
  }

  dimension: voice__param_ring_group_email {
    type: string
    sql: ${TABLE}.voice.param_ring_group_email ;;
    group_label: "Voice"
    group_item_label: "Param Ring Group Email"
  }

  dimension: voice__param_ring_group_id {
    type: string
    sql: ${TABLE}.voice.param_ring_group_id ;;
    group_label: "Voice"
    group_item_label: "Param Ring Group ID"
  }

  dimension: voice__param_ring_group_name {
    type: string
    sql: ${TABLE}.voice.param_ring_group_name ;;
    group_label: "Voice"
    group_item_label: "Param Ring Group Name"
  }

  dimension: voice__param_source {
    type: string
    sql: ${TABLE}.voice.param_source ;;
    group_label: "Voice"
    group_item_label: "Param Source"
  }

  dimension: voice__param_trunk_id {
    type: string
    sql: ${TABLE}.voice.param_trunk_id ;;
    group_label: "Voice"
    group_item_label: "Param Trunk ID"
  }

  dimension: voice__phone_number {
    type: string
    sql: ${TABLE}.voice.phone_number ;;
    group_label: "Voice"
    group_item_label: "Phone Number"
  }

  dimension: voice__updated_address {
    type: string
    sql: ${TABLE}.voice.updated_address ;;
    group_label: "Voice"
    group_item_label: "Updated Address"
  }

  dimension: voice__updated_phone_number {
    type: string
    sql: ${TABLE}.voice.updated_phone_number ;;
    group_label: "Voice"
    group_item_label: "Updated Phone Number"
  }

  dimension: voice__updated_user {
    type: string
    sql: ${TABLE}.voice.updated_user ;;
    group_label: "Voice"
    group_item_label: "Updated User"
  }

  dimension: voice__usage_billing_end_time_usec {
    type: number
    sql: ${TABLE}.voice.usage_billing_end_time_usec ;;
    group_label: "Voice"
    group_item_label: "Usage Billing End Time Usec"
  }

  dimension: voice__usage_billing_entity_id {
    type: number
    sql: ${TABLE}.voice.usage_billing_entity_id ;;
    group_label: "Voice"
    group_item_label: "Usage Billing Entity ID"
  }

  dimension: voice__usage_billing_entity_name {
    type: string
    sql: ${TABLE}.voice.usage_billing_entity_name ;;
    group_label: "Voice"
    group_item_label: "Usage Billing Entity Name"
  }

  dimension: voice__usage_billing_metric_container__integer_application_metric {
    type: number
    sql: ${TABLE}.voice.usage_billing_metric_container.integer_application_metric ;;
    group_label: "Voice Usage Billing Metric Container"
    group_item_label: "Integer Application Metric"
  }

  dimension: voice__usage_billing_metric_container__usage_billing_metric_id {
    type: string
    sql: ${TABLE}.voice.usage_billing_metric_container.usage_billing_metric_id ;;
    group_label: "Voice Usage Billing Metric Container"
    group_item_label: "Usage Billing Metric ID"
  }

  # this is an unnested record and used as a view
  dimension: voice__usage_billing_metric_label {
    hidden: yes
    sql: ${TABLE}.voice.usage_billing_metric_label ;;
    group_label: "Voice"
    group_item_label: "Usage Billing Metric Label"
  }

  dimension: voice__usage_billing_start_time_usec {
    type: number
    sql: ${TABLE}.voice.usage_billing_start_time_usec ;;
    group_label: "Voice"
    group_item_label: "Usage Billing Start Time Usec"
  }
}

view: activity__group_id {
  fields_hidden_by_default: yes

  dimension: activity__group_id {
    type: string
    sql: activity__group_id ;;
  }
}

view: activity__token__scope {
  fields_hidden_by_default: yes

  dimension: activity__token__scope {
    type: string
    sql: activity__token__scope ;;
  }
}

view: activity__rules__actions {
  fields_hidden_by_default: yes

  dimension: activity__rules__actions {
    type: string
    sql: activity__rules__actions ;;
  }
}

view: activity__drive__new_value {
  fields_hidden_by_default: yes

  dimension: activity__drive__new_value {
    type: string
    sql: activity__drive__new_value ;;
  }
}

view: activity__drive__old_value {
  fields_hidden_by_default: yes

  dimension: activity__drive__old_value {
    type: string
    sql: activity__drive__old_value ;;
  }
}

view: activity__drive__added_role {
  fields_hidden_by_default: yes

  dimension: activity__drive__added_role {
    type: string
    sql: activity__drive__added_role ;;
  }
}

view: activity__chat__target_users {
  fields_hidden_by_default: yes

  dimension: activity__chat__target_users {
    type: string
    sql: activity__chat__target_users ;;
  }
}

view: activity__rules__access_level {
  fields_hidden_by_default: yes

  dimension: activity__rules__access_level {
    type: string
    sql: activity__rules__access_level ;;
  }
}

view: activity__org_unit_name_path {
  fields_hidden_by_default: yes

  dimension: activity__org_unit_name_path {
    type: string
    sql: activity__org_unit_name_path ;;
  }
}

view: activity__drive__removed_role {
  fields_hidden_by_default: yes

  dimension: activity__drive__removed_role {
    type: string
    sql: activity__drive__removed_role ;;
  }
}

view: activity__drive__old_value_id {
  fields_hidden_by_default: yes

  dimension: activity__drive__old_value_id {
    type: string
    sql: activity__drive__old_value_id ;;
  }
}

view: activity__drive__execution_id {
  fields_hidden_by_default: yes

  dimension: activity__drive__execution_id {
    type: string
    sql: activity__drive__execution_id ;;
  }
}

view: activity__drive__new_value_id {
  fields_hidden_by_default: yes

  dimension: activity__drive__new_value_id {
    type: string
    sql: activity__drive__new_value_id ;;
  }
}

view: activity__chrome__access_level {
  fields_hidden_by_default: yes

  dimension: activity__chrome__access_level {
    type: string
    sql: activity__chrome__access_level ;;
  }
}

view: activity__mobile__ip_addresses {
  fields_hidden_by_default: yes

  dimension: activity__mobile__ip_addresses {
    type: string
    sql: activity__mobile__ip_addresses ;;
  }
}

view: activity__classroom__guardians {
  fields_hidden_by_default: yes

  dimension: activity__classroom__guardians {
    type: string
    sql: activity__classroom__guardians ;;
  }
}

view: activity__drive__old_field_value {
  fields_hidden_by_default: yes

  dimension: activity__drive__old_field_value {
    type: string
    sql: activity__drive__old_field_value ;;
  }
}

view: activity__drive__new_field_value {
  fields_hidden_by_default: yes

  dimension: activity__drive__new_field_value {
    type: string
    sql: activity__drive__new_field_value ;;
  }
}

view: activity__drive__source_folder_id {
  fields_hidden_by_default: yes

  dimension: activity__drive__source_folder_id {
    type: string
    sql: activity__drive__source_folder_id ;;
  }
}

view: activity__admin__whitelisted_groups {
  fields_hidden_by_default: yes

  dimension: activity__admin__whitelisted_groups {
    type: string
    sql: activity__admin__whitelisted_groups ;;
  }
}

view: activity__classroom__invited_emails {
  fields_hidden_by_default: yes

  dimension: activity__classroom__invited_emails {
    type: string
    sql: activity__classroom__invited_emails ;;
  }
}

view: activity__classroom__impacted_users {
  fields_hidden_by_default: yes

  dimension: activity__classroom__impacted_users {
    type: string
    sql: activity__classroom__impacted_users ;;
  }
}

view: activity__rules__resource_recipients {
  fields_hidden_by_default: yes

  dimension: activity__rules__resource_recipients {
    type: string
    sql: activity__rules__resource_recipients ;;
  }
}

view: activity__drive__old_attribute_value {
  fields_hidden_by_default: yes

  dimension: activity__drive__old_attribute_value {
    type: string
    sql: activity__drive__old_attribute_value ;;
  }
}

view: activity__drive__new_attribute_value {
  fields_hidden_by_default: yes

  dimension: activity__drive__new_attribute_value {
    type: string
    sql: activity__drive__new_attribute_value ;;
  }
}

view: activity__drive__source_folder_title {
  fields_hidden_by_default: yes

  dimension: activity__drive__source_folder_title {
    type: string
    sql: activity__drive__source_folder_title ;;
  }
}

view: activity__classroom__attachment_types {
  fields_hidden_by_default: yes

  dimension: activity__classroom__attachment_types {
    type: string
    sql: activity__classroom__attachment_types ;;
  }
}

view: activity__groups__new_value_repeated {
  fields_hidden_by_default: yes

  dimension: activity__groups__new_value_repeated {
    type: string
    sql: activity__groups__new_value_repeated ;;
  }
}

view: activity__groups__old_value_repeated {
  fields_hidden_by_default: yes

  dimension: activity__groups__old_value_repeated {
    type: string
    sql: activity__groups__old_value_repeated ;;
  }
}

view: activity__token__scope_data {
  fields_hidden_by_default: yes

  # this is an unnested record and used as a view
  dimension: product_bucket {
    hidden: yes
    sql: ${TABLE}.product_bucket ;;
  }

  dimension: scope_name {
    type: string
    sql: ${TABLE}.scope_name ;;
  }

  dimension: scope_risk {
    type: string
    sql: ${TABLE}.scope_risk ;;
  }
}

view: activity__drive__destination_folder_id {
  fields_hidden_by_default: yes

  dimension: activity__drive__destination_folder_id {
    type: string
    sql: activity__drive__destination_folder_id ;;
  }
}

view: activity__login__login_challenge_method {
  fields_hidden_by_default: yes

  dimension: activity__login__login_challenge_method {
    type: string
    sql: activity__login__login_challenge_method ;;
  }
}

view: activity__chrome__triggered_rules_reason {
  fields_hidden_by_default: yes

  dimension: activity__chrome__triggered_rules_reason {
    type: string
    sql: activity__chrome__triggered_rules_reason ;;
  }
}

view: activity__gmail__message_info__link_domain {
  fields_hidden_by_default: yes

  dimension: activity__gmail__message_info__link_domain {
    type: string
    sql: activity__gmail__message_info__link_domain ;;
  }
}

view: activity__drive__destination_folder_title {
  fields_hidden_by_default: yes

  dimension: activity__drive__destination_folder_title {
    type: string
    sql: activity__drive__destination_folder_title ;;
  }
}

view: activity__token__scope_data__product_bucket {
  fields_hidden_by_default: yes

  dimension: activity__token__scope_data__product_bucket {
    type: string
    sql: activity__token__scope_data__product_bucket ;;
  }
}

view: activity__rules__applied_actions {
  fields_hidden_by_default: yes

  dimension: action_type {
    type: string
    sql: ${TABLE}.action_type ;;
  }
}

view: activity__mobile__device_deactivation_reason {
  fields_hidden_by_default: yes

  dimension: activity__mobile__device_deactivation_reason {
    type: string
    sql: activity__mobile__device_deactivation_reason ;;
  }
}

view: activity__gmail__message_info__message_set {
  fields_hidden_by_default: yes

  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }
}

view: activity__rules__triggered_actions {
  fields_hidden_by_default: yes

  dimension: action_type {
    type: string
    sql: ${TABLE}.action_type ;;
  }

  dimension: evidence_locker_filepath {
    type: string
    sql: ${TABLE}.evidence_locker_filepath ;;
  }
}

view: activity__rules__matched_detectors {
  fields_hidden_by_default: yes

  dimension: detector_id {
    type: string
    sql: ${TABLE}.detector_id ;;
  }

  dimension: detector_type {
    type: string
    sql: ${TABLE}.detector_type ;;
  }

  dimension: display_name {
    type: string
    sql: ${TABLE}.display_name ;;
  }
}

view: activity__gmail__message_info__attachment {
  fields_hidden_by_default: yes

  dimension: file_extension_type {
    type: string
    sql: ${TABLE}.file_extension_type ;;
  }

  dimension: malware_family {
    type: number
    sql: ${TABLE}.malware_family ;;
  }

  dimension: sha256 {
    type: string
    sql: ${TABLE}.sha256 ;;
  }
}

view: activity__rules__suppressed_actions {
  fields_hidden_by_default: yes

  dimension: action_type {
    type: string
    sql: ${TABLE}.action_type ;;
  }
}

view: activity__gmail__message_info__destination {
  fields_hidden_by_default: yes

  dimension: address {
    type: string
    sql: ${TABLE}.address ;;
  }

  dimension: rcpt_response {
    type: number
    sql: ${TABLE}.rcpt_response ;;
  }

  dimension: selector {
    type: string
    sql: ${TABLE}.selector ;;
  }

  dimension: service {
    type: string
    sql: ${TABLE}.service ;;
  }

  dimension: smime_decryption_success {
    type: yesno
    sql: ${TABLE}.smime_decryption_success ;;
  }

  dimension: smime_extraction_success {
    type: yesno
    sql: ${TABLE}.smime_extraction_success ;;
  }

  dimension: smime_parsing_success {
    type: yesno
    sql: ${TABLE}.smime_parsing_success ;;
  }

  dimension: smime_signature_verification_success {
    type: yesno
    sql: ${TABLE}.smime_signature_verification_success ;;
  }
}

view: activity__gmail__message_info__triggered_rule_info {
  fields_hidden_by_default: yes

  # this is an unnested record and used as a view
  dimension: consequence {
    hidden: yes
    sql: ${TABLE}.consequence ;;
  }

  dimension: policy_holder_address {
    type: string
    sql: ${TABLE}.policy_holder_address ;;
  }

  dimension: rule_name {
    type: string
    sql: ${TABLE}.rule_name ;;
  }

  dimension: rule_type {
    type: number
    sql: ${TABLE}.rule_type ;;
  }

  dimension: spam_label_modifier {
    type: number
    sql: ${TABLE}.spam_label_modifier ;;
  }

  # this is an unnested record and used as a view
  dimension: string_match {
    hidden: yes
    sql: ${TABLE}.string_match ;;
  }
}

view: activity__rules__evaluation_context__evaluation_resource_ids {
  fields_hidden_by_default: yes

  dimension: activity__rules__evaluation_context__evaluation_resource_ids {
    type: string
    sql: activity__rules__evaluation_context__evaluation_resource_ids ;;
  }
}

view: activity__gmail__message_info__triggered_rule_info__string_match {
  fields_hidden_by_default: yes

  dimension: attachment_name {
    type: string
    sql: ${TABLE}.attachment_name ;;
  }

  dimension: match_expression {
    type: string
    sql: ${TABLE}.match_expression ;;
  }

  dimension: matched_string {
    type: string
    sql: ${TABLE}.matched_string ;;
  }

  dimension: predefined_detector_name {
    type: string
    sql: ${TABLE}.predefined_detector_name ;;
  }

  dimension: source {
    type: number
    sql: ${TABLE}.source ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }
}

view: activity__gmail__message_info__triggered_rule_info__consequence {
  fields_hidden_by_default: yes

  dimension: action {
    type: number
    sql: ${TABLE}.action ;;
  }

  dimension: reason {
    type: string
    sql: ${TABLE}.reason ;;
  }

  # this is an unnested record and used as a view
  dimension: subconsequence {
    hidden: yes
    sql: ${TABLE}.subconsequence ;;
  }
}

view: activity__gmail__message_info__connection_info__authenticated_domain {
  fields_hidden_by_default: yes

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }
}

view: activity__gmail__message_info__connection_info__failed_smtp_out_connect_ip {
  fields_hidden_by_default: yes

  dimension: activity__gmail__message_info__connection_info__failed_smtp_out_connect_ip {
    type: string
    sql: activity__gmail__message_info__connection_info__failed_smtp_out_connect_ip ;;
  }
}

view: activity__voice__usage_billing_metric_label {
  fields_hidden_by_default: yes

  dimension: usage_billing_metric_label_id {
    type: string
    sql: ${TABLE}.usage_billing_metric_label_id ;;
  }

  dimension: usage_billing_metric_label_value {
    type: string
    sql: ${TABLE}.usage_billing_metric_label_value ;;
  }
}

view: activity__gmail__message_info__triggered_rule_info__consequence__subconsequence {
  fields_hidden_by_default: yes

  dimension: action {
    type: number
    sql: ${TABLE}.action ;;
  }

  dimension: reason {
    type: string
    sql: ${TABLE}.reason ;;
  }
}

view: activity__gmail__message_info__structured_policy_log_info__detected_file_types {
  fields_hidden_by_default: yes

  dimension: category {
    type: number
    sql: ${TABLE}.category ;;
  }

  dimension: mime_type {
    type: string
    sql: ${TABLE}.mime_type ;;
  }
}

view: activity__gmail__message_info__structured_policy_log_info__exchange_journal_info__recipients {
  fields_hidden_by_default: yes

  dimension: activity__gmail__message_info__structured_policy_log_info__exchange_journal_info__recipients {
    type: string
    sql: activity__gmail__message_info__structured_policy_log_info__exchange_journal_info__recipients ;;
  }
}

view: activity__gmail__message_info__structured_policy_log_info__exchange_journal_info__unknown_recipients {
  fields_hidden_by_default: yes

  dimension: activity__gmail__message_info__structured_policy_log_info__exchange_journal_info__unknown_recipients {
    type: string
    sql: activity__gmail__message_info__structured_policy_log_info__exchange_journal_info__unknown_recipients ;;
  }
}
