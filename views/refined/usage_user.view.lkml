include: "usage.view"

# API reference for user usage logs in BigQuery:
# https://developers.google.com/admin-sdk/reports/v1/appendix/usage/user
view: usage_user {
  extends: [usage]

  dimension: user_email {
    hidden: no
  }

  # accounts
  # https://developers.google.com/admin-sdk/reports/v1/appendix/usage/user/accounts
  dimension: accounts__admin_set_name {
    view_label: "Accounts"
    group_label: ""
    hidden: no
    description: "The user's name as it was defined by the admin in the Admin console."
  }

  dimension: accounts__is_disabled {
    view_label: "Accounts"
    group_label: ""
    hidden: no
    description: "If true, the user account is disabled."
  }

  dimension: accounts__disabled_reason {
    view_label: "Accounts"
    group_label: ""
    hidden: no
    description: "The reason a user account is disabled, given by the administrator or by Google at the time of disabling."
  }

  dimension: accounts__domain_name {
    view_label: "Accounts"
    group_label: ""
    hidden: no
    description: "The name of the domain."
  }

  dimension: accounts__drive_used_quota_in_mb {
    view_label: "Accounts"
    group_label: ""
    hidden: no
    description: "The storage (in MB) used by the user for data in Drive."
  }

  dimension: accounts__first_name {
    view_label: "Accounts"
    group_label: ""
    hidden: no
    description: "The user's first name."
  }

  dimension: accounts__gmail_used_quota_in_mb {
    view_label: "Accounts"
    group_label: ""
    hidden: no
    description: "The storage (in MB) used by the user for data in Gmail."
  }

  dimension: accounts__gplus_photos_used_quota_in_mb {
    view_label: "Accounts"
    group_label: ""
    hidden: no
    description: "The storage (in MB) used by the user for data in Google Photos and Currents."
  }

  dimension: accounts__is_2sv_enforced {
    view_label: "Accounts"
    group_label: ""
    hidden: no
    description: "If true, the user account has been enforced for 2-step verification."
  }

  dimension: accounts__is_2sv_enrolled {
    view_label: "Accounts"
    group_label: ""
    hidden: no
    description: "If true, the user account is enrolled for 2-step verification"
  }

  dimension: accounts__is_archived {
    view_label: "Accounts"
    group_label: ""
    hidden: no
    description: "If true, the user account is archived."
  }

  dimension: accounts__is_delegated_admin {
    view_label: "Accounts"
    group_label: ""
    hidden: no
    description: "If true, the user is a delegated administrator."
  }

  dimension: accounts__is_less_secure_apps_access_allowed {
    view_label: "Accounts"
    group_label: ""
    hidden: no
    description: "Identifies whether the user is allowed access to less secure apps."
  }

  dimension: accounts__is_super_admin {
    view_label: "Accounts"
    group_label: ""
    hidden: no
    description: "If true, the user is a super administrator."
  }

  dimension: accounts__is_suspended {
    view_label: "Accounts"
    group_label: ""
    hidden: no
    description: "If true, the user account is suspended."
  }

  dimension: accounts__last_name {
    view_label: "Accounts"
    group_label: ""
    hidden: no
    description: "The user's last name."
  }

  dimension: accounts__num_authorized_apps {
    view_label: "Accounts"
    group_label: ""
    hidden: no
    description: "The number of third party applications authorized to access the user's data."
  }

  dimension: accounts__num_roles_assigned {
    view_label: "Accounts"
    group_label: ""
    hidden: no
    description: "The number of administrator roles assigned to the user."
  }

  dimension: accounts__num_security_keys {
    view_label: "Accounts"
    group_label: ""
    hidden: no
    description: "The number of security keys enrolled by the user."
  }

  dimension: accounts__password_length_compliance {
    view_label: "Accounts"
    group_label: ""
    hidden: no
    description: "User's password length compliance."
  }

  dimension: accounts__password_strength {
    view_label: "Accounts"
    group_label: ""
    hidden: no
    description: "User's password strength."
  }

  dimension: accounts__creation_time {
    view_label: "Accounts"
    group_label: ""
    hidden: no
    description: "Timestamp when the account was created."
  }

  dimension: accounts__last_login_time {
    view_label: "Accounts"
    group_label: ""
    hidden: no
    description: "The time when the user last logged into the user's account"
  }

  dimension: accounts__last_sso_time {
    view_label: "Accounts"
    group_label: ""
    hidden: no
    description: "The time when the user last logged into the user's account using Single Sign-On (SSO)."
  }

  dimension: accounts__total_quota_in_mb {
    view_label: "Accounts"
    group_label: ""
    hidden: no
    description: "The total storage (in MB) for the user."
  }

  dimension: accounts__used_quota_in_mb {
    view_label: "Accounts"
    group_label: ""
    hidden: no
    description: "The total storage (in MB) used by the user."
  }

  dimension: accounts__used_quota_in_percentage {
    view_label: "Accounts"
    group_label: ""
    hidden: no
    description: "The percentage of the user's total storage quota that is used."
  }

  dimension: accounts__user_has_overridden_name {
    view_label: "Accounts"
    group_label: ""
    hidden: no
    description: "If true, the user has changed their Currents profile name. This user has a display name that is different than the name defined by their admin."
  }

  # drive
  # https://developers.google.com/admin-sdk/reports/v1/appendix/usage/user/drive
  measure: last_active_usage {
    hidden: no
    view_label: "Drive"
    label: " Last Active Usage"
    sql: MAX(TIMESTAMP_SECONDS(${drive__timestamp_last_active_usage})) ;;
    type: date_time
  }

  # gmail
  # https://developers.google.com/admin-sdk/reports/v1/appendix/usage/user/gmail
  dimension: gmail__is_gmail_enabled {
    view_label: "Gmail"
    group_label: ""
    hidden: no
    description: "If true, the user's Gmail service is enabled."
  }

  dimension: gmail__last_access_time {
    view_label: "Gmail"
    group_label: ""
    hidden: yes
    description: "Last access timestamp"
  }

  dimension: gmail__last_imap_time {
    view_label: "Gmail"
    group_label: ""
    hidden: yes
    description: "Last imap access timestamp"
  }

  dimension: gmail__last_interaction_time {
    view_label: "Gmail"
    group_label: ""
    hidden: yes
    description: "Last interactive access timestamp"
  }

  dimension: gmail__last_pop_time {
    view_label: "Gmail"
    group_label: ""
    hidden: yes
    description: "Last pop access timestamp"
  }

  dimension: gmail__last_webmail_time {
    view_label: "Gmail"
    group_label: ""
    hidden: yes
    description: "Last web access timestamp"
  }

  measure: max_gmail__last_access_time {
    view_label: "Gmail"
    group_label: "Last Timestamp"
    label: "Last Access Time"
    hidden: no
    description: "Last access timestamp"
    type: date_time
    sql: MAX(TIMESTAMP_SECONDS(${gmail__last_access_time})) ;;
  }

  measure: max_gmail__last_imap_time {
    view_label: "Gmail"
    group_label: "Last Timestamp"
    label: "Last IMAP Time"
    hidden: no
    description: "Last IMAP access timestamp"
    type: date_time
    sql: MAX(TIMESTAMP_SECONDS(${gmail__last_imap_time})) ;;
  }

  measure: max_gmail__last_interaction_time {
    view_label: "Gmail"
    group_label: "Last Timestamp"
    label: "Last Interaction Time"
    hidden: no
    description: "Last interactive access timestamp"
    type: date_time
    sql: MAX(TIMESTAMP_SECONDS(${gmail__last_interaction_time})) ;;
  }

  measure: max_gmail__last_pop_time {
    view_label: "Gmail"
    group_label: "Last Timestamp"
    label: "Last POP Time"
    hidden: no
    description: "Last pop access timestamp"
    type: date_time
    sql: MAX(TIMESTAMP_SECONDS(${gmail__last_pop_time})) ;;
  }

  measure: max_gmail__last_webmail_time {
    view_label: "Gmail"
    group_label: "Last Timestamp"
    label: "Last Webmail Time"
    hidden: no
    description: "Last web access timestamp"
    type: date_time
    sql: MAX(TIMESTAMP_SECONDS(${gmail__last_webmail_time})) ;;
  }

  measure: sum_gmail__num_emails_exchanged {
    hidden: no
    view_label: "Gmail"
    group_label: "Email Counts"
    label: "Num Emails Exchanged"
    description: "The total number of emails exchanged. This is the total of num_emails_sent plus num_emails_received."
    type: sum
    sql: ${gmail__num_emails_exchanged} ;;
  }

  measure: sum_gmail__num_emails_received {
    hidden: no
    view_label: "Gmail"
    group_label: "Email Counts"
    label: "Num Emails Received"
    description: "The number of emails received by the user."
    type: sum
    sql: ${gmail__num_emails_received} ;;
  }

  measure: sum_gmail__num_emails_sent {
    hidden: no
    view_label: "Gmail"
    group_label: "Email Counts"
    label: "Num Emails Sent"
    description: "The number of emails sent by the user."
    type: sum
    sql: ${gmail__num_emails_sent} ;;
  }

  measure: sum_gmail__num_spam_emails_received {
    hidden: no
    view_label: "Gmail"
    group_label: "Email Counts"
    label: "Num Spam Emails Received"
    description: "The number of emails received by the user's marked as spam mail."
    type: sum
    sql: ${gmail__num_spam_emails_received} ;;
  }

  measure: count_user_email {
    hidden: no
    label: "Count of Users"
    description: "The number of user emails"
    type: count_distinct
    sql: ${user_email} ;;
  }

  # todo add classroom and currents data
}
