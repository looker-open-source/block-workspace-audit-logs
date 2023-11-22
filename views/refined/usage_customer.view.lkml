include: "usage.view"

# API reference for customer usage logs in BigQuery:
# https://developers.google.com/admin-sdk/reports/v1/appendix/usage/customer
view: usage_customer {
  extends: [usage]

  parameter: timeframe {
    hidden: no
    view_label: " Filters"
    type: unquoted
    label: "Timeframe [N Days]"
    default_value: "1"
    allowed_value: {
      value: "1"
      label: "1 Day"
    }
    allowed_value: {
      value: "7"
      label: "7 Days"
    }
    allowed_value: {
      value: "30"
      label: "30 Days"
    }
    description: "Use with Active User % [N Days] fields for dynamic calculation for 1 day, 7 day, and 30 day metrics"
  }


  # accounts
  # https://developers.google.com/admin-sdk/reports/v1/appendix/usage/customer/accounts
  dimension: accounts__all_domain_names {
    hidden: no
    view_label: "Accounts"
    group_label: ""
    label: "All Domain Names"
  }

  measure: accounts_sum_apps_total_licenses {
    hidden: no
    view_label: "Accounts"
    group_label: "Licenses"
    label: "Apps Total Licenses"
    type: sum
    sql: ${accounts__apps_total_licenses} ;;
    description: "Total number of G Suite Basic licenses purchased for the domain."
  }

  measure: accounts_sum_apps_used_licenses {
    hidden: no
    view_label: "Accounts"
    group_label: "Licenses"
    label: "Apps Used Licenses"
    type: sum
    sql: ${accounts__apps_used_licenses} ;;
    description: "The number of G Suite Basic licenses in use in the domain."
  }

  measure: accounts_sum_coordinate_total_licenses {
    hidden: no
    view_label: "Accounts"
    group_label: "Licenses"
    label: "Coordinate Total Licenses"
    type: sum
    sql: ${accounts__coordinate_total_licenses} ;;
    description: "Total number of Google Maps Coordinate licenses purchased for the domain."
  }

  measure: accounts_sum_customer_used_quota_in_mb {
    hidden: no
    view_label: "Accounts"
    group_label: "Quota"
    label: "Customer Used Quota In MB"
    type: sum
    sql: ${accounts__customer_used_quota_in_mb} ;;
    description: "Total storage quota used by the domain in megabytes"
  }

  measure: accounts_sum_drive_used_quota_in_mb {
    hidden: no
    view_label: "Accounts"
    group_label: "Quota"
    label: "Drive Used Quota In MB"
    type: sum
    sql: ${accounts__drive_used_quota_in_mb} ;;
    description: "Storage quota (in MB) used by the domain for data in Drive."
  }

  measure: accounts_sum_gmail_used_quota_in_mb {
    hidden: no
    view_label: "Accounts"
    group_label: "Quota"
    label: "Gmail Used Quota In MB"
    type: sum
    sql: ${accounts__gmail_used_quota_in_mb} ;;
    description: "Storage quota (in MB) used by the domain for data in Gmail."
  }

  measure: accounts_sum_gplus_photos_used_quota_in_mb {
    hidden: no
    view_label: "Accounts"
    group_label: "Quota"
    label: "Gplus Photos Used Quota In MB"
    type: sum
    sql: ${accounts__gplus_photos_used_quota_in_mb} ;;
    description: "Storage quota (in MB) used by the domain for data in Google Photos and Currents."
  }

  measure: accounts_sum_gsuite_basic_total_licenses {
    hidden: no
    view_label: "Accounts"
    group_label: "Licenses"
    label: "Gsuite Basic Total Licenses"
    type: sum
    sql: ${accounts__gsuite_basic_total_licenses} ;;
    description: "Total number of G Suite Basic licenses purchased for the domain."
  }

  measure: accounts_sum_gsuite_basic_used_licenses {
    hidden: no
    view_label: "Accounts"
    group_label: "Licenses"
    label: "Gsuite Basic Used Licenses"
    type: sum
    sql: ${accounts__gsuite_basic_used_licenses} ;;
    description: "The number of G Suite Basic licenses in use in the domain."
  }

  measure: accounts_sum_gsuite_enterprise_total_licenses {
    hidden: no
    view_label: "Accounts"
    group_label: "Licenses"
    label: "Gsuite Enterprise Total Licenses"
    type: sum
    sql: ${accounts__gsuite_enterprise_total_licenses} ;;
    description: "Total number of G Suite Enterprise licenses purchased for the domain."
  }

  measure: accounts_sum_gsuite_enterprise_used_licenses {
    hidden: no
    view_label: "Accounts"
    group_label: "Licenses"
    label: "Gsuite Enterprise Used Licenses"
    type: sum
    sql: ${accounts__gsuite_enterprise_used_licenses} ;;
    description: "The number of G Suite Enterprise licenses in use in the domain."
  }

  measure: accounts_sum_gsuite_unlimited_total_licenses {
    hidden: no
    view_label: "Accounts"
    group_label: "Licenses"
    label: "Gsuite Unlimited Total Licenses"
    type: sum
    sql: ${accounts__gsuite_unlimited_total_licenses} ;;
    description: "Total number of G Suite Business licenses purchased for the domain."
  }

  measure: accounts_sum_gsuite_unlimited_used_licenses {
    hidden: no
    view_label: "Accounts"
    group_label: "Licenses"
    label: "Gsuite Unlimited Used Licenses"
    type: sum
    sql: ${accounts__gsuite_unlimited_used_licenses} ;;
    description: "The number of G Suite Business licenses in use in the domain."
  }

  measure: accounts_sum_num_1day_logins {
    hidden: yes
    view_label: "Accounts"
    group_label: "Active Users"
    label: "Num 1Day Logins"
    type: sum
    sql: ${accounts__num_1day_logins} ;;
    description: "The number of account users who have logged in the day of this report. These are unique logins from 00:00 PST to 23:59:59 PST on that date."
  }

  measure: accounts_sum_num_30day_logins {
    hidden: yes
    view_label: "Accounts"
    group_label: "Active Users"
    label: "Num 30Day Logins"
    type: sum
    sql: ${accounts__num_30day_logins} ;;
    description: "The number of account users who have logged in in the past 30 days from the date of this report."
  }

  measure: accounts_sum_num_7day_logins {
    hidden: yes
    view_label: "Accounts"
    group_label: "Active Users"
    label: "Num 7Day Logins"
    type: sum
    sql: ${accounts__num_7day_logins} ;;
    description: "The number of account users who have logged in in the past 7 days from the date of this report."
  }

  measure: accounts_sum_num_archived_users {
    hidden: no
    view_label: "Accounts"
    group_label: "Active Users"
    label: "Num Archived Users"
    type: sum
    sql: ${accounts__num_archived_users} ;;
    description: "Number of archived users"
  }

  measure: accounts_sum_num_authorized_apps {
    hidden: no
    view_label: "Accounts"
    group_label: "Other"
    label: "Num Authorized Apps"
    type: sum
    sql: ${accounts__num_authorized_apps} ;;
    description: "The number of third party applications authorized to access the user's data."
  }

  measure: accounts_sum_num_delegated_admins {
    hidden: no
    view_label: "Accounts"
    group_label: "Active Users"
    label: "Num Delegated Admins"
    type: sum
    sql: ${accounts__num_delegated_admins} ;;
    description: "The number of delegated administrators."
  }

  measure: accounts_sum_num_disabled_accounts {
    hidden: no
    view_label: "Accounts"
    group_label: "Active Users"
    label: "Num Disabled Accounts"
    type: sum
    sql: ${accounts__num_disabled_accounts} ;;
    description: "The number of disabled user accounts (includes archived and suspended)."
  }

  measure: accounts_sum_num_locked_users {
    hidden: no
    view_label: "Accounts"
    group_label: "Active Users"
    label: "Num Locked Users"
    type: sum
    sql: ${accounts__num_locked_users} ;;
    description: "The number of locked user accounts."
  }

  measure: accounts_sum_num_security_keys {
    hidden: no
    view_label: "Accounts"
    group_label: "Other"
    label: "Num Security Keys"
    type: sum
    sql: ${accounts__num_security_keys} ;;
    description: "The number of security keys enrolled by users of this domain."
  }

  measure: accounts_sum_num_super_admins {
    hidden: no
    view_label: "Accounts"
    group_label: "Active Users"
    label: "Num Super Admins"
    type: sum
    sql: ${accounts__num_super_admins} ;;
    description: "The number of super administrators."
  }

  measure: accounts_sum_num_suspended_users {
    hidden: no
    view_label: "Accounts"
    group_label: "Active Users"
    label: "Num Suspended Users"
    type: sum
    sql: ${accounts__num_suspended_users} ;;
    description: "The number of suspended user accounts."
  }

  measure: accounts_sum_num_users {
    hidden: no
    view_label: "Accounts"
    group_label: "Active Users"
    label: "Num Total Users"
    type: sum
    sql: ${accounts__num_users} ;;
    description: "The number of total users (including disabled)."
  }

  # use this count to calcluate active user percentages
  measure: accounts_sum_num_active_users {
    hidden: no
    view_label: "Accounts"
    group_label: "Active Users"
    label: "Num Active Users"
    type: number
    sql: ${accounts_sum_num_users} - ${accounts_sum_num_disabled_accounts} ;;
    description: "The number of total users (not including disabled)."
  }

  measure: accounts_sum_num_users_2sv_enforced {
    hidden: no
    view_label: "Accounts"
    group_label: "Active Users"
    label: "Num Users 2SV Enforced"
    type: sum
    sql: ${accounts__num_users_2sv_enforced} ;;
    description: "The number of user accounts which are enforced for 2-step verification."
  }

  measure: accounts_sum_num_users_2sv_enrolled {
    hidden: no
    view_label: "Accounts"
    group_label: "Active Users"
    label: "Num Users 2SV Enrolled"
    type: sum
    sql: ${accounts__num_users_2sv_enrolled} ;;
    description: "The number of user accounts which have enrolled for 2-step verification."
  }

  measure: accounts_sum_num_users_2sv_enrolled_and_enforced {
    hidden: no
    view_label: "Accounts"
    group_label: "Active Users"
    label: "Num Users 2SV Enrolled And Enforced"
    type: sum
    sql: ${accounts__num_users_2sv_enrolled_and_enforced} ;;
    description: "The number of user accounts which are enforced and have enrolled for 2-step verification."
  }

  measure: accounts_sum_num_users_2sv_not_enforced {
    hidden: no
    view_label: "Accounts"
    group_label: "Active Users"
    label: "Num Users 2SV Not Enforced"
    type: sum
    sql: ${accounts__num_users_2sv_not_enforced} ;;
    description: "The number of user accounts which are not enforced for 2-step verification."
  }

  measure: accounts_sum_num_users_2sv_not_enrolled {
    hidden: no
    view_label: "Accounts"
    group_label: "Active Users"
    label: "Num Users 2SV Not Enrolled"
    type: sum
    sql: ${accounts__num_users_2sv_not_enrolled} ;;
    description: "The number of user accounts which have not enrolled for 2-step verification."
  }

  measure: accounts_sum_num_users_2sv_not_enrolled_and_not_enforced {
    hidden: no
    view_label: "Accounts"
    group_label: "Active Users"
    label: "Num Users 2SV Not Enrolled And Not Enforced"
    type: sum
    sql: ${accounts__num_users_2sv_not_enrolled_and_not_enforced} ;;
    description: "The number of user accounts which are neither enforced nor have enrolled for 2-step verification."
  }

  measure: accounts_sum_num_users_2sv_not_enrolled_but_enforced {
    hidden: no
    view_label: "Accounts"
    group_label: "Active Users"
    label: "Num Users 2SV Not Enrolled But Enforced"
    type: sum
    sql: ${accounts__num_users_2sv_not_enrolled_but_enforced} ;;
    description: "The number of users accounts which have not enrolled for 2-step verification but for which it is enforced."
  }

  measure: accounts_sum_num_users_less_secure_apps_access_allowed {
    hidden: no
    view_label: "Accounts"
    group_label: "Active Users"
    label: "Num Users Less Secure Apps Access Allowed"
    type: sum
    sql: ${accounts__num_users_less_secure_apps_access_allowed} ;;
    description: "The number of user accounts allowed less secure apps access."
  }

  measure: accounts_sum_num_users_less_secure_apps_access_denied {
    hidden: no
    view_label: "Accounts"
    group_label: "Active Users"
    label: "Num Users Less Secure Apps Access Denied"
    type: sum
    sql: ${accounts__num_users_less_secure_apps_access_denied} ;;
    description: "The number of user accounts denied less secure apps access."
  }

  measure: accounts_sum_num_users_overridden_names {
    hidden: no
    view_label: "Accounts"
    group_label: "Active Users"
    label: "Num Users Overridden Names"
    type: sum
    sql: ${accounts__num_users_overridden_names} ;;
    description: "The number of users that have changed their Currents profile names. These users have display names that are different than the names defined by their admins."
  }

  measure: accounts_sum_num_users_password_length_compliant {
    hidden: no
    view_label: "Accounts"
    group_label: "Active Users"
    label: "Num Users Password Length Compliant"
    type: sum
    sql: ${accounts__num_users_password_length_compliant} ;;
    description: "Number of users whose password length is compliant with password management policy"
  }

  measure: accounts_sum_num_users_password_length_non_compliant {
    hidden: no
    view_label: "Accounts"
    group_label: "Active Users"
    label: "Num Users Password Length Non Compliant"
    type: sum
    sql: ${accounts__num_users_password_length_non_compliant} ;;
    description: "Number of users whose password length is not compliant with password management policy"
  }

  measure: accounts_sum_num_users_password_length_unknown {
    hidden: no
    view_label: "Accounts"
    group_label: "Active Users"
    label: "Num Users Password Length Unknown"
    type: sum
    sql: ${accounts__num_users_password_length_unknown} ;;
    description: "Number of users whose password length is unknown"
  }

  measure: accounts_sum_num_users_password_strength_strong {
    hidden: no
    view_label: "Accounts"
    group_label: "Active Users"
    label: "Num Users Password Strength Strong"
    type: sum
    sql: ${accounts__num_users_password_strength_strong} ;;
    description: "Number of users whose password strength is strong"
  }

  measure: accounts_sum_num_users_password_strength_unknown {
    hidden: no
    view_label: "Accounts"
    group_label: "Active Users"
    label: "Num Users Password Strength Unknown"
    type: sum
    sql: ${accounts__num_users_password_strength_unknown} ;;
    description: "Number of users whose password strength is unknown"
  }

  measure: accounts_sum_num_users_password_strength_weak {
    hidden: no
    view_label: "Accounts"
    group_label: "Active Users"
    label: "Num Users Password Strength Weak"
    type: sum
    sql: ${accounts__num_users_password_strength_weak} ;;
    description: "Number of users whose password strength is weak"
  }

  measure: accounts_sum_num_users_used_quota_ge_50_lt_80percent {
    hidden: no
    view_label: "Accounts"
    group_label: "Quota"
    label: "Num Users Used Quota 50-80%"
    type: sum
    sql: ${accounts__num_users_used_quota_ge_50_lt_80percent} ;;
    description: "The number of users that have used between 50% to 80% of their storage quota."
  }

  measure: accounts_sum_num_users_used_quota_ge_80percent {
    hidden: no
    view_label: "Accounts"
    group_label: "Quota"
    label: "Num Users Used Quota >80%"
    type: sum
    sql: ${accounts__num_users_used_quota_ge_80percent} ;;
    description: "The number of users that have used more than 80% of their storage quota."
  }

  measure: accounts_sum_num_users_used_quota_lt_50percent {
    hidden: no
    view_label: "Accounts"
    group_label: "Quota"
    label: "Num Users Used Quota <50%"
    type: sum
    sql: ${accounts__num_users_used_quota_lt_50percent} ;;
    description: "The number of users that have used less than 50% of their storage quota."
  }

  measure: accounts_sum_team_drive_used_quota_in_mb {
    hidden: no
    view_label: "Accounts"
    group_label: "Quota"
    label: "Team Drive Used Quota In MB"
    type: sum
    sql: ${accounts__team_drive_used_quota_in_mb} ;;
    description: "Shared drive storage quota used in megabytes"
  }

  measure: accounts_sum_total_quota_in_mb {
    hidden: no
    view_label: "Accounts"
    group_label: "Quota"
    label: "Total Quota In MB"
    type: sum
    sql: ${accounts__total_quota_in_mb} ;;
    description: "Total storage quota (in MB) for the domain. A negative value is returned for customers that have enrolled in G Suite Business."
  }

  measure: accounts_sum_used_quota_in_mb {
    hidden: no
    view_label: "Accounts"
    group_label: "Quota"
    label: "Used Quota In MB"
    type: sum
    sql: ${accounts__used_quota_in_mb} ;;
    description: "Total storage quota (in MB) used by the domain."
  }

  measure: accounts_sum_vault_total_licenses {
    hidden: no
    view_label: "Accounts"
    group_label: "Licenses"
    label: "Vault Total Licenses"
    type: sum
    sql: ${accounts__vault_total_licenses} ;;
    description: "Total number of Google Vault licenses purchased for the domain."
  }

  measure: accounts_count_num_n_day_logins {
    hidden: no
    view_label: "Accounts"
    group_label: "Active Users [N Days]"
    label: "Count Active Users Logins [N Days]"
    type: sum
    sql: usage.accounts.num_{% parameter timeframe %}day_logins ;;
    description: "The number of account users who have logged in in the past N days from the date of this report."
  }

  measure: accounts_per_num_n_day_logins {
    hidden: no
    view_label: "Accounts"
    group_label: "Active Users [N Days]"
    label: "% Active Users Logins [N Days]"
    type: number
    sql: ${accounts_count_num_n_day_logins} / ${accounts_sum_num_active_users} ;;
    value_format_name: percent_1
    description: ""
  }

  # calendar
  # https://developers.google.com/admin-sdk/reports/v1/appendix/usage/customer/calendar

  measure: calendar_sum_num_1day_active_users {
    hidden: yes
    view_label: "Calendar"
    label: "Num 1Day Active"
    type: sum
    sql: ${calendar__num_1day_active_users} ;;
    description: "The number of users active in the previous day."
  }

  measure: calendar_sum_num_7day_active_users {
    hidden: yes
    view_label: "Calendar"
    label: "Num 7Day Active"
    type: sum
    sql: ${calendar__num_7day_active_users} ;;
    description: "The number of users active in the previous 7 days."
  }

  measure: calendar_sum_num_30day_active_users {
    hidden: yes
    view_label: "Calendar"
    label: "Num 30Day Active"
    type: sum
    sql: ${calendar__num_30day_active_users} ;;
    description: "The number of users active in the previous 30 days."
  }

  measure: calendar_count_num_n_day_active_users {
    hidden: no
    view_label: "Calendar"
    group_label: "Active Users [N Days]"
    label: "Count Active Users [N Days]"
    type: sum
    sql: usage.calendar.num_{% parameter timeframe %}day_active_users ;;
    description: "The number of users active in the previous N days."
  }

  measure: calendar_per_num_n_day_active_users {
    hidden: no
    view_label: "Calendar"
    group_label: "Active Users [N Days]"
    label: "% Active Users [N Days]"
    type: number
    sql: ${calendar_count_num_n_day_active_users} / ${accounts_sum_num_active_users} ;;
    value_format_name: percent_1
    description: "Count Active Users [N Days] / Num Active Users"
  }

  # drive
  # https://developers.google.com/admin-sdk/reports/v1/appendix/usage/customer/drive
  measure: drive_sum_num_collaborators {
    hidden: no
    view_label: "Drive"
    group_label: "Active Users"
    label: "Num Collaborators"
    type: sum
    sql: ${drive__num_collaborators} ;;
    description: "The number of domain users editing and commenting/suggesting/marking to-dos on files, but only on files they do not own."
  }

  measure: drive_sum_num_consumers {
    hidden: no
    view_label: "Drive"
    group_label: "Active Users"
    label: "Num Consumers"
    type: sum
    sql: ${drive__num_consumers} ;;
    description: "The number of domain users viewing files. This doesn't include printing or previewing."
  }

  measure: drive_sum_num_creators {
    hidden: no
    view_label: "Drive"
    group_label: "Active Users"
    label: "Num Creators"
    type: sum
    sql: ${drive__num_creators} ;;
    description: "The number of domain users who create files. Includes uploading content but not other addition type events, like untrashing, undeleting, or ownership transfer."
  }

  measure: drive_sum_num_sharers {
    hidden: no
    view_label: "Drive"
    group_label: "Active Users"
    label: "Num Sharers"
    type: sum
    sql: ${drive__num_sharers} ;;
    description: "The number of users with non-private visibility of a Google Drive item."
  }

  measure: drive_sum_num_1day_active_users {
    hidden: yes
    view_label: "Drive"
    group_label: "Active Users"
    label: "Num 1Day Drive Active Users"
    type: sum
    sql: ${drive__num_1day_active_users};;
    description: "The number of domain users who performed an activity related to content within Google Drive on a given report day."
  }

  measure: drive_sum_num_1day_google_documents_active_users {
    hidden: yes
    view_label: "Drive"
    group_label: "Active Users"
    label: "Num 1Day Docs Active Users"
    type: sum
    sql: ${drive__num_1day_google_documents_active_users};;
    description: "The number of domain users who performed an activity on Google Docs on this report date."
  }

  measure: drive_sum_num_1day_google_drawings_active_users {
    hidden: yes
    view_label: "Drive"
    group_label: "Active Users"
    label: "Num 1Day Drawings Active Users"
    type: sum
    sql: ${drive__num_1day_google_drawings_active_users};;
    description: "The number of domain users who performed an activity on Drawings on this report date."
  }

  measure: drive_sum_num_1day_google_forms_active_users {
    hidden: yes
    view_label: "Drive"
    group_label: "Active Users"
    label: "Num 1Day Forms Active Users"
    type: sum
    sql: ${drive__num_1day_google_forms_active_users};;
    description: "The number of domain users who performed an activity on Forms on this report date."
  }

  measure: drive_sum_num_1day_google_presentations_active_users {
    hidden: yes
    view_label: "Drive"
    group_label: "Active Users"
    label: "Num 1Day Slides Active Users"
    type: sum
    sql: ${drive__num_1day_google_presentations_active_users};;
    description: "The number of domain users who performed an activity on Slides on this report date."
  }

  measure: drive_sum_num_1day_google_sites_active_users {
    hidden: yes
    view_label: "Drive"
    group_label: "Active Users"
    label: "Num 1Day Sites Active Users"
    type: sum
    sql: ${drive__num_1day_google_sites_active_users};;
    description: "The number of domain users who performed an activity on Sites on this report date."
  }

  measure: drive_sum_num_1day_google_spreadsheets_active_users {
    hidden: yes
    view_label: "Drive"
    group_label: "Active Users"
    label: "Num 1Day Sheets Active Users"
    type: sum
    sql: ${drive__num_1day_google_spreadsheets_active_users};;
    description: "The number of domain users who performed an activity on Google Spreadsheets on this report date."
  }

  measure: drive_sum_num_1day_other_types_active_users {
    hidden: yes
    view_label: "Drive"
    group_label: "Active Users"
    label: "Num 1Day Other Types Active Users"
    type: sum
    sql: ${drive__num_1day_other_types_active_users};;
    description: "The number of domain users who performed an activity on any other Google Drive product on this report date."
  }

  measure: drive_sum_num_30day_active_users {
    hidden: yes
    view_label: "Drive"
    group_label: "Active Users"
    label: "Num 30Day Drive Active Users"
    type: sum
    sql: ${drive__num_30day_active_users};;
    description: "The number of domain users who performed an activity related to content within Google Drive in the past 30 days."
  }

  measure: drive_sum_num_30day_google_documents_active_users {
    hidden: yes
    view_label: "Drive"
    group_label: "Active Users"
    label: "Num 30Day Docs Active Users"
    type: sum
    sql: ${drive__num_30day_google_documents_active_users};;
    description: "The number of domain users who performed an activity on Docs at least once in the past 30 days."
  }

  measure: drive_sum_num_30day_google_drawings_active_users {
    hidden: yes
    view_label: "Drive"
    group_label: "Active Users"
    label: "Num 30Day Drawings Active Users"
    type: sum
    sql: ${drive__num_30day_google_drawings_active_users};;
    description: "The number of domain users who performed an activity on Drawings at least once in the past 30 days."
  }

  measure: drive_sum_num_30day_google_forms_active_users {
    hidden: yes
    view_label: "Drive"
    group_label: "Active Users"
    label: "Num 30Day Forms Active Users"
    type: sum
    sql: ${drive__num_30day_google_forms_active_users};;
    description: "The number of domain users who performed an activity on Forms at least once in the past 30 days."
  }

  measure: drive_sum_num_30day_google_presentations_active_users {
    hidden: yes
    view_label: "Drive"
    group_label: "Active Users"
    label: "Num 30Day Slides Active Users"
    type: sum
    sql: ${drive__num_30day_google_presentations_active_users};;
    description: "The number of domain users who performed an activity on Slides at least once in the past 30 days."
  }

  measure: drive_sum_num_30day_google_sites_active_users {
    hidden: yes
    view_label: "Drive"
    group_label: "Active Users"
    label: "Num 30Day Sites Active Users"
    type: sum
    sql: ${drive__num_30day_google_sites_active_users};;
    description: "The number of domain users who performed an activity on Sites at least once in the past 30 days."
  }

  measure: drive_sum_num_30day_google_spreadsheets_active_users {
    hidden: yes
    view_label: "Drive"
    group_label: "Active Users"
    label: "Num 30Day Sheets Active Users"
    type: sum
    sql: ${drive__num_30day_google_spreadsheets_active_users};;
    description: "The number of domain users who performed an activity on Google Spreadshets at least once in the past 30 days."
  }

  measure: drive_sum_num_30day_other_types_active_users {
    hidden: yes
    view_label: "Drive"
    group_label: "Active Users"
    label: "Num 30Day Other Types Active Users"
    type: sum
    sql: ${drive__num_30day_other_types_active_users};;
    description: "The number of domain users who performed an activity on any other Google Drive product at least once in the past 30 days."
  }

  measure: drive_sum_num_7day_active_users {
    hidden: yes
    view_label: "Drive"
    group_label: "Active Users"
    label: "Num 7Day Drive Active Users"
    type: sum
    sql: ${drive__num_7day_active_users};;
    description: "The number of domain users who performed an activity related to content within Google Drive in the past 7 days."
  }

  measure: drive_sum_num_7day_google_documents_active_users {
    hidden: yes
    view_label: "Drive"
    group_label: "Active Users"
    label: "Num 7Day Docs Active Users"
    type: sum
    sql: ${drive__num_7day_google_documents_active_users};;
    description: "The number of domain users who performed an activity on Docs at least once in the past 7 days."
  }

  measure: drive_sum_num_7day_google_drawings_active_users {
    hidden: yes
    view_label: "Drive"
    group_label: "Active Users"
    label: "Num 7Day Drawings Active Users"
    type: sum
    sql: ${drive__num_7day_google_drawings_active_users};;
    description: "The number of domain users who performed an activity on Drawings at least once in the past 7 days."
  }

  measure: drive_sum_num_7day_google_forms_active_users {
    hidden: yes
    view_label: "Drive"
    group_label: "Active Users"
    label: "Num 7Day Forms Active Users"
    type: sum
    sql: ${drive__num_7day_google_forms_active_users};;
    description: "The number of domain users who performed an activity on Forms at least once in the past 7 days."
  }

  measure: drive_sum_num_7day_google_presentations_active_users {
    hidden: yes
    view_label: "Drive"
    group_label: "Active Users"
    label: "Num 7Day Slides Active Users"
    type: sum
    sql: ${drive__num_7day_google_presentations_active_users};;
    description: "The number of domain users who performed an activity on Slides at least once in the past 7 days."
  }

  measure: drive_sum_num_7day_google_sites_active_users {
    hidden: yes
    view_label: "Drive"
    group_label: "Active Users"
    label: "Num 7Day Sites Active Users"
    type: sum
    sql: ${drive__num_7day_google_sites_active_users};;
    description: "The number of domain users who performed an activity on Sites at least once in the past 7 days."
  }

  measure: drive_sum_num_7day_google_spreadsheets_active_users {
    hidden: yes
    view_label: "Drive"
    group_label: "Active Users"
    label: "Num 7Day Sheets Active Users"
    type: sum
    sql: ${drive__num_7day_google_spreadsheets_active_users};;
    description: "The number of domain users who performed an activity on Google Spreadsheets at least once in the past 7 days."
  }

  measure: drive_sum_num_7day_other_types_active_users {
    hidden: yes
    view_label: "Drive"
    group_label: "Active Users"
    label: "Num 7Day Other Types Active Users"
    type: sum
    sql: ${drive__num_7day_other_types_active_users};;
    description: "The number of domain users who performed an activity on any other Google Drive product at least once in the past 7 days."
  }

  measure: drive_count_num_n_day_active_users {
    hidden: no
    view_label: "Drive"
    group_label: "Active Users [N Days]"
    label: "Count Active Users Drive [N Days]"
    type: sum
    sql: usage.drive.num_{% parameter timeframe %}day_active_users ;;
    description: "The number of domain users who performed an activity related to content within Google Drive in the past N days."
  }

  measure: drive_count_num_n_day_google_documents_active_users {
    hidden: no
    view_label: "Drive"
    group_label: "Active Users [N Days]"
    label: "Count Active Users Docs [N Days]"
    type: sum
    sql: usage.drive.num_{% parameter timeframe %}day_google_documents_active_users ;;
    description: "The number of domain users who performed an activity on Docs at least once in the past N days."
  }

  measure: drive_count_num_n_day_google_drawings_active_users {
    hidden: no
    view_label: "Drive"
    group_label: "Active Users [N Days]"
    label: "Count Active Users Drawings [N Days]"
    type: sum
    sql: usage.drive.num_{% parameter timeframe %}day_google_drawings_active_users ;;
    description: "The number of domain users who performed an activity on Drawings at least once in the past N days."
  }

  measure: drive_count_num_n_day_google_forms_active_users {
    hidden: no
    view_label: "Drive"
    group_label: "Active Users [N Days]"
    label: "Count Active Users Forms [N Days]"
    type: sum
    sql: usage.drive.num_{% parameter timeframe %}day_google_forms_active_users ;;
    description: "The number of domain users who performed an activity on Forms at least once in the past N days."
  }

  measure: drive_count_num_n_day_google_presentations_active_users {
    hidden: no
    view_label: "Drive"
    group_label: "Active Users [N Days]"
    label: "Count Active Users Slides [N Days]"
    type: sum
    sql: usage.drive.num_{% parameter timeframe %}day_google_presentations_active_users ;;
    description: "The number of domain users who performed an activity on Slides at least once in the past N days."
  }

  measure: drive_count_num_n_day_google_sites_active_users {
    hidden: no
    view_label: "Drive"
    group_label: "Active Users [N Days]"
    label: "Count Active Users Sites [N Days]"
    type: sum
    sql: usage.drive.num_{% parameter timeframe %}day_google_sites_active_users ;;
    description: "The number of domain users who performed an activity on Sites at least once in the past N days."
  }

  measure: drive_count_num_n_day_google_spreadsheets_active_users {
    hidden: no
    view_label: "Drive"
    group_label: "Active Users [N Days]"
    label: "Count Active Users Sheets [N Days]"
    type: sum
    sql: usage.drive.num_{% parameter timeframe %}day_google_spreadsheets_active_users ;;
    description: "The number of domain users who performed an activity on Google Sheets at least once in the past N days."
  }

  measure: drive_count_num_n_day_other_types_active_users {
    hidden: no
    view_label: "Drive"
    group_label: "Active Users [N Days]"
    label: "Count Active Users Other [N Days]"
    type: sum
    sql: usage.drive.num_{% parameter timeframe %}day_other_types_active_users ;;
    description: "The number of domain users who performed an activity on any other Google Drive product at least once in the past N days."
  }

  measure: drive_per_num_n_day_active_users {
    hidden: no
    view_label: "Drive"
    group_label: "Active Users [N Days]"
    label: "% Active Users Drive [N Days]"
    type: number
    sql: ${drive_count_num_n_day_active_users} / ${accounts_sum_num_active_users} ;;
    value_format_name: percent_1
    description: "Count Active Users Drive [N Days] / Num Active Users"
  }

  measure: drive_per_num_n_day_google_documents_active_users {
    hidden: no
    view_label: "Drive"
    group_label: "Active Users [N Days]"
    label: "% Active Users Docs [N Days]"
    type: number
    sql: ${drive_count_num_n_day_google_documents_active_users} / ${accounts_sum_num_active_users} ;;
    value_format_name: percent_1
    description: "Count Active Users Docs [N Days] / Num Active Users"
  }

  measure: drive_per_num_n_day_google_drawings_active_users {
    hidden: no
    view_label: "Drive"
    group_label: "Active Users [N Days]"
    label: "% Active Users Drawings [N Days]"
    type: number
    sql: ${drive_count_num_n_day_google_drawings_active_users} / ${accounts_sum_num_active_users} ;;
    value_format_name: percent_1
    description: "Count Active Users Drawings [N Days] / Num Active Users"
  }

  measure: drive_per_num_n_day_google_forms_active_users {
    hidden: no
    view_label: "Drive"
    group_label: "Active Users [N Days]"
    label: "% Active Users Forms [N Days]"
    type: number
    sql: ${drive_count_num_n_day_google_forms_active_users} / ${accounts_sum_num_active_users} ;;
    value_format_name: percent_1
    description: "Count Active Users Forms [N Days] / Num Active Users"
  }

  measure: drive_per_num_n_day_google_presentations_active_users {
    hidden: no
    view_label: "Drive"
    group_label: "Active Users [N Days]"
    label: "% Active Users Slides [N Days]"
    type: number
    sql: ${drive_count_num_n_day_google_presentations_active_users}  / ${accounts_sum_num_active_users} ;;
    value_format_name: percent_1
    description: "Count Active Users Slides [N Days] / Num Active Users"
  }

  measure: drive_per_num_n_day_google_sites_active_users {
    hidden: no
    view_label: "Drive"
    group_label: "Active Users [N Days]"
    label: "% Active Users Sites [N Days]"
    type: number
    sql: ${drive_count_num_n_day_google_sites_active_users} / ${accounts_sum_num_active_users} ;;
    value_format_name: percent_1
    description: "Count Active Users Sites [N Days] / Num Active Users"
  }

  measure: drive_per_num_n_day_google_spreadsheets_active_users {
    hidden: no
    view_label: "Drive"
    group_label: "Active Users [N Days]"
    label: "% Active Users Sheets [N Days]"
    type: number
    sql: ${drive_count_num_n_day_google_spreadsheets_active_users} / ${accounts_sum_num_active_users} ;;
    value_format_name: percent_1
    description: "Count Active Users Sheets [N Days] / Num Active Users"
  }

  measure: drive_per_num_n_day_other_types_active_users {
    hidden: no
    view_label: "Drive"
    group_label: "Active Users [N Days]"
    label: "% Active Users Other [N Days]"
    type: number
    sql: ${drive_count_num_n_day_other_types_active_users} / ${accounts_sum_num_active_users} ;;
    value_format_name: percent_1
    description: "Count Active Users Other [N Days] / Num Active Users"
  }

  # gmail
  # https://developers.google.com/admin-sdk/reports/v1/appendix/usage/customer/gmail
  measure: gmail_sum_num_1day_active_users {
    hidden: yes
    view_label: "Gmail"
    group_label: "Active Users"
    label: "Num 1Day Active Users"
    type: sum
    sql: ${gmail__num_1day_active_users} ;;
    description: "The number of active user Gmail accounts on the day of this report."
  }

  measure: gmail_sum_num_1day_imap_users {
    hidden: yes
    view_label: "Gmail"
    group_label: "Active Users"
    label: "Num 1Day Imap Users"
    type: sum
    sql: ${gmail__num_1day_imap_users} ;;
    description: "The number of users who accessed IMAP the day of this report."
  }

  measure: gmail_sum_num_1day_pop_users {
    hidden: yes
    view_label: "Gmail"
    group_label: "Active Users"
    label: "Num 1Day Pop Users"
    type: sum
    sql: ${gmail__num_1day_pop_users} ;;
    description: "The number of users who accessed POP the day of this report."
  }

  measure: gmail_sum_num_1day_webmail_users {
    hidden: yes
    view_label: "Gmail"
    group_label: "Active Users"
    label: "Num 1Day Webmail Users"
    type: sum
    sql: ${gmail__num_1day_webmail_users} ;;
    description: "The number of users who accessed their web Gmail accounts the day of this report."
  }

  measure: gmail_sum_num_30day_active_users {
    hidden: yes
    view_label: "Gmail"
    group_label: "Active Users"
    label: "Num 30Day Active Users"
    type: sum
    sql: ${gmail__num_30day_active_users} ;;
    description: "The number of active user Gmail accounts in the past 30 days from the date of this report."
  }

  measure: gmail_sum_num_30day_imap_users {
    hidden: yes
    view_label: "Gmail"
    group_label: "Active Users"
    label: "Num 30Day Imap Users"
    type: sum
    sql: ${gmail__num_30day_imap_users} ;;
    description: "The number of users who accessed IMAP in the past 30 days from the date of this report."
  }

  measure: gmail_sum_num_30day_pop_users {
    hidden: yes
    view_label: "Gmail"
    group_label: "Active Users"
    label: "Num 30Day Pop Users"
    type: sum
    sql: ${gmail__num_30day_pop_users} ;;
    description: "The number of users who accessed POP in the past 30 days from the date of this report."
  }

  measure: gmail_sum_num_30day_webmail_users {
    hidden: yes
    view_label: "Gmail"
    group_label: "Active Users"
    label: "Num 30Day Webmail Users"
    type: sum
    sql: ${gmail__num_30day_webmail_users} ;;
    description: "The number of users who accessed their web Gmail accounts in the past 30 days from the date of this report."
  }

  measure: gmail_sum_num_7day_active_users {
    hidden: yes
    view_label: "Gmail"
    group_label: "Active Users"
    label: "Num 7Day Active Users"
    type: sum
    sql: ${gmail__num_7day_active_users} ;;
    description: "The number of active user Gmail accounts in the past 7 days from the date of this report."
  }

  measure: gmail_sum_num_7day_imap_users {
    hidden: yes
    view_label: "Gmail"
    group_label: "Active Users"
    label: "Num 7Day Imap Users"
    type: sum
    sql: ${gmail__num_7day_imap_users} ;;
    description: "The number of users who accessed IMAP in the past 7 days from the date of this report."
  }

  measure: gmail_sum_num_7day_pop_users {
    hidden: yes
    view_label: "Gmail"
    group_label: "Active Users"
    label: "Num 7Day Pop Users"
    type: sum
    sql: ${gmail__num_7day_pop_users} ;;
    description: "The number of users who accessed POP in the past 7 days from the date of this report."
  }

  measure: gmail_sum_num_7day_webmail_users {
    hidden: yes
    view_label: "Gmail"
    group_label: "Active Users"
    label: "Num 7Day Webmail Users"
    type: sum
    sql: ${gmail__num_7day_webmail_users} ;;
    description: "The number of users who accessed their web Gmail accounts in the past 7 days from the date of this report."
  }

  measure: gmail_sum_num_emails_exchanged {
    hidden: no
    view_label: "Gmail"
    group_label: "Emails"
    label: "Num Emails Exchanged"
    type: sum
    sql: ${gmail__num_emails_exchanged} ;;
    description: "The total number of emails exchanged. This is the total of num_emails_sent plus num_emails_received."
  }

  measure: gmail_sum_num_emails_received {
    hidden: no
    view_label: "Gmail"
    group_label: "Emails"
    label: "Num Emails Received"
    type: sum
    sql: ${gmail__num_emails_received} ;;
    description: "The total influx of emails received on the date of this report."
  }

  measure: gmail_sum_num_emails_sent {
    hidden: no
    view_label: "Gmail"
    group_label: "Emails"
    label: "Num Emails Sent"
    type: sum
    sql: ${gmail__num_emails_sent} ;;
    description: "The number of emails sent on the date of this report."
  }

  measure: gmail_sum_num_inbound_delivered_emails {
    hidden: no
    view_label: "Gmail"
    group_label: "Emails"
    label: "Num Inbound Delivered Emails"
    type: sum
    sql: ${gmail__num_inbound_delivered_emails} ;;
    description: "The number of delivered inbound emails on the date of this report, rerouted emails are not included in this report."
  }

  measure: gmail_sum_num_inbound_encrypted_emails {
    hidden: no
    view_label: "Gmail"
    group_label: "Emails"
    label: "Num Inbound Encrypted Emails"
    type: sum
    sql: ${gmail__num_inbound_encrypted_emails} ;;
    description: "The number of encrypted inbound emails on the date of this report."
  }

  measure: gmail_sum_num_inbound_non_spam_emails {
    hidden: no
    view_label: "Gmail"
    group_label: "Emails"
    label: "Num Inbound Non Spam Emails"
    type: sum
    sql: ${gmail__num_inbound_non_spam_emails} ;;
    description: "The number of inbound non-spam emails on the date of this report."
  }

  measure: gmail_sum_num_inbound_rejected_emails {
    hidden: no
    view_label: "Gmail"
    group_label: "Emails"
    label: "Num Inbound Rejected Emails"
    type: sum
    sql: ${gmail__num_inbound_rejected_emails} ;;
    description: "The number of rejected inbound emails on the date of this report, rerouted emails are not included in this report."
  }

  measure: gmail_sum_num_inbound_rerouted_emails {
    hidden: no
    view_label: "Gmail"
    group_label: "Emails"
    label: "Num Inbound Rerouted Emails"
    type: sum
    sql: ${gmail__num_inbound_rerouted_emails} ;;
    description: "The number of rerouted inbound emails on the date of this report."
  }

  measure: gmail_sum_num_inbound_spam_emails {
    hidden: no
    view_label: "Gmail"
    group_label: "Emails"
    label: "Num Inbound Spam Emails"
    type: sum
    sql: ${gmail__num_inbound_spam_emails} ;;
    description: "The number of inbound spam emails on the date of this report."
  }

  measure: gmail_sum_num_inbound_unencrypted_emails {
    hidden: no
    view_label: "Gmail"
    group_label: "Emails"
    label: "Num Inbound Unencrypted Emails"
    type: sum
    sql: ${gmail__num_inbound_unencrypted_emails} ;;
    description: "The number of unencrypted inbound emails on the date of this report."
  }

  measure: gmail_sum_num_outbound_delivered_emails {
    hidden: no
    view_label: "Gmail"
    group_label: "Emails"
    label: "Num Outbound Delivered Emails"
    type: sum
    sql: ${gmail__num_outbound_delivered_emails} ;;
    description: "The number of delivered outbound emails on the date of this report. Rerouted emails are not included in this report."
  }

  measure: gmail_sum_num_outbound_encrypted_emails {
    hidden: no
    view_label: "Gmail"
    group_label: "Emails"
    label: "Num Outbound Encrypted Emails"
    type: sum
    sql: ${gmail__num_outbound_encrypted_emails} ;;
    description: "The number of encrypted outbound emails on the date of this report."
  }

  measure: gmail_sum_num_outbound_rejected_emails {
    hidden: no
    view_label: "Gmail"
    group_label: "Emails"
    label: "Num Outbound Rejected Emails"
    type: sum
    sql: ${gmail__num_outbound_rejected_emails} ;;
    description: "The number of rejected outbound emails on the date of this report. Rerouted emails are not included in this report."
  }

  measure: gmail_sum_num_outbound_rerouted_emails {
    hidden: no
    view_label: "Gmail"
    group_label: "Emails"
    label: "Num Outbound Rerouted Emails"
    type: sum
    sql: ${gmail__num_outbound_rerouted_emails} ;;
    description: "The number of rerouted outbound emails on the date of this report."
  }

  measure: gmail_sum_num_outbound_unencrypted_emails {
    hidden: no
    view_label: "Gmail"
    group_label: "Emails"
    label: "Num Outbound Unencrypted Emails"
    type: sum
    sql: ${gmail__num_outbound_unencrypted_emails} ;;
    description: "The number of unencrypted outbound emails on the date of this report."
  }

  measure: gmail_count_num_n_day_active_users {
    hidden: no
    view_label: "Gmail"
    group_label: "Active Users [N Days]"
    label: "Count Active Users [N Days]"
    type: sum
    sql: usage.gmail.num_{% parameter timeframe %}day_active_users ;;
    description: "The number of active user Gmail accounts in the past N days from the date of this report."
  }

  measure: gmail_count_num_n_day_imap_users {
    hidden: no
    view_label: "Gmail"
    group_label: "Active Users [N Days]"
    label: "Count Active Users IMAP [N Days]"
    type: sum
    sql: usage.gmail.num_{% parameter timeframe %}day_imap_users ;;
    description: "The number of users who accessed IMAP in the past N days from the date of this report."
  }

  measure: gmail_count_num_n_day_pop_users {
    hidden: no
    view_label: "Gmail"
    group_label: "Active Users [N Days]"
    label: "Count Active Users POP [N Days]"
    type: sum
    sql: usage.gmail.num_{% parameter timeframe %}day_pop_users ;;
    description: "The number of users who accessed POP in the past N days from the date of this report."
  }

  measure: gmail_count_num_n_day_webmail_users {
    hidden: no
    view_label: "Gmail"
    group_label: "Active Users [N Days]"
    label: "Count Active Users Webmail [N Days]"
    type: sum
    sql: usage.gmail.num_{% parameter timeframe %}day_webmail_users ;;
    description: "The number of users who accessed their web Gmail accounts in the past N days from the date of this report."
  }

  measure: gmail_per_num_n_day_active_users {
    hidden: no
    view_label: "Gmail"
    group_label: "Active Users [N Days]"
    label: "% Active Users [N Days]"
    type: number
    sql: ${gmail_count_num_n_day_active_users} / ${accounts_sum_num_active_users} ;;
    value_format_name: percent_1
    description: "Count Active Users [N Days] / Num Active Users"
  }

  measure: gmail_per_num_n_day_imap_users {
    hidden: no
    view_label: "Gmail"
    group_label: "Active Users [N Days]"
    label: "% Active Users IMAP [N Days]"
    type: number
    sql: ${gmail_count_num_n_day_imap_users} / ${accounts_sum_num_active_users} ;;
    value_format_name: percent_1
    description: "Count Active Users IMAP [N Days] / Num Active Users"
  }

  measure: gmail_per_num_n_day_pop_users {
    hidden: no
    view_label: "Gmail"
    group_label: "Active Users [N Days]"
    label: "% Active Users POP [N Days]"
    type: number
    sql: ${gmail_count_num_n_day_pop_users} / ${accounts_sum_num_active_users} ;;
    value_format_name: percent_1
    description: "Count Active Users POP [N Days] / Num Active Users"
  }

  measure: gmail_per_num_n_day_webmail_users {
    hidden: no
    view_label: "Gmail"
    group_label: "Active Users [N Days]"
    label: "% Active Users Webmail [N Days]"
    type: number
    sql: ${gmail_count_num_n_day_webmail_users} / ${accounts_sum_num_active_users} ;;
    value_format_name: percent_1
    description: "Count Active Users Webmail [N Days] / Num Active Users"
  }

  # meet
  # https://developers.google.com/admin-sdk/reports/v1/appendix/usage/customer/meet

  measure: meet_sum_average_meeting_minutes {
    hidden: no
    view_label: "Meet"
    group_label: "Minutes"
    label: "Average Meeting Minutes"
    type: sum
    sql: ${meet__average_meeting_minutes} ;;
    description: "This indicates a customer's average duration of meetings in minutes."
  }

  measure: meet_sum_average_meeting_minutes_with_11_to_15_calls {
    hidden: no
    view_label: "Meet"
    group_label: "Minutes"
    label: "Average Meeting Minutes With 11 To 15 Calls"
    type: sum
    sql: ${meet__average_meeting_minutes_with_11_to_15_calls} ;;
    description: "This indicates a customer's average duration of meetings in minutes broken down by a maximum of 11 to 15 concurrent calls."
  }

  measure: meet_sum_average_meeting_minutes_with_16_to_25_calls {
    hidden: no
    view_label: "Meet"
    group_label: "Minutes"
    label: "Average Meeting Minutes With 16 To 25 Calls"
    type: sum
    sql: ${meet__average_meeting_minutes_with_16_to_25_calls} ;;
    description: "This indicates a customer's average duration of meetings in minutes broken down by maximum of 16 to 25 concurrent calls."
  }

  measure: meet_sum_average_meeting_minutes_with_26_to_50_calls {
    hidden: no
    view_label: "Meet"
    group_label: "Minutes"
    label: "Average Meeting Minutes With 26 To 50 Calls"
    type: sum
    sql: ${meet__average_meeting_minutes_with_26_to_50_calls} ;;
    description: "This indicates a customer's average duration of meetings in minutes broken down by maximum of 26 to 50 concurrent calls."
  }

  measure: meet_sum_average_meeting_minutes_with_2_calls {
    hidden: no
    view_label: "Meet"
    group_label: "Minutes"
    label: "Average Meeting Minutes With 2 Calls"
    type: sum
    sql: ${meet__average_meeting_minutes_with_2_calls} ;;
    description: "This indicates a customer's average duration of meetings in minutes broken down by maximum of 2 concurrent calls."
  }

  measure: meet_sum_average_meeting_minutes_with_3_to_5_calls {
    hidden: no
    view_label: "Meet"
    group_label: "Minutes"
    label: "Average Meeting Minutes With 3 To 5 Calls"
    type: sum
    sql: ${meet__average_meeting_minutes_with_3_to_5_calls} ;;
    description: "This indicates a customer's average duration of meetings in minutes broken down by maximum of 3 to 5 concurrent calls."
  }

  measure: meet_sum_average_meeting_minutes_with_6_to_10_calls {
    hidden: no
    view_label: "Meet"
    group_label: "Minutes"
    label: "Average Meeting Minutes With 6 To 10 Calls"
    type: sum
    sql: ${meet__average_meeting_minutes_with_6_to_10_calls} ;;
    description: "This indicates a customer's average duration of meetings in minutes broken down by maximum of 6 to 10 concurrent calls."
  }

  measure: meet_sum_lonely_meetings {
    hidden: no
    view_label: "Meet"
    group_label: "Meetings"
    label: "Lonely Meetings"
    type: sum
    sql: ${meet__lonely_meetings} ;;
    description: "The number of meetings that have less than 2 concurrent calls. These meetings are not counted in num_meetings and related metrics."
  }

  measure: meet_sum_max_concurrent_usage_chromebase {
    hidden: no
    view_label: "Meet"
    group_label: "Meetings"
    label: "Max Concurrent Usage Chromebase"
    type: sum
    sql: ${meet__max_concurrent_usage_chromebase} ;;
    description: "The number of Chromebase devices connected to internal meetings at the same time."
  }

  measure: meet_sum_max_concurrent_usage_chromebox {
    hidden: no
    view_label: "Meet"
    group_label: "Meetings"
    label: "Max Concurrent Usage Chromebox"
    type: sum
    sql: ${meet__max_concurrent_usage_chromebox} ;;
    description: "The number of Chromebox devices connected to internal meetings at the same time."
  }

  measure: meet_sum_num_1day_active_users {
    hidden: yes
    view_label: "Meet"
    group_label: "Active Users"
    label: "Num 1Day Active Users"
    type: sum
    sql: ${meet__num_1day_active_users} ;;
    description: "The number of users active in the previous day."
  }

  measure: meet_sum_num_30day_active_users {
    hidden: yes
    view_label: "Meet"
    group_label: "Active Users"
    label: "Num 30Day Active Users"
    type: sum
    sql: ${meet__num_30day_active_users} ;;
    description: "The number of users active in the previous 30 days."
  }

  measure: meet_sum_num_7day_active_users {
    hidden: yes
    view_label: "Meet"
    group_label: "Active Users"
    label: "Num 7Day Active Users"
    type: sum
    sql: ${meet__num_7day_active_users} ;;
    description: "The number of users active in the previous 7 days."
  }

  measure: meet_sum_num_calls {
    hidden: no
    view_label: "Meet"
    group_label: "Calls"
    label: "Num Calls"
    type: sum
    sql: ${meet__num_calls} ;;
    description: "The total number of calls organized by users."
  }

  measure: meet_sum_num_calls_android {
    hidden: no
    view_label: "Meet"
    group_label: "Calls"
    label: "Num Calls Android"
    type: sum
    sql: ${meet__num_calls_android} ;;
    description: "The total number of calls on the date of this report from Android devices."
  }

  measure: meet_sum_num_calls_by_external_users {
    hidden: no
    view_label: "Meet"
    group_label: "Calls"
    label: "Num Calls By External Users"
    type: sum
    sql: ${meet__num_calls_by_external_users} ;;
    description: "The total number of calls by external users to meetings on the date of this report."
  }

  measure: meet_sum_num_calls_by_internal_users {
    hidden: no
    view_label: "Meet"
    group_label: "Calls"
    label: "Num Calls By Internal Users"
    type: sum
    sql: ${meet__num_calls_by_internal_users} ;;
    description: "The total number of calls by internal users to meetings on the date of this report."
  }

  measure: meet_sum_num_calls_by_pstn_in_users {
    hidden: no
    view_label: "Meet"
    group_label: "Calls"
    label: "Num Calls By Pstn In Users"
    type: sum
    sql: ${meet__num_calls_by_pstn_in_users} ;;
    description: "The total number of PSTN calls that dialed-in to meetings on the date of this report"
  }

  measure: meet_sum_num_calls_by_pstn_out_users {
    hidden: no
    view_label: "Meet"
    group_label: "Calls"
    label: "Num Calls By Pstn Out Users"
    type: sum
    sql: ${meet__num_calls_by_pstn_out_users} ;;
    description: "The total number of PSTN calls that dialed-out from meetings on the date of this report"
  }

  measure: meet_sum_num_calls_chromebase {
    hidden: no
    view_label: "Meet"
    group_label: "Calls"
    label: "Num Calls Chromebase"
    type: sum
    sql: ${meet__num_calls_chromebase} ;;
    description: "The total number of calls on the date of this report by Chromebase devices."
  }

  measure: meet_sum_num_calls_chromebox {
    hidden: no
    view_label: "Meet"
    group_label: "Calls"
    label: "Num Calls Chromebox"
    type: sum
    sql: ${meet__num_calls_chromebox} ;;
    description: "The total number of calls on the date of this report by Chromebox devices."
  }

  measure: meet_sum_num_calls_ios {
    hidden: no
    view_label: "Meet"
    group_label: "Calls"
    label: "Num Calls Ios"
    type: sum
    sql: ${meet__num_calls_ios} ;;
    description: "The total number of calls on the date of this report by iOS devices."
  }

  measure: meet_sum_num_calls_jamboard {
    hidden: no
    view_label: "Meet"
    group_label: "Calls"
    label: "Num Calls Jamboard"
    type: sum
    sql: ${meet__num_calls_jamboard} ;;
    description: "The total number of calls on the date of this report by Jamboards."
  }

  measure: meet_sum_num_calls_unknown_client {
    hidden: no
    view_label: "Meet"
    group_label: "Calls"
    label: "Num Calls Unknown Client"
    type: sum
    sql: ${meet__num_calls_unknown_client} ;;
    description: "The total number of calls on the date of this report by unknown clients."
  }

  measure: meet_sum_num_calls_web {
    hidden: no
    view_label: "Meet"
    group_label: "Calls"
    label: "Num Calls Web"
    type: sum
    sql: ${meet__num_calls_web} ;;
    description: "The total number of calls on the date of this report by web clients."
  }

  measure: meet_sum_num_meetings {
    hidden: no
    view_label: "Meet"
    group_label: "Meetings"
    label: "Num Meetings"
    type: sum
    sql: ${meet__num_meetings} ;;
    description: "The total number of Meet meetings held on the date of this report."
  }

  measure: meet_sum_num_meetings_android {
    hidden: no
    view_label: "Meet"
    group_label: "Meetings"
    label: "Num Meetings Android"
    type: sum
    sql: ${meet__num_meetings_android} ;;
    description: "The total number of Meet meetings held on the date of this report that include at least one call from an Android device."
  }

  measure: meet_sum_num_meetings_chromebase {
    hidden: no
    view_label: "Meet"
    group_label: "Meetings"
    label: "Num Meetings Chromebase"
    type: sum
    sql: ${meet__num_meetings_chromebase} ;;
    description: "The total number of Meet meetings held on the date of this report that include at least one call from a Chromebase device."
  }

  measure: meet_sum_num_meetings_chromebox {
    hidden: no
    view_label: "Meet"
    group_label: "Meetings"
    label: "Num Meetings Chromebox"
    type: sum
    sql: ${meet__num_meetings_chromebox} ;;
    description: "Parameter to indicate a customer's total number of Meet meetings held on the date of this report that include at least one call from a Chromebox device."
  }

  measure: meet_sum_num_meetings_ios {
    hidden: no
    view_label: "Meet"
    group_label: "Meetings"
    label: "Num Meetings Ios"
    type: sum
    sql: ${meet__num_meetings_ios} ;;
    description: "The total number of Meet meetings held on the date of this report that include at least one call from an iOS device."
  }

  measure: meet_sum_num_meetings_jamboard {
    hidden: no
    view_label: "Meet"
    group_label: "Meetings"
    label: "Num Meetings Jamboard"
    type: sum
    sql: ${meet__num_meetings_jamboard} ;;
    description: "The total number of Meet meetings held on the date of this report that include at least one call from a Jamboard."
  }

  measure: meet_sum_num_meetings_unknown_client {
    hidden: no
    view_label: "Meet"
    group_label: "Meetings"
    label: "Num Meetings Unknown Client"
    type: sum
    sql: ${meet__num_meetings_unknown_client} ;;
    description: "The total number of Meet meetings held on the date of this report that include at least one call from an unknown client."
  }

  measure: meet_sum_num_meetings_web {
    hidden: no
    view_label: "Meet"
    group_label: "Meetings"
    label: "Num Meetings Web"
    type: sum
    sql: ${meet__num_meetings_web} ;;
    description: "The total number of Meet meetings held on the date of this report that include at least one call from a web client."
  }

  measure: meet_sum_num_meetings_with_11_to_15_calls {
    hidden: no
    view_label: "Meet"
    group_label: "Meetings"
    label: "Num Meetings With 11 To 15 Calls"
    type: sum
    sql: ${meet__num_meetings_with_11_to_15_calls} ;;
    description: "This indicates a customer's number of meetings broken down by the maximum number of concurrent calls."
  }

  measure: meet_sum_num_meetings_with_16_to_25_calls {
    hidden: no
    view_label: "Meet"
    group_label: "Meetings"
    label: "Num Meetings With 16 To 25 Calls"
    type: sum
    sql: ${meet__num_meetings_with_16_to_25_calls} ;;
    description: "This indicates a customer's number of meetings broken down by the maximum number of concurrent calls."
  }

  measure: meet_sum_num_meetings_with_26_to_50_calls {
    hidden: no
    view_label: "Meet"
    group_label: "Meetings"
    label: "Num Meetings With 26 To 50 Calls"
    type: sum
    sql: ${meet__num_meetings_with_26_to_50_calls} ;;
    description: "This indicatese a customer's number of meetings broken down by the maximum number of concurrent calls."
  }

  measure: meet_sum_num_meetings_with_2_calls {
    hidden: no
    view_label: "Meet"
    group_label: "Meetings"
    label: "Num Meetings With 2 Calls"
    type: sum
    sql: ${meet__num_meetings_with_2_calls} ;;
    description: "The number of meetings broken down by the maximum number of concurrent calls."
  }

  measure: meet_sum_num_meetings_with_3_to_5_calls {
    hidden: no
    view_label: "Meet"
    group_label: "Meetings"
    label: "Num Meetings With 3 To 5 Calls"
    type: sum
    sql: ${meet__num_meetings_with_3_to_5_calls} ;;
    description: "This indicates a customer's number of meetings broken down by the maximum number of concurrent calls."
  }

  measure: meet_sum_num_meetings_with_6_to_10_calls {
    hidden: no
    view_label: "Meet"
    group_label: "Meetings"
    label: "Num Meetings With 6 To 10 Calls"
    type: sum
    sql: ${meet__num_meetings_with_6_to_10_calls} ;;
    description: "This indicates a customer's number of meetings broken down by the maximum number of concurrent calls."
  }

  measure: meet_sum_num_meetings_with_external_users {
    hidden: no
    view_label: "Meet"
    group_label: "Meetings"
    label: "Num Meetings With External Users"
    type: sum
    sql: ${meet__num_meetings_with_external_users} ;;
    description: "The total number of Meet meetings that include at least one external user or caller."
  }

  measure: meet_sum_num_meetings_with_pstn_in_users {
    hidden: no
    view_label: "Meet"
    group_label: "Meetings"
    label: "Num Meetings With Pstn In Users"
    type: sum
    sql: ${meet__num_meetings_with_pstn_in_users} ;;
    description: "The total number of Meet meetings held on the date of this report that include at least one user connected through PSTN dial-in."
  }

  measure: meet_sum_num_meetings_with_pstn_out_users {
    hidden: no
    view_label: "Meet"
    group_label: "Meetings"
    label: "Num Meetings With Pstn Out Users"
    type: sum
    sql: ${meet__num_meetings_with_pstn_out_users} ;;
    description: "The total number of Meet meetings held on the date of this report that include at least one user connected through PSTN dial-out."
  }

  measure: meet_sum_total_call_minutes {
    hidden: no
    view_label: "Meet"
    group_label: "Calls"
    label: "Total Call Minutes"
    type: sum
    sql: ${meet__total_call_minutes} ;;
    description: "The sum of all connected calls on the date of this report."
  }

  measure: meet_sum_total_call_minutes_android {
    hidden: no
    view_label: "Meet"
    group_label: "Calls"
    label: "Total Call Minutes Android"
    type: sum
    sql: ${meet__total_call_minutes_android} ;;
    description: "The total duration of calls on the date of this report by Android devices."
  }

  measure: meet_sum_total_call_minutes_by_external_users {
    hidden: no
    view_label: "Meet"
    group_label: "Calls"
    label: "Total Call Minutes By External Users"
    type: sum
    sql: ${meet__total_call_minutes_by_external_users} ;;
    description: "The total duration of external Meet client calls in meetings on the date of this report."
  }

  measure: meet_sum_total_call_minutes_by_internal_users {
    hidden: no
    view_label: "Meet"
    group_label: "Calls"
    label: "Total Call Minutes By Internal Users"
    type: sum
    sql: ${meet__total_call_minutes_by_internal_users} ;;
    description: "The total duration of meeting connect calls made by organization users on the date of this report."
  }

  measure: meet_sum_total_call_minutes_by_pstn_in_users {
    hidden: no
    view_label: "Meet"
    group_label: "Calls"
    label: "Total Call Minutes By Pstn In Users"
    type: sum
    sql: ${meet__total_call_minutes_by_pstn_in_users} ;;
    description: "The total duration of PSTN calls dialing into meetings on the date of this report."
  }

  measure: meet_sum_total_call_minutes_by_pstn_out_users {
    hidden: no
    view_label: "Meet"
    group_label: "Calls"
    label: "Total Call Minutes By Pstn Out Users"
    type: sum
    sql: ${meet__total_call_minutes_by_pstn_out_users} ;;
    description: "The total duration of PSTN calls dialing out from meetings on the date of this report."
  }

  measure: meet_sum_total_call_minutes_chromebase {
    hidden: no
    view_label: "Meet"
    group_label: "Calls"
    label: "Total Call Minutes Chromebase"
    type: sum
    sql: ${meet__total_call_minutes_chromebase} ;;
    description: "The total duration of calls on the date of this report by Chromebase devices."
  }

  measure: meet_sum_total_call_minutes_chromebox {
    hidden: no
    view_label: "Meet"
    group_label: "Calls"
    label: "Total Call Minutes Chromebox"
    type: sum
    sql: ${meet__total_call_minutes_chromebox} ;;
    description: "The total duration of calls on the date of this report by Chromebox devices."
  }

  measure: meet_sum_total_call_minutes_ios {
    hidden: no
    view_label: "Meet"
    group_label: "Calls"
    label: "Total Call Minutes Ios"
    type: sum
    sql: ${meet__total_call_minutes_ios} ;;
    description: "The total duration of calls on the date of this report by iOS devices."
  }

  measure: meet_sum_total_call_minutes_jamboard {
    hidden: no
    view_label: "Meet"
    group_label: "Calls"
    label: "Total Call Minutes Jamboard"
    type: sum
    sql: ${meet__total_call_minutes_jamboard} ;;
    description: "The total duration of calls on the date of this report by Jamboards."
  }

  measure: meet_sum_total_call_minutes_unknown_client {
    hidden: no
    view_label: "Meet"
    group_label: "Calls"
    label: "Total Call Minutes Unknown Client"
    type: sum
    sql: ${meet__total_call_minutes_unknown_client} ;;
    description: "The total duration of calls on the date of this report by unknown clients."
  }

  measure: meet_sum_total_call_minutes_web {
    hidden: no
    view_label: "Meet"
    group_label: "Calls"
    label: "Total Call Minutes Web"
    type: sum
    sql: ${meet__total_call_minutes_web} ;;
    description: "The total duration of calls on the date of this report by web clients."
  }

  measure: meet_sum_total_meeting_minutes {
    hidden: no
    view_label: "Meet"
    group_label: "Minutes"
    label: "Total Meeting Minutes"
    type: sum
    sql: ${meet__total_meeting_minutes} ;;
    description: "The total meeting duration on the date of this report."
  }

  measure: meet_count_num_n_day_active_users {
    hidden: no
    view_label: "Meet"
    group_label: "Active Users [N Days]"
    label: "Count Active Users [N Days]"
    type: sum
    sql: usage.meet.num_{% parameter timeframe %}day_active_users ;;
    description: "The number of users active in the previous N days."
  }

  measure: meet_per_num_n_day_active_users {
    hidden: no
    view_label: "Meet"
    group_label: "Active Users [N Days]"
    label: "% Active Users [N Days]"
    type: number
    sql: ${meet_count_num_n_day_active_users} / ${accounts_sum_num_active_users} ;;
    value_format_name: percent_1
    description: "Count Active Users [N Days] / Num Active Users"
  }


  # todo
  # missing documented: classroom, ChromeOS Devices (cros), currents, sites, mobile devices (device_management)
  # missing non documented: voice, gplus, apps_scripts, app_maker
  # not in schema: chat
}
