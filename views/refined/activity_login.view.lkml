include: "activity.view"

# API reference for login logs in BigQuery:
# https://developers.google.com/admin-sdk/reports/v1/appendix/activity/login
view: login {
  extends: [activity]

  dimension: login__affected_email_address {
    hidden: no
    view_label: "Login"
    group_label: ""
    label: "Affected Email Address"
    description: "Email address of the user affected by the event"
  }

  dimension: login__is_second_factor {
    hidden: no
    view_label: "Login"
    group_label: ""
    description: "Whether the login verification is 2SV"
  }

  dimension: login__is_suspicious {
    hidden: no
    view_label: "Login"
    group_label: ""
    description: "The login attempt had some unusual characteristics, for example the user logged in from an unfamiliar IP address"
  }

  dimension: login__login_challenge_status {
    hidden: no
    view_label: "Login"
    group_label: ""
    label: "Challenge Status"
    description: "Whether the login challenge succeeded or failed"
  }

  dimension: login__login_failure_type {
    hidden: no
    view_label: "Login"
    group_label: ""
    label: "Failure Type"
    description: "The reason for the login failure. Possible values:
      login_failure_access_code_disallowed, login_failure_account_disabled,
      login_failure_invalid_password, login_failure_unknown"
  }

  dimension: login__login_type {
    hidden: no
    view_label: "Login"
    group_label: ""
    label: "Type"
    description: "The type of credentials used to attempt login. Possible values:
      exchange, google_password, reauth, saml, unknown"
  }

  measure: account_warning_event_count {
    hidden: no
    view_label: "Login"
    description: "Count of logins when event_type = 'account_warning'. Possible values:
      account_disabled_generic, account_disabled_password_leak, account_disabled_hijacked,
      account_disabled_spamming, account_disabled_spamming_through_relay, passkey_enrolled,
      passkey_removed, suspicious_login, suspicious_login_less_secure_app, suspicious_programmatic_login,
      user_signed_out_due_to_suspicious_session_cookie.
      Drill in to Login Affected Email Address"
    type: count
    allow_approximate_optimization: yes
    filters: [event_type: "account^_warning"]
    drill_fields: [activity_login*, login__affected_email_address]
  }

  measure: suspicious_login_count {
    hidden: no
    view_label: "Login"
    description: "Count of logins when login.is_suspicious is true"
    type: count
    allow_approximate_optimization: yes
    filters: [login__is_suspicious: "yes"]
    drill_fields: [activity_login*]
  }

  measure: login_failure_count {
    hidden: no
    view_label: "Login"
    type: count
    allow_approximate_optimization: yes
    filters: [event_name: "login^_failure"]
    drill_fields: [activity_login*]
  }

  measure: login_success_count {
    hidden: no
    view_label: "Login"
    type: count
    allow_approximate_optimization: yes
    filters: [event_name: "login^_success"]
    drill_fields: [activity_login*]
  }

  measure: logout_count {
    hidden: no
    view_label: "Login"
    type: count
    allow_approximate_optimization: yes
    filters: [event_name: "logout"]
    drill_fields: [activity_login*]
  }

  measure: password_edit_count {
    hidden: no
    view_label: "Login"
    type: count
    allow_approximate_optimization: yes
    filters: [event_name: "password^_edit"]
    drill_fields: [activity_login*]
  }

  # overwrite default drill for all measures
  drill_fields: [activity_login*]
}

view: +activity__login__login_challenge_method {
  dimension: activity__login__login_challenge_method {
    hidden:no
    view_label: "Login"
    label: "Challenge Method"
    description: "Login challenge method. Possible values:
      backup_code, google_authenticator, google_prompt, idv_any_phone, idv_preregistered_phone,
      internal_two_factor, knowledge_employee_id, knowledge_preregistered_email,
      knowledge_preregistered_phone, login_location, none, offline_otp, other, password,
      security_key, security_key_otp"
  }
}
