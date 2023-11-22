view: usage {
  fields_hidden_by_default: yes

  dimension: date {
    type: string
    sql: ${TABLE}.date ;;
  }

  dimension: accounts__admin_set_name {
    type: string
    sql: ${TABLE}.accounts.admin_set_name ;;
    group_label: "Accounts"
    group_item_label: "Admin Set Name"
  }

  dimension: accounts__all_domain_names {
    type: string
    sql: ${TABLE}.accounts.all_domain_names ;;
    group_label: "Accounts"
    group_item_label: "All Domain Names"
  }

  dimension: accounts__apps_total_licenses {
    type: number
    sql: ${TABLE}.accounts.apps_total_licenses ;;
    group_label: "Accounts"
    group_item_label: "Apps Total Licenses"
  }

  dimension: accounts__apps_used_licenses {
    type: number
    sql: ${TABLE}.accounts.apps_used_licenses ;;
    group_label: "Accounts"
    group_item_label: "Apps Used Licenses"
  }

  # this is an unnested record and used as a view
  dimension: accounts__authorized_apps {
    hidden: yes
    sql: ${TABLE}.accounts.authorized_apps ;;
    group_label: "Accounts"
    group_item_label: "Authorized Apps"
  }

  dimension: accounts__coordinate_total_licenses {
    type: number
    sql: ${TABLE}.accounts.coordinate_total_licenses ;;
    group_label: "Accounts"
    group_item_label: "Coordinate Total Licenses"
  }

  dimension: accounts__creation_time {
    type: number
    sql: ${TABLE}.accounts.creation_time ;;
    group_label: "Accounts"
    group_item_label: "Creation Time"
  }

  dimension: accounts__customer_used_quota_in_mb {
    type: number
    sql: ${TABLE}.accounts.customer_used_quota_in_mb ;;
    group_label: "Accounts"
    group_item_label: "Customer Used Quota In Mb"
  }

  dimension: accounts__disabled_reason {
    type: string
    sql: ${TABLE}.accounts.disabled_reason ;;
    group_label: "Accounts"
    group_item_label: "Disabled Reason"
  }

  dimension: accounts__domain_name {
    type: string
    sql: ${TABLE}.accounts.domain_name ;;
    group_label: "Accounts"
    group_item_label: "Domain Name"
  }

  dimension: accounts__drive_used_quota_in_mb {
    type: number
    sql: ${TABLE}.accounts.drive_used_quota_in_mb ;;
    group_label: "Accounts"
    group_item_label: "Drive Used Quota In Mb"
  }

  dimension: accounts__first_name {
    type: string
    sql: ${TABLE}.accounts.first_name ;;
    group_label: "Accounts"
    group_item_label: "First Name"
  }

  dimension: accounts__gmail_used_quota_in_mb {
    type: number
    sql: ${TABLE}.accounts.gmail_used_quota_in_mb ;;
    group_label: "Accounts"
    group_item_label: "Gmail Used Quota In Mb"
  }

  dimension: accounts__gplus_photos_used_quota_in_mb {
    type: number
    sql: ${TABLE}.accounts.gplus_photos_used_quota_in_mb ;;
    group_label: "Accounts"
    group_item_label: "Gplus Photos Used Quota In Mb"
  }

  dimension: accounts__gsuite_basic_total_licenses {
    type: number
    sql: ${TABLE}.accounts.gsuite_basic_total_licenses ;;
    group_label: "Accounts"
    group_item_label: "Gsuite Basic Total Licenses"
  }

  dimension: accounts__gsuite_basic_used_licenses {
    type: number
    sql: ${TABLE}.accounts.gsuite_basic_used_licenses ;;
    group_label: "Accounts"
    group_item_label: "Gsuite Basic Used Licenses"
  }

  dimension: accounts__gsuite_enterprise_total_licenses {
    type: number
    sql: ${TABLE}.accounts.gsuite_enterprise_total_licenses ;;
    group_label: "Accounts"
    group_item_label: "Gsuite Enterprise Total Licenses"
  }

  dimension: accounts__gsuite_enterprise_used_licenses {
    type: number
    sql: ${TABLE}.accounts.gsuite_enterprise_used_licenses ;;
    group_label: "Accounts"
    group_item_label: "Gsuite Enterprise Used Licenses"
  }

  dimension: accounts__gsuite_unlimited_total_licenses {
    type: number
    sql: ${TABLE}.accounts.gsuite_unlimited_total_licenses ;;
    group_label: "Accounts"
    group_item_label: "Gsuite Unlimited Total Licenses"
  }

  dimension: accounts__gsuite_unlimited_used_licenses {
    type: number
    sql: ${TABLE}.accounts.gsuite_unlimited_used_licenses ;;
    group_label: "Accounts"
    group_item_label: "Gsuite Unlimited Used Licenses"
  }

  dimension: accounts__is_2sv_enforced {
    type: yesno
    sql: ${TABLE}.accounts.is_2sv_enforced ;;
    group_label: "Accounts"
    group_item_label: "Is 2sv Enforced"
  }

  dimension: accounts__is_2sv_enrolled {
    type: yesno
    sql: ${TABLE}.accounts.is_2sv_enrolled ;;
    group_label: "Accounts"
    group_item_label: "Is 2sv Enrolled"
  }

  dimension: accounts__is_archived {
    type: yesno
    sql: ${TABLE}.accounts.is_archived ;;
    group_label: "Accounts"
    group_item_label: "Is Archived"
  }

  dimension: accounts__is_delegated_admin {
    type: yesno
    sql: ${TABLE}.accounts.is_delegated_admin ;;
    group_label: "Accounts"
    group_item_label: "Is Delegated Admin"
  }

  dimension: accounts__is_disabled {
    type: yesno
    sql: ${TABLE}.accounts.is_disabled ;;
    group_label: "Accounts"
    group_item_label: "Is Disabled"
  }

  dimension: accounts__is_less_secure_apps_access_allowed {
    type: yesno
    sql: ${TABLE}.accounts.is_less_secure_apps_access_allowed ;;
    group_label: "Accounts"
    group_item_label: "Is Less Secure Apps Access Allowed"
  }

  dimension: accounts__is_super_admin {
    type: yesno
    sql: ${TABLE}.accounts.is_super_admin ;;
    group_label: "Accounts"
    group_item_label: "Is Super Admin"
  }

  dimension: accounts__is_suspended {
    type: yesno
    sql: ${TABLE}.accounts.is_suspended ;;
    group_label: "Accounts"
    group_item_label: "Is Suspended"
  }

  dimension: accounts__last_login_time {
    type: number
    sql: ${TABLE}.accounts.last_login_time ;;
    group_label: "Accounts"
    group_item_label: "Last Login Time"
  }

  dimension: accounts__last_name {
    type: string
    sql: ${TABLE}.accounts.last_name ;;
    group_label: "Accounts"
    group_item_label: "Last Name"
  }

  dimension: accounts__last_sso_time {
    type: number
    sql: ${TABLE}.accounts.last_sso_time ;;
    group_label: "Accounts"
    group_item_label: "Last Sso Time"
  }

  dimension: accounts__num_1day_logins {
    type: number
    sql: ${TABLE}.accounts.num_1day_logins ;;
    group_label: "Accounts"
    group_item_label: "Num 1day Logins"
  }

  dimension: accounts__num_30day_logins {
    type: number
    sql: ${TABLE}.accounts.num_30day_logins ;;
    group_label: "Accounts"
    group_item_label: "Num 30day Logins"
  }

  dimension: accounts__num_7day_logins {
    type: number
    sql: ${TABLE}.accounts.num_7day_logins ;;
    group_label: "Accounts"
    group_item_label: "Num 7day Logins"
  }

  dimension: accounts__num_archived_users {
    type: number
    sql: ${TABLE}.accounts.num_archived_users ;;
    group_label: "Accounts"
    group_item_label: "Num Archived Users"
  }

  dimension: accounts__num_authorized_apps {
    type: number
    sql: ${TABLE}.accounts.num_authorized_apps ;;
    group_label: "Accounts"
    group_item_label: "Num Authorized Apps"
  }

  dimension: accounts__num_delegated_admins {
    type: number
    sql: ${TABLE}.accounts.num_delegated_admins ;;
    group_label: "Accounts"
    group_item_label: "Num Delegated Admins"
  }

  dimension: accounts__num_disabled_accounts {
    type: number
    sql: ${TABLE}.accounts.num_disabled_accounts ;;
    group_label: "Accounts"
    group_item_label: "Num Disabled Accounts"
  }

  dimension: accounts__num_locked_users {
    type: number
    sql: ${TABLE}.accounts.num_locked_users ;;
    group_label: "Accounts"
    group_item_label: "Num Locked Users"
  }

  dimension: accounts__num_roles_assigned {
    type: number
    sql: ${TABLE}.accounts.num_roles_assigned ;;
    group_label: "Accounts"
    group_item_label: "Num Roles Assigned"
  }

  dimension: accounts__num_security_keys {
    type: number
    sql: ${TABLE}.accounts.num_security_keys ;;
    group_label: "Accounts"
    group_item_label: "Num Security Keys"
  }

  dimension: accounts__num_super_admins {
    type: number
    sql: ${TABLE}.accounts.num_super_admins ;;
    group_label: "Accounts"
    group_item_label: "Num Super Admins"
  }

  dimension: accounts__num_suspended_users {
    type: number
    sql: ${TABLE}.accounts.num_suspended_users ;;
    group_label: "Accounts"
    group_item_label: "Num Suspended Users"
  }

  dimension: accounts__num_users {
    type: number
    sql: ${TABLE}.accounts.num_users ;;
    group_label: "Accounts"
    group_item_label: "Num Users"
  }

  dimension: accounts__num_users_2sv_enforced {
    type: number
    sql: ${TABLE}.accounts.num_users_2sv_enforced ;;
    group_label: "Accounts"
    group_item_label: "Num Users 2sv Enforced"
  }

  dimension: accounts__num_users_2sv_enrolled {
    type: number
    sql: ${TABLE}.accounts.num_users_2sv_enrolled ;;
    group_label: "Accounts"
    group_item_label: "Num Users 2sv Enrolled"
  }

  dimension: accounts__num_users_2sv_enrolled_and_enforced {
    type: number
    sql: ${TABLE}.accounts.num_users_2sv_enrolled_and_enforced ;;
    group_label: "Accounts"
    group_item_label: "Num Users 2sv Enrolled and Enforced"
  }

  dimension: accounts__num_users_2sv_not_enforced {
    type: number
    sql: ${TABLE}.accounts.num_users_2sv_not_enforced ;;
    group_label: "Accounts"
    group_item_label: "Num Users 2sv Not Enforced"
  }

  dimension: accounts__num_users_2sv_not_enrolled {
    type: number
    sql: ${TABLE}.accounts.num_users_2sv_not_enrolled ;;
    group_label: "Accounts"
    group_item_label: "Num Users 2sv Not Enrolled"
  }

  dimension: accounts__num_users_2sv_not_enrolled_and_not_enforced {
    type: number
    sql: ${TABLE}.accounts.num_users_2sv_not_enrolled_and_not_enforced ;;
    group_label: "Accounts"
    group_item_label: "Num Users 2sv Not Enrolled and Not Enforced"
  }

  dimension: accounts__num_users_2sv_not_enrolled_but_enforced {
    type: number
    sql: ${TABLE}.accounts.num_users_2sv_not_enrolled_but_enforced ;;
    group_label: "Accounts"
    group_item_label: "Num Users 2sv Not Enrolled But Enforced"
  }

  dimension: accounts__num_users_less_secure_apps_access_allowed {
    type: number
    sql: ${TABLE}.accounts.num_users_less_secure_apps_access_allowed ;;
    group_label: "Accounts"
    group_item_label: "Num Users Less Secure Apps Access Allowed"
  }

  dimension: accounts__num_users_less_secure_apps_access_denied {
    type: number
    sql: ${TABLE}.accounts.num_users_less_secure_apps_access_denied ;;
    group_label: "Accounts"
    group_item_label: "Num Users Less Secure Apps Access Denied"
  }

  dimension: accounts__num_users_overridden_names {
    type: number
    sql: ${TABLE}.accounts.num_users_overridden_names ;;
    group_label: "Accounts"
    group_item_label: "Num Users Overridden Names"
  }

  dimension: accounts__num_users_password_length_compliant {
    type: number
    sql: ${TABLE}.accounts.num_users_password_length_compliant ;;
    group_label: "Accounts"
    group_item_label: "Num Users Password Length Compliant"
  }

  dimension: accounts__num_users_password_length_non_compliant {
    type: number
    sql: ${TABLE}.accounts.num_users_password_length_non_compliant ;;
    group_label: "Accounts"
    group_item_label: "Num Users Password Length Non Compliant"
  }

  dimension: accounts__num_users_password_length_unknown {
    type: number
    sql: ${TABLE}.accounts.num_users_password_length_unknown ;;
    group_label: "Accounts"
    group_item_label: "Num Users Password Length Unknown"
  }

  dimension: accounts__num_users_password_strength_strong {
    type: number
    sql: ${TABLE}.accounts.num_users_password_strength_strong ;;
    group_label: "Accounts"
    group_item_label: "Num Users Password Strength Strong"
  }

  dimension: accounts__num_users_password_strength_unknown {
    type: number
    sql: ${TABLE}.accounts.num_users_password_strength_unknown ;;
    group_label: "Accounts"
    group_item_label: "Num Users Password Strength Unknown"
  }

  dimension: accounts__num_users_password_strength_weak {
    type: number
    sql: ${TABLE}.accounts.num_users_password_strength_weak ;;
    group_label: "Accounts"
    group_item_label: "Num Users Password Strength Weak"
  }

  dimension: accounts__num_users_used_quota_ge_50_lt_80percent {
    type: number
    sql: ${TABLE}.accounts.num_users_used_quota_ge_50_lt_80percent ;;
    group_label: "Accounts"
    group_item_label: "Num Users Used Quota Ge 50 Lt 80percent"
  }

  dimension: accounts__num_users_used_quota_ge_80percent {
    type: number
    sql: ${TABLE}.accounts.num_users_used_quota_ge_80percent ;;
    group_label: "Accounts"
    group_item_label: "Num Users Used Quota Ge 80percent"
  }

  dimension: accounts__num_users_used_quota_lt_50percent {
    type: number
    sql: ${TABLE}.accounts.num_users_used_quota_lt_50percent ;;
    group_label: "Accounts"
    group_item_label: "Num Users Used Quota Lt 50percent"
  }

  dimension: accounts__password_length_compliance {
    type: string
    sql: ${TABLE}.accounts.password_length_compliance ;;
    group_label: "Accounts"
    group_item_label: "Password Length Compliance"
  }

  dimension: accounts__password_strength {
    type: string
    sql: ${TABLE}.accounts.password_strength ;;
    group_label: "Accounts"
    group_item_label: "Password Strength"
  }

  dimension: accounts__shared_drive_used_quota_in_mb {
    type: number
    sql: ${TABLE}.accounts.shared_drive_used_quota_in_mb ;;
    group_label: "Accounts"
    group_item_label: "Shared Drive Used Quota In Mb"
  }

  dimension: accounts__team_drive_used_quota_in_mb {
    type: number
    sql: ${TABLE}.accounts.team_drive_used_quota_in_mb ;;
    group_label: "Accounts"
    group_item_label: "Team Drive Used Quota In Mb"
  }

  dimension: accounts__total_quota_in_mb {
    type: number
    sql: ${TABLE}.accounts.total_quota_in_mb ;;
    group_label: "Accounts"
    group_item_label: "Total Quota In Mb"
  }

  dimension: accounts__used_quota_in_mb {
    type: number
    sql: ${TABLE}.accounts.used_quota_in_mb ;;
    group_label: "Accounts"
    group_item_label: "Used Quota In Mb"
  }

  dimension: accounts__used_quota_in_percentage {
    type: number
    sql: ${TABLE}.accounts.used_quota_in_percentage ;;
    group_label: "Accounts"
    group_item_label: "Used Quota In Percentage"
  }

  dimension: accounts__user_has_overridden_name {
    type: yesno
    sql: ${TABLE}.accounts.user_has_overridden_name ;;
    group_label: "Accounts"
    group_item_label: "User Has Overridden Name"
  }

  dimension: accounts__vault_total_licenses {
    type: number
    sql: ${TABLE}.accounts.vault_total_licenses ;;
    group_label: "Accounts"
    group_item_label: "Vault Total Licenses"
  }

  dimension: app_maker__num_1day_active_apps {
    type: number
    sql: ${TABLE}.app_maker.num_1day_active_apps ;;
    group_label: "App Maker"
    group_item_label: "Num 1day Active Apps"
  }

  dimension: app_maker__num_1day_active_users {
    type: number
    sql: ${TABLE}.app_maker.num_1day_active_users ;;
    group_label: "App Maker"
    group_item_label: "Num 1day Active Users"
  }

  dimension: apps_scripts__num_1day_active_apps {
    type: number
    sql: ${TABLE}.apps_scripts.num_1day_active_apps ;;
    group_label: "Apps Scripts"
    group_item_label: "Num 1day Active Apps"
  }

  dimension: apps_scripts__num_1day_active_users {
    type: number
    sql: ${TABLE}.apps_scripts.num_1day_active_users ;;
    group_label: "Apps Scripts"
    group_item_label: "Num 1day Active Users"
  }

  dimension: calendar__num_1day_active_users {
    type: number
    sql: ${TABLE}.calendar.num_1day_active_users ;;
    group_label: "Calendar"
    group_item_label: "Num 1day Active Users"
  }

  dimension: calendar__num_30day_active_users {
    type: number
    sql: ${TABLE}.calendar.num_30day_active_users ;;
    group_label: "Calendar"
    group_item_label: "Num 30day Active Users"
  }

  dimension: calendar__num_7day_active_users {
    type: number
    sql: ${TABLE}.calendar.num_7day_active_users ;;
    group_label: "Calendar"
    group_item_label: "Num 7day Active Users"
  }

  dimension: classroom__last_interaction_time {
    type: number
    sql: ${TABLE}.classroom.last_interaction_time ;;
    group_label: "Classroom"
    group_item_label: "Last Interaction Time"
  }

  dimension: classroom__num_14day_active_courses {
    type: number
    sql: ${TABLE}.classroom.num_14day_active_courses ;;
    group_label: "Classroom"
    group_item_label: "Num 14day Active Courses"
  }

  dimension: classroom__num_1day_students {
    type: number
    sql: ${TABLE}.classroom.num_1day_students ;;
    group_label: "Classroom"
    group_item_label: "Num 1day Students"
  }

  dimension: classroom__num_1day_teachers {
    type: number
    sql: ${TABLE}.classroom.num_1day_teachers ;;
    group_label: "Classroom"
    group_item_label: "Num 1day Teachers"
  }

  dimension: classroom__num_1day_users {
    type: number
    sql: ${TABLE}.classroom.num_1day_users ;;
    group_label: "Classroom"
    group_item_label: "Num 1day Users"
  }

  dimension: classroom__num_30day_students {
    type: number
    sql: ${TABLE}.classroom.num_30day_students ;;
    group_label: "Classroom"
    group_item_label: "Num 30day Students"
  }

  dimension: classroom__num_30day_teachers {
    type: number
    sql: ${TABLE}.classroom.num_30day_teachers ;;
    group_label: "Classroom"
    group_item_label: "Num 30day Teachers"
  }

  dimension: classroom__num_30day_users {
    type: number
    sql: ${TABLE}.classroom.num_30day_users ;;
    group_label: "Classroom"
    group_item_label: "Num 30day Users"
  }

  dimension: classroom__num_7day_students {
    type: number
    sql: ${TABLE}.classroom.num_7day_students ;;
    group_label: "Classroom"
    group_item_label: "Num 7day Students"
  }

  dimension: classroom__num_7day_teachers {
    type: number
    sql: ${TABLE}.classroom.num_7day_teachers ;;
    group_label: "Classroom"
    group_item_label: "Num 7day Teachers"
  }

  dimension: classroom__num_7day_users {
    type: number
    sql: ${TABLE}.classroom.num_7day_users ;;
    group_label: "Classroom"
    group_item_label: "Num 7day Users"
  }

  dimension: classroom__num_courses_created {
    type: number
    sql: ${TABLE}.classroom.num_courses_created ;;
    group_label: "Classroom"
    group_item_label: "Num Courses Created"
  }

  dimension: classroom__num_posts_created {
    type: number
    sql: ${TABLE}.classroom.num_posts_created ;;
    group_label: "Classroom"
    group_item_label: "Num Posts Created"
  }

  dimension: classroom__num_student_posts_created {
    type: number
    sql: ${TABLE}.classroom.num_student_posts_created ;;
    group_label: "Classroom"
    group_item_label: "Num Student Posts Created"
  }

  dimension: classroom__num_teacher_posts_created {
    type: number
    sql: ${TABLE}.classroom.num_teacher_posts_created ;;
    group_label: "Classroom"
    group_item_label: "Num Teacher Posts Created"
  }

  dimension: classroom__role {
    type: string
    sql: ${TABLE}.classroom.role ;;
    group_label: "Classroom"
    group_item_label: "Role"
  }

  # this is an unnested record and used as a view
  dimension: cros__device_version_distribution {
    hidden: yes
    sql: ${TABLE}.cros.device_version_distribution ;;
    group_label: "Cros"
    group_item_label: "Device Version Distribution"
  }

  dimension: cros__num_30day_active_devices {
    type: number
    sql: ${TABLE}.cros.num_30day_active_devices ;;
    group_label: "Cros"
    group_item_label: "Num 30day Active Devices"
  }

  dimension: cros__num_7day_active_devices {
    type: number
    sql: ${TABLE}.cros.num_7day_active_devices ;;
    group_label: "Cros"
    group_item_label: "Num 7day Active Devices"
  }

  dimension: cros__num_beta_channel_devices {
    type: number
    sql: ${TABLE}.cros.num_beta_channel_devices ;;
    group_label: "Cros"
    group_item_label: "Num Beta Channel Devices"
  }

  dimension: cros__num_dev_boot_devices {
    type: number
    sql: ${TABLE}.cros.num_dev_boot_devices ;;
    group_label: "Cros"
    group_item_label: "Num Dev Boot Devices"
  }

  dimension: cros__num_dev_channel_devices {
    type: number
    sql: ${TABLE}.cros.num_dev_channel_devices ;;
    group_label: "Cros"
    group_item_label: "Num Dev Channel Devices"
  }

  dimension: cros__num_other_channel_devices {
    type: number
    sql: ${TABLE}.cros.num_other_channel_devices ;;
    group_label: "Cros"
    group_item_label: "Num Other Channel Devices"
  }

  dimension: cros__num_stable_channel_devices {
    type: number
    sql: ${TABLE}.cros.num_stable_channel_devices ;;
    group_label: "Cros"
    group_item_label: "Num Stable Channel Devices"
  }

  dimension: cros__num_unreported_boot_devices {
    type: number
    sql: ${TABLE}.cros.num_unreported_boot_devices ;;
    group_label: "Cros"
    group_item_label: "Num Unreported Boot Devices"
  }

  dimension: cros__num_unreported_channel_devices {
    type: number
    sql: ${TABLE}.cros.num_unreported_channel_devices ;;
    group_label: "Cros"
    group_item_label: "Num Unreported Channel Devices"
  }

  dimension: cros__num_verified_boot_devices {
    type: number
    sql: ${TABLE}.cros.num_verified_boot_devices ;;
    group_label: "Cros"
    group_item_label: "Num Verified Boot Devices"
  }

  dimension: device_management__num_1day_android_10_0_managed_devices {
    type: number
    sql: ${TABLE}.device_management.num_1day_android_10_0_managed_devices ;;
    group_label: "Device Management"
    group_item_label: "Num 1day Android 10 0 Managed Devices"
  }

  dimension: device_management__num_1day_android_10_0_managed_users {
    type: number
    sql: ${TABLE}.device_management.num_1day_android_10_0_managed_users ;;
    group_label: "Device Management"
    group_item_label: "Num 1day Android 10 0 Managed Users"
  }

  dimension: device_management__num_1day_android_11_0_managed_devices {
    type: number
    sql: ${TABLE}.device_management.num_1day_android_11_0_managed_devices ;;
    group_label: "Device Management"
    group_item_label: "Num 1day Android 11 0 Managed Devices"
  }

  dimension: device_management__num_1day_android_11_0_managed_users {
    type: number
    sql: ${TABLE}.device_management.num_1day_android_11_0_managed_users ;;
    group_label: "Device Management"
    group_item_label: "Num 1day Android 11 0 Managed Users"
  }

  dimension: device_management__num_1day_android_12_0_managed_devices {
    type: number
    sql: ${TABLE}.device_management.num_1day_android_12_0_managed_devices ;;
    group_label: "Device Management"
    group_item_label: "Num 1day Android 12 0 Managed Devices"
  }

  dimension: device_management__num_1day_android_12_0_managed_users {
    type: number
    sql: ${TABLE}.device_management.num_1day_android_12_0_managed_users ;;
    group_label: "Device Management"
    group_item_label: "Num 1day Android 12 0 Managed Users"
  }

  dimension: device_management__num_1day_android_2_1_managed_devices {
    type: number
    sql: ${TABLE}.device_management.num_1day_android_2_1_managed_devices ;;
    group_label: "Device Management"
    group_item_label: "Num 1day Android 2 1 Managed Devices"
  }

  dimension: device_management__num_1day_android_2_1_managed_users {
    type: number
    sql: ${TABLE}.device_management.num_1day_android_2_1_managed_users ;;
    group_label: "Device Management"
    group_item_label: "Num 1day Android 2 1 Managed Users"
  }

  dimension: device_management__num_1day_android_2_2_managed_devices {
    type: number
    sql: ${TABLE}.device_management.num_1day_android_2_2_managed_devices ;;
    group_label: "Device Management"
    group_item_label: "Num 1day Android 2 2 Managed Devices"
  }

  dimension: device_management__num_1day_android_2_2_managed_users {
    type: number
    sql: ${TABLE}.device_management.num_1day_android_2_2_managed_users ;;
    group_label: "Device Management"
    group_item_label: "Num 1day Android 2 2 Managed Users"
  }

  dimension: device_management__num_1day_android_2_3_managed_devices {
    type: number
    sql: ${TABLE}.device_management.num_1day_android_2_3_managed_devices ;;
    group_label: "Device Management"
    group_item_label: "Num 1day Android 2 3 Managed Devices"
  }

  dimension: device_management__num_1day_android_2_3_managed_users {
    type: number
    sql: ${TABLE}.device_management.num_1day_android_2_3_managed_users ;;
    group_label: "Device Management"
    group_item_label: "Num 1day Android 2 3 Managed Users"
  }

  dimension: device_management__num_1day_android_2_4_managed_devices {
    type: number
    sql: ${TABLE}.device_management.num_1day_android_2_4_managed_devices ;;
    group_label: "Device Management"
    group_item_label: "Num 1day Android 2 4 Managed Devices"
  }

  dimension: device_management__num_1day_android_2_4_managed_users {
    type: number
    sql: ${TABLE}.device_management.num_1day_android_2_4_managed_users ;;
    group_label: "Device Management"
    group_item_label: "Num 1day Android 2 4 Managed Users"
  }

  dimension: device_management__num_1day_android_3_0_managed_devices {
    type: number
    sql: ${TABLE}.device_management.num_1day_android_3_0_managed_devices ;;
    group_label: "Device Management"
    group_item_label: "Num 1day Android 3 0 Managed Devices"
  }

  dimension: device_management__num_1day_android_3_0_managed_users {
    type: number
    sql: ${TABLE}.device_management.num_1day_android_3_0_managed_users ;;
    group_label: "Device Management"
    group_item_label: "Num 1day Android 3 0 Managed Users"
  }

  dimension: device_management__num_1day_android_3_1_managed_devices {
    type: number
    sql: ${TABLE}.device_management.num_1day_android_3_1_managed_devices ;;
    group_label: "Device Management"
    group_item_label: "Num 1day Android 3 1 Managed Devices"
  }

  dimension: device_management__num_1day_android_3_1_managed_users {
    type: number
    sql: ${TABLE}.device_management.num_1day_android_3_1_managed_users ;;
    group_label: "Device Management"
    group_item_label: "Num 1day Android 3 1 Managed Users"
  }

  dimension: device_management__num_1day_android_3_2_managed_devices {
    type: number
    sql: ${TABLE}.device_management.num_1day_android_3_2_managed_devices ;;
    group_label: "Device Management"
    group_item_label: "Num 1day Android 3 2 Managed Devices"
  }

  dimension: device_management__num_1day_android_3_2_managed_users {
    type: number
    sql: ${TABLE}.device_management.num_1day_android_3_2_managed_users ;;
    group_label: "Device Management"
    group_item_label: "Num 1day Android 3 2 Managed Users"
  }

  dimension: device_management__num_1day_android_4_0_managed_devices {
    type: number
    sql: ${TABLE}.device_management.num_1day_android_4_0_managed_devices ;;
    group_label: "Device Management"
    group_item_label: "Num 1day Android 4 0 Managed Devices"
  }

  dimension: device_management__num_1day_android_4_0_managed_users {
    type: number
    sql: ${TABLE}.device_management.num_1day_android_4_0_managed_users ;;
    group_label: "Device Management"
    group_item_label: "Num 1day Android 4 0 Managed Users"
  }

  dimension: device_management__num_1day_android_4_1_managed_devices {
    type: number
    sql: ${TABLE}.device_management.num_1day_android_4_1_managed_devices ;;
    group_label: "Device Management"
    group_item_label: "Num 1day Android 4 1 Managed Devices"
  }

  dimension: device_management__num_1day_android_4_1_managed_users {
    type: number
    sql: ${TABLE}.device_management.num_1day_android_4_1_managed_users ;;
    group_label: "Device Management"
    group_item_label: "Num 1day Android 4 1 Managed Users"
  }

  dimension: device_management__num_1day_android_4_2_managed_devices {
    type: number
    sql: ${TABLE}.device_management.num_1day_android_4_2_managed_devices ;;
    group_label: "Device Management"
    group_item_label: "Num 1day Android 4 2 Managed Devices"
  }

  dimension: device_management__num_1day_android_4_2_managed_users {
    type: number
    sql: ${TABLE}.device_management.num_1day_android_4_2_managed_users ;;
    group_label: "Device Management"
    group_item_label: "Num 1day Android 4 2 Managed Users"
  }

  dimension: device_management__num_1day_android_4_3_managed_devices {
    type: number
    sql: ${TABLE}.device_management.num_1day_android_4_3_managed_devices ;;
    group_label: "Device Management"
    group_item_label: "Num 1day Android 4 3 Managed Devices"
  }

  dimension: device_management__num_1day_android_4_3_managed_users {
    type: number
    sql: ${TABLE}.device_management.num_1day_android_4_3_managed_users ;;
    group_label: "Device Management"
    group_item_label: "Num 1day Android 4 3 Managed Users"
  }

  dimension: device_management__num_1day_android_4_4_managed_devices {
    type: number
    sql: ${TABLE}.device_management.num_1day_android_4_4_managed_devices ;;
    group_label: "Device Management"
    group_item_label: "Num 1day Android 4 4 Managed Devices"
  }

  dimension: device_management__num_1day_android_4_4_managed_users {
    type: number
    sql: ${TABLE}.device_management.num_1day_android_4_4_managed_users ;;
    group_label: "Device Management"
    group_item_label: "Num 1day Android 4 4 Managed Users"
  }

  dimension: device_management__num_1day_android_5_0_managed_devices {
    type: number
    sql: ${TABLE}.device_management.num_1day_android_5_0_managed_devices ;;
    group_label: "Device Management"
    group_item_label: "Num 1day Android 5 0 Managed Devices"
  }

  dimension: device_management__num_1day_android_5_0_managed_users {
    type: number
    sql: ${TABLE}.device_management.num_1day_android_5_0_managed_users ;;
    group_label: "Device Management"
    group_item_label: "Num 1day Android 5 0 Managed Users"
  }

  dimension: device_management__num_1day_android_5_1_managed_devices {
    type: number
    sql: ${TABLE}.device_management.num_1day_android_5_1_managed_devices ;;
    group_label: "Device Management"
    group_item_label: "Num 1day Android 5 1 Managed Devices"
  }

  dimension: device_management__num_1day_android_5_1_managed_users {
    type: number
    sql: ${TABLE}.device_management.num_1day_android_5_1_managed_users ;;
    group_label: "Device Management"
    group_item_label: "Num 1day Android 5 1 Managed Users"
  }

  dimension: device_management__num_1day_android_6_0_managed_devices {
    type: number
    sql: ${TABLE}.device_management.num_1day_android_6_0_managed_devices ;;
    group_label: "Device Management"
    group_item_label: "Num 1day Android 6 0 Managed Devices"
  }

  dimension: device_management__num_1day_android_6_0_managed_users {
    type: number
    sql: ${TABLE}.device_management.num_1day_android_6_0_managed_users ;;
    group_label: "Device Management"
    group_item_label: "Num 1day Android 6 0 Managed Users"
  }

  dimension: device_management__num_1day_android_7_0_managed_devices {
    type: number
    sql: ${TABLE}.device_management.num_1day_android_7_0_managed_devices ;;
    group_label: "Device Management"
    group_item_label: "Num 1day Android 7 0 Managed Devices"
  }

  dimension: device_management__num_1day_android_7_0_managed_users {
    type: number
    sql: ${TABLE}.device_management.num_1day_android_7_0_managed_users ;;
    group_label: "Device Management"
    group_item_label: "Num 1day Android 7 0 Managed Users"
  }

  dimension: device_management__num_1day_android_7_1_managed_devices {
    type: number
    sql: ${TABLE}.device_management.num_1day_android_7_1_managed_devices ;;
    group_label: "Device Management"
    group_item_label: "Num 1day Android 7 1 Managed Devices"
  }

  dimension: device_management__num_1day_android_7_1_managed_users {
    type: number
    sql: ${TABLE}.device_management.num_1day_android_7_1_managed_users ;;
    group_label: "Device Management"
    group_item_label: "Num 1day Android 7 1 Managed Users"
  }

  dimension: device_management__num_1day_android_8_0_managed_devices {
    type: number
    sql: ${TABLE}.device_management.num_1day_android_8_0_managed_devices ;;
    group_label: "Device Management"
    group_item_label: "Num 1day Android 8 0 Managed Devices"
  }

  dimension: device_management__num_1day_android_8_0_managed_users {
    type: number
    sql: ${TABLE}.device_management.num_1day_android_8_0_managed_users ;;
    group_label: "Device Management"
    group_item_label: "Num 1day Android 8 0 Managed Users"
  }

  dimension: device_management__num_1day_android_8_1_managed_devices {
    type: number
    sql: ${TABLE}.device_management.num_1day_android_8_1_managed_devices ;;
    group_label: "Device Management"
    group_item_label: "Num 1day Android 8 1 Managed Devices"
  }

  dimension: device_management__num_1day_android_8_1_managed_users {
    type: number
    sql: ${TABLE}.device_management.num_1day_android_8_1_managed_users ;;
    group_label: "Device Management"
    group_item_label: "Num 1day Android 8 1 Managed Users"
  }

  dimension: device_management__num_1day_android_9_0_managed_devices {
    type: number
    sql: ${TABLE}.device_management.num_1day_android_9_0_managed_devices ;;
    group_label: "Device Management"
    group_item_label: "Num 1day Android 9 0 Managed Devices"
  }

  dimension: device_management__num_1day_android_9_0_managed_users {
    type: number
    sql: ${TABLE}.device_management.num_1day_android_9_0_managed_users ;;
    group_label: "Device Management"
    group_item_label: "Num 1day Android 9 0 Managed Users"
  }

  dimension: device_management__num_1day_android_managed_devices {
    type: number
    sql: ${TABLE}.device_management.num_1day_android_managed_devices ;;
    group_label: "Device Management"
    group_item_label: "Num 1day Android Managed Devices"
  }

  dimension: device_management__num_1day_android_managed_users {
    type: number
    sql: ${TABLE}.device_management.num_1day_android_managed_users ;;
    group_label: "Device Management"
    group_item_label: "Num 1day Android Managed Users"
  }

  dimension: device_management__num_1day_assistant_managed_devices {
    type: number
    sql: ${TABLE}.device_management.num_1day_assistant_managed_devices ;;
    group_label: "Device Management"
    group_item_label: "Num 1day Assistant Managed Devices"
  }

  dimension: device_management__num_1day_assistant_managed_users {
    type: number
    sql: ${TABLE}.device_management.num_1day_assistant_managed_users ;;
    group_label: "Device Management"
    group_item_label: "Num 1day Assistant Managed Users"
  }

  dimension: device_management__num_1day_desktop_chrome_managed_devices {
    type: number
    sql: ${TABLE}.device_management.num_1day_desktop_chrome_managed_devices ;;
    group_label: "Device Management"
    group_item_label: "Num 1day Desktop Chrome Managed Devices"
  }

  dimension: device_management__num_1day_desktop_chrome_managed_users {
    type: number
    sql: ${TABLE}.device_management.num_1day_desktop_chrome_managed_users ;;
    group_label: "Device Management"
    group_item_label: "Num 1day Desktop Chrome Managed Users"
  }

  dimension: device_management__num_1day_desktop_linux_managed_devices {
    type: number
    sql: ${TABLE}.device_management.num_1day_desktop_linux_managed_devices ;;
    group_label: "Device Management"
    group_item_label: "Num 1day Desktop Linux Managed Devices"
  }

  dimension: device_management__num_1day_desktop_linux_managed_users {
    type: number
    sql: ${TABLE}.device_management.num_1day_desktop_linux_managed_users ;;
    group_label: "Device Management"
    group_item_label: "Num 1day Desktop Linux Managed Users"
  }

  dimension: device_management__num_1day_desktop_mac_managed_devices {
    type: number
    sql: ${TABLE}.device_management.num_1day_desktop_mac_managed_devices ;;
    group_label: "Device Management"
    group_item_label: "Num 1day Desktop Mac Managed Devices"
  }

  dimension: device_management__num_1day_desktop_mac_managed_users {
    type: number
    sql: ${TABLE}.device_management.num_1day_desktop_mac_managed_users ;;
    group_label: "Device Management"
    group_item_label: "Num 1day Desktop Mac Managed Users"
  }

  dimension: device_management__num_1day_desktop_windows_managed_devices {
    type: number
    sql: ${TABLE}.device_management.num_1day_desktop_windows_managed_devices ;;
    group_label: "Device Management"
    group_item_label: "Num 1day Desktop Windows Managed Devices"
  }

  dimension: device_management__num_1day_desktop_windows_managed_users {
    type: number
    sql: ${TABLE}.device_management.num_1day_desktop_windows_managed_users ;;
    group_label: "Device Management"
    group_item_label: "Num 1day Desktop Windows Managed Users"
  }

  dimension: device_management__num_1day_google_sync_managed_devices {
    type: number
    sql: ${TABLE}.device_management.num_1day_google_sync_managed_devices ;;
    group_label: "Device Management"
    group_item_label: "Num 1day Google Sync Managed Devices"
  }

  dimension: device_management__num_1day_google_sync_managed_users {
    type: number
    sql: ${TABLE}.device_management.num_1day_google_sync_managed_users ;;
    group_label: "Device Management"
    group_item_label: "Num 1day Google Sync Managed Users"
  }

  dimension: device_management__num_1day_ios_10_managed_devices {
    type: number
    sql: ${TABLE}.device_management.num_1day_ios_10_managed_devices ;;
    group_label: "Device Management"
    group_item_label: "Num 1day Ios 10 Managed Devices"
  }

  dimension: device_management__num_1day_ios_10_managed_users {
    type: number
    sql: ${TABLE}.device_management.num_1day_ios_10_managed_users ;;
    group_label: "Device Management"
    group_item_label: "Num 1day Ios 10 Managed Users"
  }

  dimension: device_management__num_1day_ios_11_managed_devices {
    type: number
    sql: ${TABLE}.device_management.num_1day_ios_11_managed_devices ;;
    group_label: "Device Management"
    group_item_label: "Num 1day Ios 11 Managed Devices"
  }

  dimension: device_management__num_1day_ios_11_managed_users {
    type: number
    sql: ${TABLE}.device_management.num_1day_ios_11_managed_users ;;
    group_label: "Device Management"
    group_item_label: "Num 1day Ios 11 Managed Users"
  }

  dimension: device_management__num_1day_ios_12_managed_devices {
    type: number
    sql: ${TABLE}.device_management.num_1day_ios_12_managed_devices ;;
    group_label: "Device Management"
    group_item_label: "Num 1day Ios 12 Managed Devices"
  }

  dimension: device_management__num_1day_ios_12_managed_users {
    type: number
    sql: ${TABLE}.device_management.num_1day_ios_12_managed_users ;;
    group_label: "Device Management"
    group_item_label: "Num 1day Ios 12 Managed Users"
  }

  dimension: device_management__num_1day_ios_13_managed_devices {
    type: number
    sql: ${TABLE}.device_management.num_1day_ios_13_managed_devices ;;
    group_label: "Device Management"
    group_item_label: "Num 1day Ios 13 Managed Devices"
  }

  dimension: device_management__num_1day_ios_13_managed_users {
    type: number
    sql: ${TABLE}.device_management.num_1day_ios_13_managed_users ;;
    group_label: "Device Management"
    group_item_label: "Num 1day Ios 13 Managed Users"
  }

  dimension: device_management__num_1day_ios_14_managed_devices {
    type: number
    sql: ${TABLE}.device_management.num_1day_ios_14_managed_devices ;;
    group_label: "Device Management"
    group_item_label: "Num 1day Ios 14 Managed Devices"
  }

  dimension: device_management__num_1day_ios_14_managed_users {
    type: number
    sql: ${TABLE}.device_management.num_1day_ios_14_managed_users ;;
    group_label: "Device Management"
    group_item_label: "Num 1day Ios 14 Managed Users"
  }

  dimension: device_management__num_1day_ios_15_managed_devices {
    type: number
    sql: ${TABLE}.device_management.num_1day_ios_15_managed_devices ;;
    group_label: "Device Management"
    group_item_label: "Num 1day Ios 15 Managed Devices"
  }

  dimension: device_management__num_1day_ios_15_managed_users {
    type: number
    sql: ${TABLE}.device_management.num_1day_ios_15_managed_users ;;
    group_label: "Device Management"
    group_item_label: "Num 1day Ios 15 Managed Users"
  }

  dimension: device_management__num_1day_ios_2_managed_devices {
    type: number
    sql: ${TABLE}.device_management.num_1day_ios_2_managed_devices ;;
    group_label: "Device Management"
    group_item_label: "Num 1day Ios 2 Managed Devices"
  }

  dimension: device_management__num_1day_ios_2_managed_users {
    type: number
    sql: ${TABLE}.device_management.num_1day_ios_2_managed_users ;;
    group_label: "Device Management"
    group_item_label: "Num 1day Ios 2 Managed Users"
  }

  dimension: device_management__num_1day_ios_3_managed_devices {
    type: number
    sql: ${TABLE}.device_management.num_1day_ios_3_managed_devices ;;
    group_label: "Device Management"
    group_item_label: "Num 1day Ios 3 Managed Devices"
  }

  dimension: device_management__num_1day_ios_3_managed_users {
    type: number
    sql: ${TABLE}.device_management.num_1day_ios_3_managed_users ;;
    group_label: "Device Management"
    group_item_label: "Num 1day Ios 3 Managed Users"
  }

  dimension: device_management__num_1day_ios_4_managed_devices {
    type: number
    sql: ${TABLE}.device_management.num_1day_ios_4_managed_devices ;;
    group_label: "Device Management"
    group_item_label: "Num 1day Ios 4 Managed Devices"
  }

  dimension: device_management__num_1day_ios_4_managed_users {
    type: number
    sql: ${TABLE}.device_management.num_1day_ios_4_managed_users ;;
    group_label: "Device Management"
    group_item_label: "Num 1day Ios 4 Managed Users"
  }

  dimension: device_management__num_1day_ios_5_managed_devices {
    type: number
    sql: ${TABLE}.device_management.num_1day_ios_5_managed_devices ;;
    group_label: "Device Management"
    group_item_label: "Num 1day Ios 5 Managed Devices"
  }

  dimension: device_management__num_1day_ios_5_managed_users {
    type: number
    sql: ${TABLE}.device_management.num_1day_ios_5_managed_users ;;
    group_label: "Device Management"
    group_item_label: "Num 1day Ios 5 Managed Users"
  }

  dimension: device_management__num_1day_ios_6_managed_devices {
    type: number
    sql: ${TABLE}.device_management.num_1day_ios_6_managed_devices ;;
    group_label: "Device Management"
    group_item_label: "Num 1day Ios 6 Managed Devices"
  }

  dimension: device_management__num_1day_ios_6_managed_users {
    type: number
    sql: ${TABLE}.device_management.num_1day_ios_6_managed_users ;;
    group_label: "Device Management"
    group_item_label: "Num 1day Ios 6 Managed Users"
  }

  dimension: device_management__num_1day_ios_7_managed_devices {
    type: number
    sql: ${TABLE}.device_management.num_1day_ios_7_managed_devices ;;
    group_label: "Device Management"
    group_item_label: "Num 1day Ios 7 Managed Devices"
  }

  dimension: device_management__num_1day_ios_7_managed_users {
    type: number
    sql: ${TABLE}.device_management.num_1day_ios_7_managed_users ;;
    group_label: "Device Management"
    group_item_label: "Num 1day Ios 7 Managed Users"
  }

  dimension: device_management__num_1day_ios_8_managed_devices {
    type: number
    sql: ${TABLE}.device_management.num_1day_ios_8_managed_devices ;;
    group_label: "Device Management"
    group_item_label: "Num 1day Ios 8 Managed Devices"
  }

  dimension: device_management__num_1day_ios_8_managed_users {
    type: number
    sql: ${TABLE}.device_management.num_1day_ios_8_managed_users ;;
    group_label: "Device Management"
    group_item_label: "Num 1day Ios 8 Managed Users"
  }

  dimension: device_management__num_1day_ios_9_managed_devices {
    type: number
    sql: ${TABLE}.device_management.num_1day_ios_9_managed_devices ;;
    group_label: "Device Management"
    group_item_label: "Num 1day Ios 9 Managed Devices"
  }

  dimension: device_management__num_1day_ios_9_managed_users {
    type: number
    sql: ${TABLE}.device_management.num_1day_ios_9_managed_users ;;
    group_label: "Device Management"
    group_item_label: "Num 1day Ios 9 Managed Users"
  }

  dimension: device_management__num_1day_ios_managed_devices {
    type: number
    sql: ${TABLE}.device_management.num_1day_ios_managed_devices ;;
    group_label: "Device Management"
    group_item_label: "Num 1day Ios Managed Devices"
  }

  dimension: device_management__num_1day_ios_managed_users {
    type: number
    sql: ${TABLE}.device_management.num_1day_ios_managed_users ;;
    group_label: "Device Management"
    group_item_label: "Num 1day Ios Managed Users"
  }

  dimension: device_management__num_1day_total_managed_devices {
    type: number
    sql: ${TABLE}.device_management.num_1day_total_managed_devices ;;
    group_label: "Device Management"
    group_item_label: "Num 1day Total Managed Devices"
  }

  dimension: device_management__num_1day_total_managed_users {
    type: number
    sql: ${TABLE}.device_management.num_1day_total_managed_users ;;
    group_label: "Device Management"
    group_item_label: "Num 1day Total Managed Users"
  }

  dimension: device_management__num_30day_android_10_0_managed_devices {
    type: number
    sql: ${TABLE}.device_management.num_30day_android_10_0_managed_devices ;;
    group_label: "Device Management"
    group_item_label: "Num 30day Android 10 0 Managed Devices"
  }

  dimension: device_management__num_30day_android_10_0_managed_users {
    type: number
    sql: ${TABLE}.device_management.num_30day_android_10_0_managed_users ;;
    group_label: "Device Management"
    group_item_label: "Num 30day Android 10 0 Managed Users"
  }

  dimension: device_management__num_30day_android_11_0_managed_devices {
    type: number
    sql: ${TABLE}.device_management.num_30day_android_11_0_managed_devices ;;
    group_label: "Device Management"
    group_item_label: "Num 30day Android 11 0 Managed Devices"
  }

  dimension: device_management__num_30day_android_11_0_managed_users {
    type: number
    sql: ${TABLE}.device_management.num_30day_android_11_0_managed_users ;;
    group_label: "Device Management"
    group_item_label: "Num 30day Android 11 0 Managed Users"
  }

  dimension: device_management__num_30day_android_12_0_managed_devices {
    type: number
    sql: ${TABLE}.device_management.num_30day_android_12_0_managed_devices ;;
    group_label: "Device Management"
    group_item_label: "Num 30day Android 12 0 Managed Devices"
  }

  dimension: device_management__num_30day_android_12_0_managed_users {
    type: number
    sql: ${TABLE}.device_management.num_30day_android_12_0_managed_users ;;
    group_label: "Device Management"
    group_item_label: "Num 30day Android 12 0 Managed Users"
  }

  dimension: device_management__num_30day_android_2_1_managed_devices {
    type: number
    sql: ${TABLE}.device_management.num_30day_android_2_1_managed_devices ;;
    group_label: "Device Management"
    group_item_label: "Num 30day Android 2 1 Managed Devices"
  }

  dimension: device_management__num_30day_android_2_1_managed_users {
    type: number
    sql: ${TABLE}.device_management.num_30day_android_2_1_managed_users ;;
    group_label: "Device Management"
    group_item_label: "Num 30day Android 2 1 Managed Users"
  }

  dimension: device_management__num_30day_android_2_2_managed_devices {
    type: number
    sql: ${TABLE}.device_management.num_30day_android_2_2_managed_devices ;;
    group_label: "Device Management"
    group_item_label: "Num 30day Android 2 2 Managed Devices"
  }

  dimension: device_management__num_30day_android_2_2_managed_users {
    type: number
    sql: ${TABLE}.device_management.num_30day_android_2_2_managed_users ;;
    group_label: "Device Management"
    group_item_label: "Num 30day Android 2 2 Managed Users"
  }

  dimension: device_management__num_30day_android_2_3_managed_devices {
    type: number
    sql: ${TABLE}.device_management.num_30day_android_2_3_managed_devices ;;
    group_label: "Device Management"
    group_item_label: "Num 30day Android 2 3 Managed Devices"
  }

  dimension: device_management__num_30day_android_2_3_managed_users {
    type: number
    sql: ${TABLE}.device_management.num_30day_android_2_3_managed_users ;;
    group_label: "Device Management"
    group_item_label: "Num 30day Android 2 3 Managed Users"
  }

  dimension: device_management__num_30day_android_2_4_managed_devices {
    type: number
    sql: ${TABLE}.device_management.num_30day_android_2_4_managed_devices ;;
    group_label: "Device Management"
    group_item_label: "Num 30day Android 2 4 Managed Devices"
  }

  dimension: device_management__num_30day_android_2_4_managed_users {
    type: number
    sql: ${TABLE}.device_management.num_30day_android_2_4_managed_users ;;
    group_label: "Device Management"
    group_item_label: "Num 30day Android 2 4 Managed Users"
  }

  dimension: device_management__num_30day_android_3_0_managed_devices {
    type: number
    sql: ${TABLE}.device_management.num_30day_android_3_0_managed_devices ;;
    group_label: "Device Management"
    group_item_label: "Num 30day Android 3 0 Managed Devices"
  }

  dimension: device_management__num_30day_android_3_0_managed_users {
    type: number
    sql: ${TABLE}.device_management.num_30day_android_3_0_managed_users ;;
    group_label: "Device Management"
    group_item_label: "Num 30day Android 3 0 Managed Users"
  }

  dimension: device_management__num_30day_android_3_1_managed_devices {
    type: number
    sql: ${TABLE}.device_management.num_30day_android_3_1_managed_devices ;;
    group_label: "Device Management"
    group_item_label: "Num 30day Android 3 1 Managed Devices"
  }

  dimension: device_management__num_30day_android_3_1_managed_users {
    type: number
    sql: ${TABLE}.device_management.num_30day_android_3_1_managed_users ;;
    group_label: "Device Management"
    group_item_label: "Num 30day Android 3 1 Managed Users"
  }

  dimension: device_management__num_30day_android_3_2_managed_devices {
    type: number
    sql: ${TABLE}.device_management.num_30day_android_3_2_managed_devices ;;
    group_label: "Device Management"
    group_item_label: "Num 30day Android 3 2 Managed Devices"
  }

  dimension: device_management__num_30day_android_3_2_managed_users {
    type: number
    sql: ${TABLE}.device_management.num_30day_android_3_2_managed_users ;;
    group_label: "Device Management"
    group_item_label: "Num 30day Android 3 2 Managed Users"
  }

  dimension: device_management__num_30day_android_4_0_managed_devices {
    type: number
    sql: ${TABLE}.device_management.num_30day_android_4_0_managed_devices ;;
    group_label: "Device Management"
    group_item_label: "Num 30day Android 4 0 Managed Devices"
  }

  dimension: device_management__num_30day_android_4_0_managed_users {
    type: number
    sql: ${TABLE}.device_management.num_30day_android_4_0_managed_users ;;
    group_label: "Device Management"
    group_item_label: "Num 30day Android 4 0 Managed Users"
  }

  dimension: device_management__num_30day_android_4_1_managed_devices {
    type: number
    sql: ${TABLE}.device_management.num_30day_android_4_1_managed_devices ;;
    group_label: "Device Management"
    group_item_label: "Num 30day Android 4 1 Managed Devices"
  }

  dimension: device_management__num_30day_android_4_1_managed_users {
    type: number
    sql: ${TABLE}.device_management.num_30day_android_4_1_managed_users ;;
    group_label: "Device Management"
    group_item_label: "Num 30day Android 4 1 Managed Users"
  }

  dimension: device_management__num_30day_android_4_2_managed_devices {
    type: number
    sql: ${TABLE}.device_management.num_30day_android_4_2_managed_devices ;;
    group_label: "Device Management"
    group_item_label: "Num 30day Android 4 2 Managed Devices"
  }

  dimension: device_management__num_30day_android_4_2_managed_users {
    type: number
    sql: ${TABLE}.device_management.num_30day_android_4_2_managed_users ;;
    group_label: "Device Management"
    group_item_label: "Num 30day Android 4 2 Managed Users"
  }

  dimension: device_management__num_30day_android_4_3_managed_devices {
    type: number
    sql: ${TABLE}.device_management.num_30day_android_4_3_managed_devices ;;
    group_label: "Device Management"
    group_item_label: "Num 30day Android 4 3 Managed Devices"
  }

  dimension: device_management__num_30day_android_4_3_managed_users {
    type: number
    sql: ${TABLE}.device_management.num_30day_android_4_3_managed_users ;;
    group_label: "Device Management"
    group_item_label: "Num 30day Android 4 3 Managed Users"
  }

  dimension: device_management__num_30day_android_4_4_managed_devices {
    type: number
    sql: ${TABLE}.device_management.num_30day_android_4_4_managed_devices ;;
    group_label: "Device Management"
    group_item_label: "Num 30day Android 4 4 Managed Devices"
  }

  dimension: device_management__num_30day_android_4_4_managed_users {
    type: number
    sql: ${TABLE}.device_management.num_30day_android_4_4_managed_users ;;
    group_label: "Device Management"
    group_item_label: "Num 30day Android 4 4 Managed Users"
  }

  dimension: device_management__num_30day_android_5_0_managed_devices {
    type: number
    sql: ${TABLE}.device_management.num_30day_android_5_0_managed_devices ;;
    group_label: "Device Management"
    group_item_label: "Num 30day Android 5 0 Managed Devices"
  }

  dimension: device_management__num_30day_android_5_0_managed_users {
    type: number
    sql: ${TABLE}.device_management.num_30day_android_5_0_managed_users ;;
    group_label: "Device Management"
    group_item_label: "Num 30day Android 5 0 Managed Users"
  }

  dimension: device_management__num_30day_android_5_1_managed_devices {
    type: number
    sql: ${TABLE}.device_management.num_30day_android_5_1_managed_devices ;;
    group_label: "Device Management"
    group_item_label: "Num 30day Android 5 1 Managed Devices"
  }

  dimension: device_management__num_30day_android_5_1_managed_users {
    type: number
    sql: ${TABLE}.device_management.num_30day_android_5_1_managed_users ;;
    group_label: "Device Management"
    group_item_label: "Num 30day Android 5 1 Managed Users"
  }

  dimension: device_management__num_30day_android_6_0_managed_devices {
    type: number
    sql: ${TABLE}.device_management.num_30day_android_6_0_managed_devices ;;
    group_label: "Device Management"
    group_item_label: "Num 30day Android 6 0 Managed Devices"
  }

  dimension: device_management__num_30day_android_6_0_managed_users {
    type: number
    sql: ${TABLE}.device_management.num_30day_android_6_0_managed_users ;;
    group_label: "Device Management"
    group_item_label: "Num 30day Android 6 0 Managed Users"
  }

  dimension: device_management__num_30day_android_7_0_managed_devices {
    type: number
    sql: ${TABLE}.device_management.num_30day_android_7_0_managed_devices ;;
    group_label: "Device Management"
    group_item_label: "Num 30day Android 7 0 Managed Devices"
  }

  dimension: device_management__num_30day_android_7_0_managed_users {
    type: number
    sql: ${TABLE}.device_management.num_30day_android_7_0_managed_users ;;
    group_label: "Device Management"
    group_item_label: "Num 30day Android 7 0 Managed Users"
  }

  dimension: device_management__num_30day_android_7_1_managed_devices {
    type: number
    sql: ${TABLE}.device_management.num_30day_android_7_1_managed_devices ;;
    group_label: "Device Management"
    group_item_label: "Num 30day Android 7 1 Managed Devices"
  }

  dimension: device_management__num_30day_android_7_1_managed_users {
    type: number
    sql: ${TABLE}.device_management.num_30day_android_7_1_managed_users ;;
    group_label: "Device Management"
    group_item_label: "Num 30day Android 7 1 Managed Users"
  }

  dimension: device_management__num_30day_android_8_0_managed_devices {
    type: number
    sql: ${TABLE}.device_management.num_30day_android_8_0_managed_devices ;;
    group_label: "Device Management"
    group_item_label: "Num 30day Android 8 0 Managed Devices"
  }

  dimension: device_management__num_30day_android_8_0_managed_users {
    type: number
    sql: ${TABLE}.device_management.num_30day_android_8_0_managed_users ;;
    group_label: "Device Management"
    group_item_label: "Num 30day Android 8 0 Managed Users"
  }

  dimension: device_management__num_30day_android_8_1_managed_devices {
    type: number
    sql: ${TABLE}.device_management.num_30day_android_8_1_managed_devices ;;
    group_label: "Device Management"
    group_item_label: "Num 30day Android 8 1 Managed Devices"
  }

  dimension: device_management__num_30day_android_8_1_managed_users {
    type: number
    sql: ${TABLE}.device_management.num_30day_android_8_1_managed_users ;;
    group_label: "Device Management"
    group_item_label: "Num 30day Android 8 1 Managed Users"
  }

  dimension: device_management__num_30day_android_9_0_managed_devices {
    type: number
    sql: ${TABLE}.device_management.num_30day_android_9_0_managed_devices ;;
    group_label: "Device Management"
    group_item_label: "Num 30day Android 9 0 Managed Devices"
  }

  dimension: device_management__num_30day_android_9_0_managed_users {
    type: number
    sql: ${TABLE}.device_management.num_30day_android_9_0_managed_users ;;
    group_label: "Device Management"
    group_item_label: "Num 30day Android 9 0 Managed Users"
  }

  dimension: device_management__num_30day_android_managed_devices {
    type: number
    sql: ${TABLE}.device_management.num_30day_android_managed_devices ;;
    group_label: "Device Management"
    group_item_label: "Num 30day Android Managed Devices"
  }

  dimension: device_management__num_30day_android_managed_users {
    type: number
    sql: ${TABLE}.device_management.num_30day_android_managed_users ;;
    group_label: "Device Management"
    group_item_label: "Num 30day Android Managed Users"
  }

  dimension: device_management__num_30day_assistant_managed_devices {
    type: number
    sql: ${TABLE}.device_management.num_30day_assistant_managed_devices ;;
    group_label: "Device Management"
    group_item_label: "Num 30day Assistant Managed Devices"
  }

  dimension: device_management__num_30day_assistant_managed_users {
    type: number
    sql: ${TABLE}.device_management.num_30day_assistant_managed_users ;;
    group_label: "Device Management"
    group_item_label: "Num 30day Assistant Managed Users"
  }

  dimension: device_management__num_30day_desktop_chrome_managed_devices {
    type: number
    sql: ${TABLE}.device_management.num_30day_desktop_chrome_managed_devices ;;
    group_label: "Device Management"
    group_item_label: "Num 30day Desktop Chrome Managed Devices"
  }

  dimension: device_management__num_30day_desktop_chrome_managed_users {
    type: number
    sql: ${TABLE}.device_management.num_30day_desktop_chrome_managed_users ;;
    group_label: "Device Management"
    group_item_label: "Num 30day Desktop Chrome Managed Users"
  }

  dimension: device_management__num_30day_desktop_linux_managed_devices {
    type: number
    sql: ${TABLE}.device_management.num_30day_desktop_linux_managed_devices ;;
    group_label: "Device Management"
    group_item_label: "Num 30day Desktop Linux Managed Devices"
  }

  dimension: device_management__num_30day_desktop_linux_managed_users {
    type: number
    sql: ${TABLE}.device_management.num_30day_desktop_linux_managed_users ;;
    group_label: "Device Management"
    group_item_label: "Num 30day Desktop Linux Managed Users"
  }

  dimension: device_management__num_30day_desktop_mac_managed_devices {
    type: number
    sql: ${TABLE}.device_management.num_30day_desktop_mac_managed_devices ;;
    group_label: "Device Management"
    group_item_label: "Num 30day Desktop Mac Managed Devices"
  }

  dimension: device_management__num_30day_desktop_mac_managed_users {
    type: number
    sql: ${TABLE}.device_management.num_30day_desktop_mac_managed_users ;;
    group_label: "Device Management"
    group_item_label: "Num 30day Desktop Mac Managed Users"
  }

  dimension: device_management__num_30day_desktop_windows_managed_devices {
    type: number
    sql: ${TABLE}.device_management.num_30day_desktop_windows_managed_devices ;;
    group_label: "Device Management"
    group_item_label: "Num 30day Desktop Windows Managed Devices"
  }

  dimension: device_management__num_30day_desktop_windows_managed_users {
    type: number
    sql: ${TABLE}.device_management.num_30day_desktop_windows_managed_users ;;
    group_label: "Device Management"
    group_item_label: "Num 30day Desktop Windows Managed Users"
  }

  dimension: device_management__num_30day_google_sync_managed_devices {
    type: number
    sql: ${TABLE}.device_management.num_30day_google_sync_managed_devices ;;
    group_label: "Device Management"
    group_item_label: "Num 30day Google Sync Managed Devices"
  }

  dimension: device_management__num_30day_google_sync_managed_users {
    type: number
    sql: ${TABLE}.device_management.num_30day_google_sync_managed_users ;;
    group_label: "Device Management"
    group_item_label: "Num 30day Google Sync Managed Users"
  }

  dimension: device_management__num_30day_ios_10_managed_devices {
    type: number
    sql: ${TABLE}.device_management.num_30day_ios_10_managed_devices ;;
    group_label: "Device Management"
    group_item_label: "Num 30day Ios 10 Managed Devices"
  }

  dimension: device_management__num_30day_ios_10_managed_users {
    type: number
    sql: ${TABLE}.device_management.num_30day_ios_10_managed_users ;;
    group_label: "Device Management"
    group_item_label: "Num 30day Ios 10 Managed Users"
  }

  dimension: device_management__num_30day_ios_11_managed_devices {
    type: number
    sql: ${TABLE}.device_management.num_30day_ios_11_managed_devices ;;
    group_label: "Device Management"
    group_item_label: "Num 30day Ios 11 Managed Devices"
  }

  dimension: device_management__num_30day_ios_11_managed_users {
    type: number
    sql: ${TABLE}.device_management.num_30day_ios_11_managed_users ;;
    group_label: "Device Management"
    group_item_label: "Num 30day Ios 11 Managed Users"
  }

  dimension: device_management__num_30day_ios_12_managed_devices {
    type: number
    sql: ${TABLE}.device_management.num_30day_ios_12_managed_devices ;;
    group_label: "Device Management"
    group_item_label: "Num 30day Ios 12 Managed Devices"
  }

  dimension: device_management__num_30day_ios_12_managed_users {
    type: number
    sql: ${TABLE}.device_management.num_30day_ios_12_managed_users ;;
    group_label: "Device Management"
    group_item_label: "Num 30day Ios 12 Managed Users"
  }

  dimension: device_management__num_30day_ios_13_managed_devices {
    type: number
    sql: ${TABLE}.device_management.num_30day_ios_13_managed_devices ;;
    group_label: "Device Management"
    group_item_label: "Num 30day Ios 13 Managed Devices"
  }

  dimension: device_management__num_30day_ios_13_managed_users {
    type: number
    sql: ${TABLE}.device_management.num_30day_ios_13_managed_users ;;
    group_label: "Device Management"
    group_item_label: "Num 30day Ios 13 Managed Users"
  }

  dimension: device_management__num_30day_ios_14_managed_devices {
    type: number
    sql: ${TABLE}.device_management.num_30day_ios_14_managed_devices ;;
    group_label: "Device Management"
    group_item_label: "Num 30day Ios 14 Managed Devices"
  }

  dimension: device_management__num_30day_ios_14_managed_users {
    type: number
    sql: ${TABLE}.device_management.num_30day_ios_14_managed_users ;;
    group_label: "Device Management"
    group_item_label: "Num 30day Ios 14 Managed Users"
  }

  dimension: device_management__num_30day_ios_15_managed_devices {
    type: number
    sql: ${TABLE}.device_management.num_30day_ios_15_managed_devices ;;
    group_label: "Device Management"
    group_item_label: "Num 30day Ios 15 Managed Devices"
  }

  dimension: device_management__num_30day_ios_15_managed_users {
    type: number
    sql: ${TABLE}.device_management.num_30day_ios_15_managed_users ;;
    group_label: "Device Management"
    group_item_label: "Num 30day Ios 15 Managed Users"
  }

  dimension: device_management__num_30day_ios_2_managed_devices {
    type: number
    sql: ${TABLE}.device_management.num_30day_ios_2_managed_devices ;;
    group_label: "Device Management"
    group_item_label: "Num 30day Ios 2 Managed Devices"
  }

  dimension: device_management__num_30day_ios_2_managed_users {
    type: number
    sql: ${TABLE}.device_management.num_30day_ios_2_managed_users ;;
    group_label: "Device Management"
    group_item_label: "Num 30day Ios 2 Managed Users"
  }

  dimension: device_management__num_30day_ios_3_managed_devices {
    type: number
    sql: ${TABLE}.device_management.num_30day_ios_3_managed_devices ;;
    group_label: "Device Management"
    group_item_label: "Num 30day Ios 3 Managed Devices"
  }

  dimension: device_management__num_30day_ios_3_managed_users {
    type: number
    sql: ${TABLE}.device_management.num_30day_ios_3_managed_users ;;
    group_label: "Device Management"
    group_item_label: "Num 30day Ios 3 Managed Users"
  }

  dimension: device_management__num_30day_ios_4_managed_devices {
    type: number
    sql: ${TABLE}.device_management.num_30day_ios_4_managed_devices ;;
    group_label: "Device Management"
    group_item_label: "Num 30day Ios 4 Managed Devices"
  }

  dimension: device_management__num_30day_ios_4_managed_users {
    type: number
    sql: ${TABLE}.device_management.num_30day_ios_4_managed_users ;;
    group_label: "Device Management"
    group_item_label: "Num 30day Ios 4 Managed Users"
  }

  dimension: device_management__num_30day_ios_5_managed_devices {
    type: number
    sql: ${TABLE}.device_management.num_30day_ios_5_managed_devices ;;
    group_label: "Device Management"
    group_item_label: "Num 30day Ios 5 Managed Devices"
  }

  dimension: device_management__num_30day_ios_5_managed_users {
    type: number
    sql: ${TABLE}.device_management.num_30day_ios_5_managed_users ;;
    group_label: "Device Management"
    group_item_label: "Num 30day Ios 5 Managed Users"
  }

  dimension: device_management__num_30day_ios_6_managed_devices {
    type: number
    sql: ${TABLE}.device_management.num_30day_ios_6_managed_devices ;;
    group_label: "Device Management"
    group_item_label: "Num 30day Ios 6 Managed Devices"
  }

  dimension: device_management__num_30day_ios_6_managed_users {
    type: number
    sql: ${TABLE}.device_management.num_30day_ios_6_managed_users ;;
    group_label: "Device Management"
    group_item_label: "Num 30day Ios 6 Managed Users"
  }

  dimension: device_management__num_30day_ios_7_managed_devices {
    type: number
    sql: ${TABLE}.device_management.num_30day_ios_7_managed_devices ;;
    group_label: "Device Management"
    group_item_label: "Num 30day Ios 7 Managed Devices"
  }

  dimension: device_management__num_30day_ios_7_managed_users {
    type: number
    sql: ${TABLE}.device_management.num_30day_ios_7_managed_users ;;
    group_label: "Device Management"
    group_item_label: "Num 30day Ios 7 Managed Users"
  }

  dimension: device_management__num_30day_ios_8_managed_devices {
    type: number
    sql: ${TABLE}.device_management.num_30day_ios_8_managed_devices ;;
    group_label: "Device Management"
    group_item_label: "Num 30day Ios 8 Managed Devices"
  }

  dimension: device_management__num_30day_ios_8_managed_users {
    type: number
    sql: ${TABLE}.device_management.num_30day_ios_8_managed_users ;;
    group_label: "Device Management"
    group_item_label: "Num 30day Ios 8 Managed Users"
  }

  dimension: device_management__num_30day_ios_9_managed_devices {
    type: number
    sql: ${TABLE}.device_management.num_30day_ios_9_managed_devices ;;
    group_label: "Device Management"
    group_item_label: "Num 30day Ios 9 Managed Devices"
  }

  dimension: device_management__num_30day_ios_9_managed_users {
    type: number
    sql: ${TABLE}.device_management.num_30day_ios_9_managed_users ;;
    group_label: "Device Management"
    group_item_label: "Num 30day Ios 9 Managed Users"
  }

  dimension: device_management__num_30day_ios_managed_devices {
    type: number
    sql: ${TABLE}.device_management.num_30day_ios_managed_devices ;;
    group_label: "Device Management"
    group_item_label: "Num 30day Ios Managed Devices"
  }

  dimension: device_management__num_30day_ios_managed_users {
    type: number
    sql: ${TABLE}.device_management.num_30day_ios_managed_users ;;
    group_label: "Device Management"
    group_item_label: "Num 30day Ios Managed Users"
  }

  dimension: device_management__num_30day_total_managed_devices {
    type: number
    sql: ${TABLE}.device_management.num_30day_total_managed_devices ;;
    group_label: "Device Management"
    group_item_label: "Num 30day Total Managed Devices"
  }

  dimension: device_management__num_30day_total_managed_users {
    type: number
    sql: ${TABLE}.device_management.num_30day_total_managed_users ;;
    group_label: "Device Management"
    group_item_label: "Num 30day Total Managed Users"
  }

  dimension: device_management__num_7day_android_10_0_managed_devices {
    type: number
    sql: ${TABLE}.device_management.num_7day_android_10_0_managed_devices ;;
    group_label: "Device Management"
    group_item_label: "Num 7day Android 10 0 Managed Devices"
  }

  dimension: device_management__num_7day_android_10_0_managed_users {
    type: number
    sql: ${TABLE}.device_management.num_7day_android_10_0_managed_users ;;
    group_label: "Device Management"
    group_item_label: "Num 7day Android 10 0 Managed Users"
  }

  dimension: device_management__num_7day_android_11_0_managed_devices {
    type: number
    sql: ${TABLE}.device_management.num_7day_android_11_0_managed_devices ;;
    group_label: "Device Management"
    group_item_label: "Num 7day Android 11 0 Managed Devices"
  }

  dimension: device_management__num_7day_android_11_0_managed_users {
    type: number
    sql: ${TABLE}.device_management.num_7day_android_11_0_managed_users ;;
    group_label: "Device Management"
    group_item_label: "Num 7day Android 11 0 Managed Users"
  }

  dimension: device_management__num_7day_android_12_0_managed_devices {
    type: number
    sql: ${TABLE}.device_management.num_7day_android_12_0_managed_devices ;;
    group_label: "Device Management"
    group_item_label: "Num 7day Android 12 0 Managed Devices"
  }

  dimension: device_management__num_7day_android_12_0_managed_users {
    type: number
    sql: ${TABLE}.device_management.num_7day_android_12_0_managed_users ;;
    group_label: "Device Management"
    group_item_label: "Num 7day Android 12 0 Managed Users"
  }

  dimension: device_management__num_7day_android_2_1_managed_devices {
    type: number
    sql: ${TABLE}.device_management.num_7day_android_2_1_managed_devices ;;
    group_label: "Device Management"
    group_item_label: "Num 7day Android 2 1 Managed Devices"
  }

  dimension: device_management__num_7day_android_2_1_managed_users {
    type: number
    sql: ${TABLE}.device_management.num_7day_android_2_1_managed_users ;;
    group_label: "Device Management"
    group_item_label: "Num 7day Android 2 1 Managed Users"
  }

  dimension: device_management__num_7day_android_2_2_managed_devices {
    type: number
    sql: ${TABLE}.device_management.num_7day_android_2_2_managed_devices ;;
    group_label: "Device Management"
    group_item_label: "Num 7day Android 2 2 Managed Devices"
  }

  dimension: device_management__num_7day_android_2_2_managed_users {
    type: number
    sql: ${TABLE}.device_management.num_7day_android_2_2_managed_users ;;
    group_label: "Device Management"
    group_item_label: "Num 7day Android 2 2 Managed Users"
  }

  dimension: device_management__num_7day_android_2_3_managed_devices {
    type: number
    sql: ${TABLE}.device_management.num_7day_android_2_3_managed_devices ;;
    group_label: "Device Management"
    group_item_label: "Num 7day Android 2 3 Managed Devices"
  }

  dimension: device_management__num_7day_android_2_3_managed_users {
    type: number
    sql: ${TABLE}.device_management.num_7day_android_2_3_managed_users ;;
    group_label: "Device Management"
    group_item_label: "Num 7day Android 2 3 Managed Users"
  }

  dimension: device_management__num_7day_android_2_4_managed_devices {
    type: number
    sql: ${TABLE}.device_management.num_7day_android_2_4_managed_devices ;;
    group_label: "Device Management"
    group_item_label: "Num 7day Android 2 4 Managed Devices"
  }

  dimension: device_management__num_7day_android_2_4_managed_users {
    type: number
    sql: ${TABLE}.device_management.num_7day_android_2_4_managed_users ;;
    group_label: "Device Management"
    group_item_label: "Num 7day Android 2 4 Managed Users"
  }

  dimension: device_management__num_7day_android_3_0_managed_devices {
    type: number
    sql: ${TABLE}.device_management.num_7day_android_3_0_managed_devices ;;
    group_label: "Device Management"
    group_item_label: "Num 7day Android 3 0 Managed Devices"
  }

  dimension: device_management__num_7day_android_3_0_managed_users {
    type: number
    sql: ${TABLE}.device_management.num_7day_android_3_0_managed_users ;;
    group_label: "Device Management"
    group_item_label: "Num 7day Android 3 0 Managed Users"
  }

  dimension: device_management__num_7day_android_3_1_managed_devices {
    type: number
    sql: ${TABLE}.device_management.num_7day_android_3_1_managed_devices ;;
    group_label: "Device Management"
    group_item_label: "Num 7day Android 3 1 Managed Devices"
  }

  dimension: device_management__num_7day_android_3_1_managed_users {
    type: number
    sql: ${TABLE}.device_management.num_7day_android_3_1_managed_users ;;
    group_label: "Device Management"
    group_item_label: "Num 7day Android 3 1 Managed Users"
  }

  dimension: device_management__num_7day_android_3_2_managed_devices {
    type: number
    sql: ${TABLE}.device_management.num_7day_android_3_2_managed_devices ;;
    group_label: "Device Management"
    group_item_label: "Num 7day Android 3 2 Managed Devices"
  }

  dimension: device_management__num_7day_android_3_2_managed_users {
    type: number
    sql: ${TABLE}.device_management.num_7day_android_3_2_managed_users ;;
    group_label: "Device Management"
    group_item_label: "Num 7day Android 3 2 Managed Users"
  }

  dimension: device_management__num_7day_android_4_0_managed_devices {
    type: number
    sql: ${TABLE}.device_management.num_7day_android_4_0_managed_devices ;;
    group_label: "Device Management"
    group_item_label: "Num 7day Android 4 0 Managed Devices"
  }

  dimension: device_management__num_7day_android_4_0_managed_users {
    type: number
    sql: ${TABLE}.device_management.num_7day_android_4_0_managed_users ;;
    group_label: "Device Management"
    group_item_label: "Num 7day Android 4 0 Managed Users"
  }

  dimension: device_management__num_7day_android_4_1_managed_devices {
    type: number
    sql: ${TABLE}.device_management.num_7day_android_4_1_managed_devices ;;
    group_label: "Device Management"
    group_item_label: "Num 7day Android 4 1 Managed Devices"
  }

  dimension: device_management__num_7day_android_4_1_managed_users {
    type: number
    sql: ${TABLE}.device_management.num_7day_android_4_1_managed_users ;;
    group_label: "Device Management"
    group_item_label: "Num 7day Android 4 1 Managed Users"
  }

  dimension: device_management__num_7day_android_4_2_managed_devices {
    type: number
    sql: ${TABLE}.device_management.num_7day_android_4_2_managed_devices ;;
    group_label: "Device Management"
    group_item_label: "Num 7day Android 4 2 Managed Devices"
  }

  dimension: device_management__num_7day_android_4_2_managed_users {
    type: number
    sql: ${TABLE}.device_management.num_7day_android_4_2_managed_users ;;
    group_label: "Device Management"
    group_item_label: "Num 7day Android 4 2 Managed Users"
  }

  dimension: device_management__num_7day_android_4_3_managed_devices {
    type: number
    sql: ${TABLE}.device_management.num_7day_android_4_3_managed_devices ;;
    group_label: "Device Management"
    group_item_label: "Num 7day Android 4 3 Managed Devices"
  }

  dimension: device_management__num_7day_android_4_3_managed_users {
    type: number
    sql: ${TABLE}.device_management.num_7day_android_4_3_managed_users ;;
    group_label: "Device Management"
    group_item_label: "Num 7day Android 4 3 Managed Users"
  }

  dimension: device_management__num_7day_android_4_4_managed_devices {
    type: number
    sql: ${TABLE}.device_management.num_7day_android_4_4_managed_devices ;;
    group_label: "Device Management"
    group_item_label: "Num 7day Android 4 4 Managed Devices"
  }

  dimension: device_management__num_7day_android_4_4_managed_users {
    type: number
    sql: ${TABLE}.device_management.num_7day_android_4_4_managed_users ;;
    group_label: "Device Management"
    group_item_label: "Num 7day Android 4 4 Managed Users"
  }

  dimension: device_management__num_7day_android_5_0_managed_devices {
    type: number
    sql: ${TABLE}.device_management.num_7day_android_5_0_managed_devices ;;
    group_label: "Device Management"
    group_item_label: "Num 7day Android 5 0 Managed Devices"
  }

  dimension: device_management__num_7day_android_5_0_managed_users {
    type: number
    sql: ${TABLE}.device_management.num_7day_android_5_0_managed_users ;;
    group_label: "Device Management"
    group_item_label: "Num 7day Android 5 0 Managed Users"
  }

  dimension: device_management__num_7day_android_5_1_managed_devices {
    type: number
    sql: ${TABLE}.device_management.num_7day_android_5_1_managed_devices ;;
    group_label: "Device Management"
    group_item_label: "Num 7day Android 5 1 Managed Devices"
  }

  dimension: device_management__num_7day_android_5_1_managed_users {
    type: number
    sql: ${TABLE}.device_management.num_7day_android_5_1_managed_users ;;
    group_label: "Device Management"
    group_item_label: "Num 7day Android 5 1 Managed Users"
  }

  dimension: device_management__num_7day_android_6_0_managed_devices {
    type: number
    sql: ${TABLE}.device_management.num_7day_android_6_0_managed_devices ;;
    group_label: "Device Management"
    group_item_label: "Num 7day Android 6 0 Managed Devices"
  }

  dimension: device_management__num_7day_android_6_0_managed_users {
    type: number
    sql: ${TABLE}.device_management.num_7day_android_6_0_managed_users ;;
    group_label: "Device Management"
    group_item_label: "Num 7day Android 6 0 Managed Users"
  }

  dimension: device_management__num_7day_android_7_0_managed_devices {
    type: number
    sql: ${TABLE}.device_management.num_7day_android_7_0_managed_devices ;;
    group_label: "Device Management"
    group_item_label: "Num 7day Android 7 0 Managed Devices"
  }

  dimension: device_management__num_7day_android_7_0_managed_users {
    type: number
    sql: ${TABLE}.device_management.num_7day_android_7_0_managed_users ;;
    group_label: "Device Management"
    group_item_label: "Num 7day Android 7 0 Managed Users"
  }

  dimension: device_management__num_7day_android_7_1_managed_devices {
    type: number
    sql: ${TABLE}.device_management.num_7day_android_7_1_managed_devices ;;
    group_label: "Device Management"
    group_item_label: "Num 7day Android 7 1 Managed Devices"
  }

  dimension: device_management__num_7day_android_7_1_managed_users {
    type: number
    sql: ${TABLE}.device_management.num_7day_android_7_1_managed_users ;;
    group_label: "Device Management"
    group_item_label: "Num 7day Android 7 1 Managed Users"
  }

  dimension: device_management__num_7day_android_8_0_managed_devices {
    type: number
    sql: ${TABLE}.device_management.num_7day_android_8_0_managed_devices ;;
    group_label: "Device Management"
    group_item_label: "Num 7day Android 8 0 Managed Devices"
  }

  dimension: device_management__num_7day_android_8_0_managed_users {
    type: number
    sql: ${TABLE}.device_management.num_7day_android_8_0_managed_users ;;
    group_label: "Device Management"
    group_item_label: "Num 7day Android 8 0 Managed Users"
  }

  dimension: device_management__num_7day_android_8_1_managed_devices {
    type: number
    sql: ${TABLE}.device_management.num_7day_android_8_1_managed_devices ;;
    group_label: "Device Management"
    group_item_label: "Num 7day Android 8 1 Managed Devices"
  }

  dimension: device_management__num_7day_android_8_1_managed_users {
    type: number
    sql: ${TABLE}.device_management.num_7day_android_8_1_managed_users ;;
    group_label: "Device Management"
    group_item_label: "Num 7day Android 8 1 Managed Users"
  }

  dimension: device_management__num_7day_android_9_0_managed_devices {
    type: number
    sql: ${TABLE}.device_management.num_7day_android_9_0_managed_devices ;;
    group_label: "Device Management"
    group_item_label: "Num 7day Android 9 0 Managed Devices"
  }

  dimension: device_management__num_7day_android_9_0_managed_users {
    type: number
    sql: ${TABLE}.device_management.num_7day_android_9_0_managed_users ;;
    group_label: "Device Management"
    group_item_label: "Num 7day Android 9 0 Managed Users"
  }

  dimension: device_management__num_7day_android_managed_devices {
    type: number
    sql: ${TABLE}.device_management.num_7day_android_managed_devices ;;
    group_label: "Device Management"
    group_item_label: "Num 7day Android Managed Devices"
  }

  dimension: device_management__num_7day_android_managed_users {
    type: number
    sql: ${TABLE}.device_management.num_7day_android_managed_users ;;
    group_label: "Device Management"
    group_item_label: "Num 7day Android Managed Users"
  }

  dimension: device_management__num_7day_assistant_managed_devices {
    type: number
    sql: ${TABLE}.device_management.num_7day_assistant_managed_devices ;;
    group_label: "Device Management"
    group_item_label: "Num 7day Assistant Managed Devices"
  }

  dimension: device_management__num_7day_assistant_managed_users {
    type: number
    sql: ${TABLE}.device_management.num_7day_assistant_managed_users ;;
    group_label: "Device Management"
    group_item_label: "Num 7day Assistant Managed Users"
  }

  dimension: device_management__num_7day_desktop_chrome_managed_devices {
    type: number
    sql: ${TABLE}.device_management.num_7day_desktop_chrome_managed_devices ;;
    group_label: "Device Management"
    group_item_label: "Num 7day Desktop Chrome Managed Devices"
  }

  dimension: device_management__num_7day_desktop_chrome_managed_users {
    type: number
    sql: ${TABLE}.device_management.num_7day_desktop_chrome_managed_users ;;
    group_label: "Device Management"
    group_item_label: "Num 7day Desktop Chrome Managed Users"
  }

  dimension: device_management__num_7day_desktop_linux_managed_devices {
    type: number
    sql: ${TABLE}.device_management.num_7day_desktop_linux_managed_devices ;;
    group_label: "Device Management"
    group_item_label: "Num 7day Desktop Linux Managed Devices"
  }

  dimension: device_management__num_7day_desktop_linux_managed_users {
    type: number
    sql: ${TABLE}.device_management.num_7day_desktop_linux_managed_users ;;
    group_label: "Device Management"
    group_item_label: "Num 7day Desktop Linux Managed Users"
  }

  dimension: device_management__num_7day_desktop_mac_managed_devices {
    type: number
    sql: ${TABLE}.device_management.num_7day_desktop_mac_managed_devices ;;
    group_label: "Device Management"
    group_item_label: "Num 7day Desktop Mac Managed Devices"
  }

  dimension: device_management__num_7day_desktop_mac_managed_users {
    type: number
    sql: ${TABLE}.device_management.num_7day_desktop_mac_managed_users ;;
    group_label: "Device Management"
    group_item_label: "Num 7day Desktop Mac Managed Users"
  }

  dimension: device_management__num_7day_desktop_windows_managed_devices {
    type: number
    sql: ${TABLE}.device_management.num_7day_desktop_windows_managed_devices ;;
    group_label: "Device Management"
    group_item_label: "Num 7day Desktop Windows Managed Devices"
  }

  dimension: device_management__num_7day_desktop_windows_managed_users {
    type: number
    sql: ${TABLE}.device_management.num_7day_desktop_windows_managed_users ;;
    group_label: "Device Management"
    group_item_label: "Num 7day Desktop Windows Managed Users"
  }

  dimension: device_management__num_7day_google_sync_managed_devices {
    type: number
    sql: ${TABLE}.device_management.num_7day_google_sync_managed_devices ;;
    group_label: "Device Management"
    group_item_label: "Num 7day Google Sync Managed Devices"
  }

  dimension: device_management__num_7day_google_sync_managed_users {
    type: number
    sql: ${TABLE}.device_management.num_7day_google_sync_managed_users ;;
    group_label: "Device Management"
    group_item_label: "Num 7day Google Sync Managed Users"
  }

  dimension: device_management__num_7day_ios_10_managed_devices {
    type: number
    sql: ${TABLE}.device_management.num_7day_ios_10_managed_devices ;;
    group_label: "Device Management"
    group_item_label: "Num 7day Ios 10 Managed Devices"
  }

  dimension: device_management__num_7day_ios_10_managed_users {
    type: number
    sql: ${TABLE}.device_management.num_7day_ios_10_managed_users ;;
    group_label: "Device Management"
    group_item_label: "Num 7day Ios 10 Managed Users"
  }

  dimension: device_management__num_7day_ios_11_managed_devices {
    type: number
    sql: ${TABLE}.device_management.num_7day_ios_11_managed_devices ;;
    group_label: "Device Management"
    group_item_label: "Num 7day Ios 11 Managed Devices"
  }

  dimension: device_management__num_7day_ios_11_managed_users {
    type: number
    sql: ${TABLE}.device_management.num_7day_ios_11_managed_users ;;
    group_label: "Device Management"
    group_item_label: "Num 7day Ios 11 Managed Users"
  }

  dimension: device_management__num_7day_ios_12_managed_devices {
    type: number
    sql: ${TABLE}.device_management.num_7day_ios_12_managed_devices ;;
    group_label: "Device Management"
    group_item_label: "Num 7day Ios 12 Managed Devices"
  }

  dimension: device_management__num_7day_ios_12_managed_users {
    type: number
    sql: ${TABLE}.device_management.num_7day_ios_12_managed_users ;;
    group_label: "Device Management"
    group_item_label: "Num 7day Ios 12 Managed Users"
  }

  dimension: device_management__num_7day_ios_13_managed_devices {
    type: number
    sql: ${TABLE}.device_management.num_7day_ios_13_managed_devices ;;
    group_label: "Device Management"
    group_item_label: "Num 7day Ios 13 Managed Devices"
  }

  dimension: device_management__num_7day_ios_13_managed_users {
    type: number
    sql: ${TABLE}.device_management.num_7day_ios_13_managed_users ;;
    group_label: "Device Management"
    group_item_label: "Num 7day Ios 13 Managed Users"
  }

  dimension: device_management__num_7day_ios_14_managed_devices {
    type: number
    sql: ${TABLE}.device_management.num_7day_ios_14_managed_devices ;;
    group_label: "Device Management"
    group_item_label: "Num 7day Ios 14 Managed Devices"
  }

  dimension: device_management__num_7day_ios_14_managed_users {
    type: number
    sql: ${TABLE}.device_management.num_7day_ios_14_managed_users ;;
    group_label: "Device Management"
    group_item_label: "Num 7day Ios 14 Managed Users"
  }

  dimension: device_management__num_7day_ios_15_managed_devices {
    type: number
    sql: ${TABLE}.device_management.num_7day_ios_15_managed_devices ;;
    group_label: "Device Management"
    group_item_label: "Num 7day Ios 15 Managed Devices"
  }

  dimension: device_management__num_7day_ios_15_managed_users {
    type: number
    sql: ${TABLE}.device_management.num_7day_ios_15_managed_users ;;
    group_label: "Device Management"
    group_item_label: "Num 7day Ios 15 Managed Users"
  }

  dimension: device_management__num_7day_ios_2_managed_devices {
    type: number
    sql: ${TABLE}.device_management.num_7day_ios_2_managed_devices ;;
    group_label: "Device Management"
    group_item_label: "Num 7day Ios 2 Managed Devices"
  }

  dimension: device_management__num_7day_ios_2_managed_users {
    type: number
    sql: ${TABLE}.device_management.num_7day_ios_2_managed_users ;;
    group_label: "Device Management"
    group_item_label: "Num 7day Ios 2 Managed Users"
  }

  dimension: device_management__num_7day_ios_3_managed_devices {
    type: number
    sql: ${TABLE}.device_management.num_7day_ios_3_managed_devices ;;
    group_label: "Device Management"
    group_item_label: "Num 7day Ios 3 Managed Devices"
  }

  dimension: device_management__num_7day_ios_3_managed_users {
    type: number
    sql: ${TABLE}.device_management.num_7day_ios_3_managed_users ;;
    group_label: "Device Management"
    group_item_label: "Num 7day Ios 3 Managed Users"
  }

  dimension: device_management__num_7day_ios_4_managed_devices {
    type: number
    sql: ${TABLE}.device_management.num_7day_ios_4_managed_devices ;;
    group_label: "Device Management"
    group_item_label: "Num 7day Ios 4 Managed Devices"
  }

  dimension: device_management__num_7day_ios_4_managed_users {
    type: number
    sql: ${TABLE}.device_management.num_7day_ios_4_managed_users ;;
    group_label: "Device Management"
    group_item_label: "Num 7day Ios 4 Managed Users"
  }

  dimension: device_management__num_7day_ios_5_managed_devices {
    type: number
    sql: ${TABLE}.device_management.num_7day_ios_5_managed_devices ;;
    group_label: "Device Management"
    group_item_label: "Num 7day Ios 5 Managed Devices"
  }

  dimension: device_management__num_7day_ios_5_managed_users {
    type: number
    sql: ${TABLE}.device_management.num_7day_ios_5_managed_users ;;
    group_label: "Device Management"
    group_item_label: "Num 7day Ios 5 Managed Users"
  }

  dimension: device_management__num_7day_ios_6_managed_devices {
    type: number
    sql: ${TABLE}.device_management.num_7day_ios_6_managed_devices ;;
    group_label: "Device Management"
    group_item_label: "Num 7day Ios 6 Managed Devices"
  }

  dimension: device_management__num_7day_ios_6_managed_users {
    type: number
    sql: ${TABLE}.device_management.num_7day_ios_6_managed_users ;;
    group_label: "Device Management"
    group_item_label: "Num 7day Ios 6 Managed Users"
  }

  dimension: device_management__num_7day_ios_7_managed_devices {
    type: number
    sql: ${TABLE}.device_management.num_7day_ios_7_managed_devices ;;
    group_label: "Device Management"
    group_item_label: "Num 7day Ios 7 Managed Devices"
  }

  dimension: device_management__num_7day_ios_7_managed_users {
    type: number
    sql: ${TABLE}.device_management.num_7day_ios_7_managed_users ;;
    group_label: "Device Management"
    group_item_label: "Num 7day Ios 7 Managed Users"
  }

  dimension: device_management__num_7day_ios_8_managed_devices {
    type: number
    sql: ${TABLE}.device_management.num_7day_ios_8_managed_devices ;;
    group_label: "Device Management"
    group_item_label: "Num 7day Ios 8 Managed Devices"
  }

  dimension: device_management__num_7day_ios_8_managed_users {
    type: number
    sql: ${TABLE}.device_management.num_7day_ios_8_managed_users ;;
    group_label: "Device Management"
    group_item_label: "Num 7day Ios 8 Managed Users"
  }

  dimension: device_management__num_7day_ios_9_managed_devices {
    type: number
    sql: ${TABLE}.device_management.num_7day_ios_9_managed_devices ;;
    group_label: "Device Management"
    group_item_label: "Num 7day Ios 9 Managed Devices"
  }

  dimension: device_management__num_7day_ios_9_managed_users {
    type: number
    sql: ${TABLE}.device_management.num_7day_ios_9_managed_users ;;
    group_label: "Device Management"
    group_item_label: "Num 7day Ios 9 Managed Users"
  }

  dimension: device_management__num_7day_ios_managed_devices {
    type: number
    sql: ${TABLE}.device_management.num_7day_ios_managed_devices ;;
    group_label: "Device Management"
    group_item_label: "Num 7day Ios Managed Devices"
  }

  dimension: device_management__num_7day_ios_managed_users {
    type: number
    sql: ${TABLE}.device_management.num_7day_ios_managed_users ;;
    group_label: "Device Management"
    group_item_label: "Num 7day Ios Managed Users"
  }

  dimension: device_management__num_7day_total_managed_devices {
    type: number
    sql: ${TABLE}.device_management.num_7day_total_managed_devices ;;
    group_label: "Device Management"
    group_item_label: "Num 7day Total Managed Devices"
  }

  dimension: device_management__num_7day_total_managed_users {
    type: number
    sql: ${TABLE}.device_management.num_7day_total_managed_users ;;
    group_label: "Device Management"
    group_item_label: "Num 7day Total Managed Users"
  }

  dimension: device_management__num_total_unmanaged_users {
    type: number
    sql: ${TABLE}.device_management.num_total_unmanaged_users ;;
    group_label: "Device Management"
    group_item_label: "Num Total Unmanaged Users"
  }

  dimension: device_management__num_total_users {
    type: number
    sql: ${TABLE}.device_management.num_total_users ;;
    group_label: "Device Management"
    group_item_label: "Num Total Users"
  }

  dimension: docs__last_interaction_time {
    type: number
    sql: ${TABLE}.docs.last_interaction_time ;;
    group_label: "Docs"
    group_item_label: "Last Interaction Time"
  }

  dimension: docs__num_1day_active_users {
    type: number
    sql: ${TABLE}.docs.num_1day_active_users ;;
    group_label: "Docs"
    group_item_label: "Num 1day Active Users"
  }

  dimension: docs__num_30day_active_users {
    type: number
    sql: ${TABLE}.docs.num_30day_active_users ;;
    group_label: "Docs"
    group_item_label: "Num 30day Active Users"
  }

  dimension: docs__num_7day_active_users {
    type: number
    sql: ${TABLE}.docs.num_7day_active_users ;;
    group_label: "Docs"
    group_item_label: "Num 7day Active Users"
  }

  dimension: docs__num_active_users {
    type: number
    sql: ${TABLE}.docs.num_active_users ;;
    group_label: "Docs"
    group_item_label: "Num Active Users"
  }

  dimension: docs__num_docs {
    type: number
    sql: ${TABLE}.docs.num_docs ;;
    group_label: "Docs"
    group_item_label: "Num Docs"
  }

  dimension: docs__num_docs_edited {
    type: number
    sql: ${TABLE}.docs.num_docs_edited ;;
    group_label: "Docs"
    group_item_label: "Num Docs Edited"
  }

  dimension: docs__num_docs_externally_visible {
    type: number
    sql: ${TABLE}.docs.num_docs_externally_visible ;;
    group_label: "Docs"
    group_item_label: "Num Docs Externally Visible"
  }

  dimension: docs__num_docs_internally_visible {
    type: number
    sql: ${TABLE}.docs.num_docs_internally_visible ;;
    group_label: "Docs"
    group_item_label: "Num Docs Internally Visible"
  }

  dimension: docs__num_docs_not_edited_for_12months {
    type: number
    sql: ${TABLE}.docs.num_docs_not_edited_for_12months ;;
    group_label: "Docs"
    group_item_label: "Num Docs Not Edited for 12months"
  }

  dimension: docs__num_docs_not_edited_for_3months {
    type: number
    sql: ${TABLE}.docs.num_docs_not_edited_for_3months ;;
    group_label: "Docs"
    group_item_label: "Num Docs Not Edited for 3months"
  }

  dimension: docs__num_docs_not_edited_for_6months {
    type: number
    sql: ${TABLE}.docs.num_docs_not_edited_for_6months ;;
    group_label: "Docs"
    group_item_label: "Num Docs Not Edited for 6months"
  }

  dimension: docs__num_docs_not_viewed_for_12months {
    type: number
    sql: ${TABLE}.docs.num_docs_not_viewed_for_12months ;;
    group_label: "Docs"
    group_item_label: "Num Docs Not Viewed for 12months"
  }

  dimension: docs__num_docs_not_viewed_for_3months {
    type: number
    sql: ${TABLE}.docs.num_docs_not_viewed_for_3months ;;
    group_label: "Docs"
    group_item_label: "Num Docs Not Viewed for 3months"
  }

  dimension: docs__num_docs_not_viewed_for_6months {
    type: number
    sql: ${TABLE}.docs.num_docs_not_viewed_for_6months ;;
    group_label: "Docs"
    group_item_label: "Num Docs Not Viewed for 6months"
  }

  dimension: docs__num_docs_shared_outside_domain {
    type: number
    sql: ${TABLE}.docs.num_docs_shared_outside_domain ;;
    group_label: "Docs"
    group_item_label: "Num Docs Shared Outside Domain"
  }

  dimension: docs__num_docs_viewed {
    type: number
    sql: ${TABLE}.docs.num_docs_viewed ;;
    group_label: "Docs"
    group_item_label: "Num Docs Viewed"
  }

  dimension: docs__num_docs_with_visibility_anyone_with_link {
    type: number
    sql: ${TABLE}.docs.num_docs_with_visibility_anyone_with_link ;;
    group_label: "Docs"
    group_item_label: "Num Docs with Visibility Anyone with Link"
  }

  dimension: docs__num_docs_with_visibility_people_at_domain {
    type: number
    sql: ${TABLE}.docs.num_docs_with_visibility_people_at_domain ;;
    group_label: "Docs"
    group_item_label: "Num Docs with Visibility People At Domain"
  }

  dimension: docs__num_docs_with_visibility_people_at_domain_with_link {
    type: number
    sql: ${TABLE}.docs.num_docs_with_visibility_people_at_domain_with_link ;;
    group_label: "Docs"
    group_item_label: "Num Docs with Visibility People At Domain with Link"
  }

  dimension: docs__num_docs_with_visibility_private {
    type: number
    sql: ${TABLE}.docs.num_docs_with_visibility_private ;;
    group_label: "Docs"
    group_item_label: "Num Docs with Visibility Private"
  }

  dimension: docs__num_docs_with_visibility_public {
    type: number
    sql: ${TABLE}.docs.num_docs_with_visibility_public ;;
    group_label: "Docs"
    group_item_label: "Num Docs with Visibility Public"
  }

  dimension: docs__num_drawings {
    type: number
    sql: ${TABLE}.docs.num_drawings ;;
    group_label: "Docs"
    group_item_label: "Num Drawings"
  }

  dimension: docs__num_drawings_edited {
    type: number
    sql: ${TABLE}.docs.num_drawings_edited ;;
    group_label: "Docs"
    group_item_label: "Num Drawings Edited"
  }

  dimension: docs__num_drawings_viewed {
    type: number
    sql: ${TABLE}.docs.num_drawings_viewed ;;
    group_label: "Docs"
    group_item_label: "Num Drawings Viewed"
  }

  dimension: docs__num_forms {
    type: number
    sql: ${TABLE}.docs.num_forms ;;
    group_label: "Docs"
    group_item_label: "Num Forms"
  }

  dimension: docs__num_forms_edited {
    type: number
    sql: ${TABLE}.docs.num_forms_edited ;;
    group_label: "Docs"
    group_item_label: "Num Forms Edited"
  }

  dimension: docs__num_forms_viewed {
    type: number
    sql: ${TABLE}.docs.num_forms_viewed ;;
    group_label: "Docs"
    group_item_label: "Num Forms Viewed"
  }

  dimension: docs__num_owned_google_documents_created {
    type: number
    sql: ${TABLE}.docs.num_owned_google_documents_created ;;
    group_label: "Docs"
    group_item_label: "Num Owned Google Documents Created"
  }

  dimension: docs__num_owned_google_documents_edited {
    type: number
    sql: ${TABLE}.docs.num_owned_google_documents_edited ;;
    group_label: "Docs"
    group_item_label: "Num Owned Google Documents Edited"
  }

  dimension: docs__num_owned_google_documents_trashed {
    type: number
    sql: ${TABLE}.docs.num_owned_google_documents_trashed ;;
    group_label: "Docs"
    group_item_label: "Num Owned Google Documents Trashed"
  }

  dimension: docs__num_owned_google_documents_viewed {
    type: number
    sql: ${TABLE}.docs.num_owned_google_documents_viewed ;;
    group_label: "Docs"
    group_item_label: "Num Owned Google Documents Viewed"
  }

  dimension: docs__num_owned_google_drawings_created {
    type: number
    sql: ${TABLE}.docs.num_owned_google_drawings_created ;;
    group_label: "Docs"
    group_item_label: "Num Owned Google Drawings Created"
  }

  dimension: docs__num_owned_google_drawings_edited {
    type: number
    sql: ${TABLE}.docs.num_owned_google_drawings_edited ;;
    group_label: "Docs"
    group_item_label: "Num Owned Google Drawings Edited"
  }

  dimension: docs__num_owned_google_drawings_trashed {
    type: number
    sql: ${TABLE}.docs.num_owned_google_drawings_trashed ;;
    group_label: "Docs"
    group_item_label: "Num Owned Google Drawings Trashed"
  }

  dimension: docs__num_owned_google_drawings_viewed {
    type: number
    sql: ${TABLE}.docs.num_owned_google_drawings_viewed ;;
    group_label: "Docs"
    group_item_label: "Num Owned Google Drawings Viewed"
  }

  dimension: docs__num_owned_google_forms_created {
    type: number
    sql: ${TABLE}.docs.num_owned_google_forms_created ;;
    group_label: "Docs"
    group_item_label: "Num Owned Google Forms Created"
  }

  dimension: docs__num_owned_google_forms_edited {
    type: number
    sql: ${TABLE}.docs.num_owned_google_forms_edited ;;
    group_label: "Docs"
    group_item_label: "Num Owned Google Forms Edited"
  }

  dimension: docs__num_owned_google_forms_trashed {
    type: number
    sql: ${TABLE}.docs.num_owned_google_forms_trashed ;;
    group_label: "Docs"
    group_item_label: "Num Owned Google Forms Trashed"
  }

  dimension: docs__num_owned_google_forms_viewed {
    type: number
    sql: ${TABLE}.docs.num_owned_google_forms_viewed ;;
    group_label: "Docs"
    group_item_label: "Num Owned Google Forms Viewed"
  }

  dimension: docs__num_owned_google_presentations_created {
    type: number
    sql: ${TABLE}.docs.num_owned_google_presentations_created ;;
    group_label: "Docs"
    group_item_label: "Num Owned Google Presentations Created"
  }

  dimension: docs__num_owned_google_presentations_edited {
    type: number
    sql: ${TABLE}.docs.num_owned_google_presentations_edited ;;
    group_label: "Docs"
    group_item_label: "Num Owned Google Presentations Edited"
  }

  dimension: docs__num_owned_google_presentations_trashed {
    type: number
    sql: ${TABLE}.docs.num_owned_google_presentations_trashed ;;
    group_label: "Docs"
    group_item_label: "Num Owned Google Presentations Trashed"
  }

  dimension: docs__num_owned_google_presentations_viewed {
    type: number
    sql: ${TABLE}.docs.num_owned_google_presentations_viewed ;;
    group_label: "Docs"
    group_item_label: "Num Owned Google Presentations Viewed"
  }

  dimension: docs__num_owned_google_spreadsheets_created {
    type: number
    sql: ${TABLE}.docs.num_owned_google_spreadsheets_created ;;
    group_label: "Docs"
    group_item_label: "Num Owned Google Spreadsheets Created"
  }

  dimension: docs__num_owned_google_spreadsheets_edited {
    type: number
    sql: ${TABLE}.docs.num_owned_google_spreadsheets_edited ;;
    group_label: "Docs"
    group_item_label: "Num Owned Google Spreadsheets Edited"
  }

  dimension: docs__num_owned_google_spreadsheets_trashed {
    type: number
    sql: ${TABLE}.docs.num_owned_google_spreadsheets_trashed ;;
    group_label: "Docs"
    group_item_label: "Num Owned Google Spreadsheets Trashed"
  }

  dimension: docs__num_owned_google_spreadsheets_viewed {
    type: number
    sql: ${TABLE}.docs.num_owned_google_spreadsheets_viewed ;;
    group_label: "Docs"
    group_item_label: "Num Owned Google Spreadsheets Viewed"
  }

  dimension: docs__num_owned_items_created {
    type: number
    sql: ${TABLE}.docs.num_owned_items_created ;;
    group_label: "Docs"
    group_item_label: "Num Owned Items Created"
  }

  dimension: docs__num_owned_items_edited {
    type: number
    sql: ${TABLE}.docs.num_owned_items_edited ;;
    group_label: "Docs"
    group_item_label: "Num Owned Items Edited"
  }

  dimension: docs__num_owned_items_trashed {
    type: number
    sql: ${TABLE}.docs.num_owned_items_trashed ;;
    group_label: "Docs"
    group_item_label: "Num Owned Items Trashed"
  }

  dimension: docs__num_owned_items_viewed {
    type: number
    sql: ${TABLE}.docs.num_owned_items_viewed ;;
    group_label: "Docs"
    group_item_label: "Num Owned Items Viewed"
  }

  dimension: docs__num_owned_other_types_created {
    type: number
    sql: ${TABLE}.docs.num_owned_other_types_created ;;
    group_label: "Docs"
    group_item_label: "Num Owned Other Types Created"
  }

  dimension: docs__num_owned_other_types_edited {
    type: number
    sql: ${TABLE}.docs.num_owned_other_types_edited ;;
    group_label: "Docs"
    group_item_label: "Num Owned Other Types Edited"
  }

  dimension: docs__num_owned_other_types_trashed {
    type: number
    sql: ${TABLE}.docs.num_owned_other_types_trashed ;;
    group_label: "Docs"
    group_item_label: "Num Owned Other Types Trashed"
  }

  dimension: docs__num_owned_other_types_viewed {
    type: number
    sql: ${TABLE}.docs.num_owned_other_types_viewed ;;
    group_label: "Docs"
    group_item_label: "Num Owned Other Types Viewed"
  }

  dimension: docs__num_owned_sites_created {
    type: number
    sql: ${TABLE}.docs.num_owned_sites_created ;;
    group_label: "Docs"
    group_item_label: "Num Owned Sites Created"
  }

  dimension: docs__num_owned_sites_edited {
    type: number
    sql: ${TABLE}.docs.num_owned_sites_edited ;;
    group_label: "Docs"
    group_item_label: "Num Owned Sites Edited"
  }

  dimension: docs__num_owned_sites_trashed {
    type: number
    sql: ${TABLE}.docs.num_owned_sites_trashed ;;
    group_label: "Docs"
    group_item_label: "Num Owned Sites Trashed"
  }

  dimension: docs__num_owned_sites_viewed {
    type: number
    sql: ${TABLE}.docs.num_owned_sites_viewed ;;
    group_label: "Docs"
    group_item_label: "Num Owned Sites Viewed"
  }

  dimension: docs__num_presentations {
    type: number
    sql: ${TABLE}.docs.num_presentations ;;
    group_label: "Docs"
    group_item_label: "Num Presentations"
  }

  dimension: docs__num_presentations_edited {
    type: number
    sql: ${TABLE}.docs.num_presentations_edited ;;
    group_label: "Docs"
    group_item_label: "Num Presentations Edited"
  }

  dimension: docs__num_presentations_viewed {
    type: number
    sql: ${TABLE}.docs.num_presentations_viewed ;;
    group_label: "Docs"
    group_item_label: "Num Presentations Viewed"
  }

  dimension: docs__num_shared_docs {
    type: number
    sql: ${TABLE}.docs.num_shared_docs ;;
    group_label: "Docs"
    group_item_label: "Num Shared Docs"
  }

  dimension: docs__num_spreadsheets {
    type: number
    sql: ${TABLE}.docs.num_spreadsheets ;;
    group_label: "Docs"
    group_item_label: "Num Spreadsheets"
  }

  dimension: docs__num_spreadsheets_edited {
    type: number
    sql: ${TABLE}.docs.num_spreadsheets_edited ;;
    group_label: "Docs"
    group_item_label: "Num Spreadsheets Edited"
  }

  dimension: docs__num_spreadsheets_viewed {
    type: number
    sql: ${TABLE}.docs.num_spreadsheets_viewed ;;
    group_label: "Docs"
    group_item_label: "Num Spreadsheets Viewed"
  }

  dimension: docs__num_text_documents {
    type: number
    sql: ${TABLE}.docs.num_text_documents ;;
    group_label: "Docs"
    group_item_label: "Num Text Documents"
  }

  dimension: docs__num_text_documents_edited {
    type: number
    sql: ${TABLE}.docs.num_text_documents_edited ;;
    group_label: "Docs"
    group_item_label: "Num Text Documents Edited"
  }

  dimension: docs__num_text_documents_viewed {
    type: number
    sql: ${TABLE}.docs.num_text_documents_viewed ;;
    group_label: "Docs"
    group_item_label: "Num Text Documents Viewed"
  }

  dimension: docs__num_uploaded_files {
    type: number
    sql: ${TABLE}.docs.num_uploaded_files ;;
    group_label: "Docs"
    group_item_label: "Num Uploaded Files"
  }

  dimension: docs__num_uploaded_files_edited {
    type: number
    sql: ${TABLE}.docs.num_uploaded_files_edited ;;
    group_label: "Docs"
    group_item_label: "Num Uploaded Files Edited"
  }

  dimension: docs__num_uploaded_files_viewed {
    type: number
    sql: ${TABLE}.docs.num_uploaded_files_viewed ;;
    group_label: "Docs"
    group_item_label: "Num Uploaded Files Viewed"
  }

  dimension: domain_name {
    type: string
    sql: ${TABLE}.domain_name ;;
  }

  dimension: drive__num_1day_active_users {
    type: number
    sql: ${TABLE}.drive.num_1day_active_users ;;
    group_label: "Drive"
    group_item_label: "Num 1day Active Users"
  }

  dimension: drive__num_1day_google_documents_active_users {
    type: number
    sql: ${TABLE}.drive.num_1day_google_documents_active_users ;;
    group_label: "Drive"
    group_item_label: "Num 1day Google Documents Active Users"
  }

  dimension: drive__num_1day_google_drawings_active_users {
    type: number
    sql: ${TABLE}.drive.num_1day_google_drawings_active_users ;;
    group_label: "Drive"
    group_item_label: "Num 1day Google Drawings Active Users"
  }

  dimension: drive__num_1day_google_forms_active_users {
    type: number
    sql: ${TABLE}.drive.num_1day_google_forms_active_users ;;
    group_label: "Drive"
    group_item_label: "Num 1day Google Forms Active Users"
  }

  dimension: drive__num_1day_google_presentations_active_users {
    type: number
    sql: ${TABLE}.drive.num_1day_google_presentations_active_users ;;
    group_label: "Drive"
    group_item_label: "Num 1day Google Presentations Active Users"
  }

  dimension: drive__num_1day_google_sites_active_users {
    type: number
    sql: ${TABLE}.drive.num_1day_google_sites_active_users ;;
    group_label: "Drive"
    group_item_label: "Num 1day Google Sites Active Users"
  }

  dimension: drive__num_1day_google_spreadsheets_active_users {
    type: number
    sql: ${TABLE}.drive.num_1day_google_spreadsheets_active_users ;;
    group_label: "Drive"
    group_item_label: "Num 1day Google Spreadsheets Active Users"
  }

  dimension: drive__num_1day_other_types_active_users {
    type: number
    sql: ${TABLE}.drive.num_1day_other_types_active_users ;;
    group_label: "Drive"
    group_item_label: "Num 1day Other Types Active Users"
  }

  dimension: drive__num_30day_active_users {
    type: number
    sql: ${TABLE}.drive.num_30day_active_users ;;
    group_label: "Drive"
    group_item_label: "Num 30day Active Users"
  }

  dimension: drive__num_30day_google_documents_active_users {
    type: number
    sql: ${TABLE}.drive.num_30day_google_documents_active_users ;;
    group_label: "Drive"
    group_item_label: "Num 30day Google Documents Active Users"
  }

  dimension: drive__num_30day_google_drawings_active_users {
    type: number
    sql: ${TABLE}.drive.num_30day_google_drawings_active_users ;;
    group_label: "Drive"
    group_item_label: "Num 30day Google Drawings Active Users"
  }

  dimension: drive__num_30day_google_forms_active_users {
    type: number
    sql: ${TABLE}.drive.num_30day_google_forms_active_users ;;
    group_label: "Drive"
    group_item_label: "Num 30day Google Forms Active Users"
  }

  dimension: drive__num_30day_google_presentations_active_users {
    type: number
    sql: ${TABLE}.drive.num_30day_google_presentations_active_users ;;
    group_label: "Drive"
    group_item_label: "Num 30day Google Presentations Active Users"
  }

  dimension: drive__num_30day_google_sites_active_users {
    type: number
    sql: ${TABLE}.drive.num_30day_google_sites_active_users ;;
    group_label: "Drive"
    group_item_label: "Num 30day Google Sites Active Users"
  }

  dimension: drive__num_30day_google_spreadsheets_active_users {
    type: number
    sql: ${TABLE}.drive.num_30day_google_spreadsheets_active_users ;;
    group_label: "Drive"
    group_item_label: "Num 30day Google Spreadsheets Active Users"
  }

  dimension: drive__num_30day_other_types_active_users {
    type: number
    sql: ${TABLE}.drive.num_30day_other_types_active_users ;;
    group_label: "Drive"
    group_item_label: "Num 30day Other Types Active Users"
  }

  dimension: drive__num_7day_active_users {
    type: number
    sql: ${TABLE}.drive.num_7day_active_users ;;
    group_label: "Drive"
    group_item_label: "Num 7day Active Users"
  }

  dimension: drive__num_7day_google_documents_active_users {
    type: number
    sql: ${TABLE}.drive.num_7day_google_documents_active_users ;;
    group_label: "Drive"
    group_item_label: "Num 7day Google Documents Active Users"
  }

  dimension: drive__num_7day_google_drawings_active_users {
    type: number
    sql: ${TABLE}.drive.num_7day_google_drawings_active_users ;;
    group_label: "Drive"
    group_item_label: "Num 7day Google Drawings Active Users"
  }

  dimension: drive__num_7day_google_forms_active_users {
    type: number
    sql: ${TABLE}.drive.num_7day_google_forms_active_users ;;
    group_label: "Drive"
    group_item_label: "Num 7day Google Forms Active Users"
  }

  dimension: drive__num_7day_google_presentations_active_users {
    type: number
    sql: ${TABLE}.drive.num_7day_google_presentations_active_users ;;
    group_label: "Drive"
    group_item_label: "Num 7day Google Presentations Active Users"
  }

  dimension: drive__num_7day_google_sites_active_users {
    type: number
    sql: ${TABLE}.drive.num_7day_google_sites_active_users ;;
    group_label: "Drive"
    group_item_label: "Num 7day Google Sites Active Users"
  }

  dimension: drive__num_7day_google_spreadsheets_active_users {
    type: number
    sql: ${TABLE}.drive.num_7day_google_spreadsheets_active_users ;;
    group_label: "Drive"
    group_item_label: "Num 7day Google Spreadsheets Active Users"
  }

  dimension: drive__num_7day_other_types_active_users {
    type: number
    sql: ${TABLE}.drive.num_7day_other_types_active_users ;;
    group_label: "Drive"
    group_item_label: "Num 7day Other Types Active Users"
  }

  dimension: drive__num_collaborators {
    type: number
    sql: ${TABLE}.drive.num_collaborators ;;
    group_label: "Drive"
    group_item_label: "Num Collaborators"
  }

  dimension: drive__num_consumers {
    type: number
    sql: ${TABLE}.drive.num_consumers ;;
    group_label: "Drive"
    group_item_label: "Num Consumers"
  }

  dimension: drive__num_creators {
    type: number
    sql: ${TABLE}.drive.num_creators ;;
    group_label: "Drive"
    group_item_label: "Num Creators"
  }

  dimension: drive__num_google_documents_created {
    type: number
    sql: ${TABLE}.drive.num_google_documents_created ;;
    group_label: "Drive"
    group_item_label: "Num Google Documents Created"
  }

  dimension: drive__num_google_documents_edited {
    type: number
    sql: ${TABLE}.drive.num_google_documents_edited ;;
    group_label: "Drive"
    group_item_label: "Num Google Documents Edited"
  }

  dimension: drive__num_google_documents_trashed {
    type: number
    sql: ${TABLE}.drive.num_google_documents_trashed ;;
    group_label: "Drive"
    group_item_label: "Num Google Documents Trashed"
  }

  dimension: drive__num_google_documents_viewed {
    type: number
    sql: ${TABLE}.drive.num_google_documents_viewed ;;
    group_label: "Drive"
    group_item_label: "Num Google Documents Viewed"
  }

  dimension: drive__num_google_drawings_created {
    type: number
    sql: ${TABLE}.drive.num_google_drawings_created ;;
    group_label: "Drive"
    group_item_label: "Num Google Drawings Created"
  }

  dimension: drive__num_google_drawings_edited {
    type: number
    sql: ${TABLE}.drive.num_google_drawings_edited ;;
    group_label: "Drive"
    group_item_label: "Num Google Drawings Edited"
  }

  dimension: drive__num_google_drawings_trashed {
    type: number
    sql: ${TABLE}.drive.num_google_drawings_trashed ;;
    group_label: "Drive"
    group_item_label: "Num Google Drawings Trashed"
  }

  dimension: drive__num_google_drawings_viewed {
    type: number
    sql: ${TABLE}.drive.num_google_drawings_viewed ;;
    group_label: "Drive"
    group_item_label: "Num Google Drawings Viewed"
  }

  dimension: drive__num_google_forms_created {
    type: number
    sql: ${TABLE}.drive.num_google_forms_created ;;
    group_label: "Drive"
    group_item_label: "Num Google Forms Created"
  }

  dimension: drive__num_google_forms_edited {
    type: number
    sql: ${TABLE}.drive.num_google_forms_edited ;;
    group_label: "Drive"
    group_item_label: "Num Google Forms Edited"
  }

  dimension: drive__num_google_forms_trashed {
    type: number
    sql: ${TABLE}.drive.num_google_forms_trashed ;;
    group_label: "Drive"
    group_item_label: "Num Google Forms Trashed"
  }

  dimension: drive__num_google_forms_viewed {
    type: number
    sql: ${TABLE}.drive.num_google_forms_viewed ;;
    group_label: "Drive"
    group_item_label: "Num Google Forms Viewed"
  }

  dimension: drive__num_google_presentations_created {
    type: number
    sql: ${TABLE}.drive.num_google_presentations_created ;;
    group_label: "Drive"
    group_item_label: "Num Google Presentations Created"
  }

  dimension: drive__num_google_presentations_edited {
    type: number
    sql: ${TABLE}.drive.num_google_presentations_edited ;;
    group_label: "Drive"
    group_item_label: "Num Google Presentations Edited"
  }

  dimension: drive__num_google_presentations_trashed {
    type: number
    sql: ${TABLE}.drive.num_google_presentations_trashed ;;
    group_label: "Drive"
    group_item_label: "Num Google Presentations Trashed"
  }

  dimension: drive__num_google_presentations_viewed {
    type: number
    sql: ${TABLE}.drive.num_google_presentations_viewed ;;
    group_label: "Drive"
    group_item_label: "Num Google Presentations Viewed"
  }

  dimension: drive__num_google_sites_created {
    type: number
    sql: ${TABLE}.drive.num_google_sites_created ;;
    group_label: "Drive"
    group_item_label: "Num Google Sites Created"
  }

  dimension: drive__num_google_sites_edited {
    type: number
    sql: ${TABLE}.drive.num_google_sites_edited ;;
    group_label: "Drive"
    group_item_label: "Num Google Sites Edited"
  }

  dimension: drive__num_google_sites_trashed {
    type: number
    sql: ${TABLE}.drive.num_google_sites_trashed ;;
    group_label: "Drive"
    group_item_label: "Num Google Sites Trashed"
  }

  dimension: drive__num_google_sites_viewed {
    type: number
    sql: ${TABLE}.drive.num_google_sites_viewed ;;
    group_label: "Drive"
    group_item_label: "Num Google Sites Viewed"
  }

  dimension: drive__num_google_spreadsheets_created {
    type: number
    sql: ${TABLE}.drive.num_google_spreadsheets_created ;;
    group_label: "Drive"
    group_item_label: "Num Google Spreadsheets Created"
  }

  dimension: drive__num_google_spreadsheets_edited {
    type: number
    sql: ${TABLE}.drive.num_google_spreadsheets_edited ;;
    group_label: "Drive"
    group_item_label: "Num Google Spreadsheets Edited"
  }

  dimension: drive__num_google_spreadsheets_trashed {
    type: number
    sql: ${TABLE}.drive.num_google_spreadsheets_trashed ;;
    group_label: "Drive"
    group_item_label: "Num Google Spreadsheets Trashed"
  }

  dimension: drive__num_google_spreadsheets_viewed {
    type: number
    sql: ${TABLE}.drive.num_google_spreadsheets_viewed ;;
    group_label: "Drive"
    group_item_label: "Num Google Spreadsheets Viewed"
  }

  dimension: drive__num_items_created {
    type: number
    sql: ${TABLE}.drive.num_items_created ;;
    group_label: "Drive"
    group_item_label: "Num Items Created"
  }

  dimension: drive__num_items_edited {
    type: number
    sql: ${TABLE}.drive.num_items_edited ;;
    group_label: "Drive"
    group_item_label: "Num Items Edited"
  }

  dimension: drive__num_items_trashed {
    type: number
    sql: ${TABLE}.drive.num_items_trashed ;;
    group_label: "Drive"
    group_item_label: "Num Items Trashed"
  }

  dimension: drive__num_items_viewed {
    type: number
    sql: ${TABLE}.drive.num_items_viewed ;;
    group_label: "Drive"
    group_item_label: "Num Items Viewed"
  }

  dimension: drive__num_monthly_active_users {
    type: number
    sql: ${TABLE}.drive.num_monthly_active_users ;;
    group_label: "Drive"
    group_item_label: "Num Monthly Active Users"
  }

  dimension: drive__num_other_types_created {
    type: number
    sql: ${TABLE}.drive.num_other_types_created ;;
    group_label: "Drive"
    group_item_label: "Num Other Types Created"
  }

  dimension: drive__num_other_types_edited {
    type: number
    sql: ${TABLE}.drive.num_other_types_edited ;;
    group_label: "Drive"
    group_item_label: "Num Other Types Edited"
  }

  dimension: drive__num_other_types_trashed {
    type: number
    sql: ${TABLE}.drive.num_other_types_trashed ;;
    group_label: "Drive"
    group_item_label: "Num Other Types Trashed"
  }

  dimension: drive__num_other_types_viewed {
    type: number
    sql: ${TABLE}.drive.num_other_types_viewed ;;
    group_label: "Drive"
    group_item_label: "Num Other Types Viewed"
  }

  dimension: drive__num_owned_external_items_added {
    type: number
    sql: ${TABLE}.drive.num_owned_external_items_added ;;
    group_label: "Drive"
    group_item_label: "Num Owned External Items Added"
  }

  dimension: drive__num_owned_external_items_delta {
    type: number
    sql: ${TABLE}.drive.num_owned_external_items_delta ;;
    group_label: "Drive"
    group_item_label: "Num Owned External Items Delta"
  }

  dimension: drive__num_owned_external_items_removed {
    type: number
    sql: ${TABLE}.drive.num_owned_external_items_removed ;;
    group_label: "Drive"
    group_item_label: "Num Owned External Items Removed"
  }

  dimension: drive__num_owned_google_documents_added {
    type: number
    sql: ${TABLE}.drive.num_owned_google_documents_added ;;
    group_label: "Drive"
    group_item_label: "Num Owned Google Documents Added"
  }

  dimension: drive__num_owned_google_documents_created {
    type: number
    sql: ${TABLE}.drive.num_owned_google_documents_created ;;
    group_label: "Drive"
    group_item_label: "Num Owned Google Documents Created"
  }

  dimension: drive__num_owned_google_documents_delta {
    type: number
    sql: ${TABLE}.drive.num_owned_google_documents_delta ;;
    group_label: "Drive"
    group_item_label: "Num Owned Google Documents Delta"
  }

  dimension: drive__num_owned_google_documents_edited {
    type: number
    sql: ${TABLE}.drive.num_owned_google_documents_edited ;;
    group_label: "Drive"
    group_item_label: "Num Owned Google Documents Edited"
  }

  dimension: drive__num_owned_google_documents_removed {
    type: number
    sql: ${TABLE}.drive.num_owned_google_documents_removed ;;
    group_label: "Drive"
    group_item_label: "Num Owned Google Documents Removed"
  }

  dimension: drive__num_owned_google_documents_trashed {
    type: number
    sql: ${TABLE}.drive.num_owned_google_documents_trashed ;;
    group_label: "Drive"
    group_item_label: "Num Owned Google Documents Trashed"
  }

  dimension: drive__num_owned_google_documents_viewed {
    type: number
    sql: ${TABLE}.drive.num_owned_google_documents_viewed ;;
    group_label: "Drive"
    group_item_label: "Num Owned Google Documents Viewed"
  }

  dimension: drive__num_owned_google_drawings_added {
    type: number
    sql: ${TABLE}.drive.num_owned_google_drawings_added ;;
    group_label: "Drive"
    group_item_label: "Num Owned Google Drawings Added"
  }

  dimension: drive__num_owned_google_drawings_created {
    type: number
    sql: ${TABLE}.drive.num_owned_google_drawings_created ;;
    group_label: "Drive"
    group_item_label: "Num Owned Google Drawings Created"
  }

  dimension: drive__num_owned_google_drawings_delta {
    type: number
    sql: ${TABLE}.drive.num_owned_google_drawings_delta ;;
    group_label: "Drive"
    group_item_label: "Num Owned Google Drawings Delta"
  }

  dimension: drive__num_owned_google_drawings_edited {
    type: number
    sql: ${TABLE}.drive.num_owned_google_drawings_edited ;;
    group_label: "Drive"
    group_item_label: "Num Owned Google Drawings Edited"
  }

  dimension: drive__num_owned_google_drawings_removed {
    type: number
    sql: ${TABLE}.drive.num_owned_google_drawings_removed ;;
    group_label: "Drive"
    group_item_label: "Num Owned Google Drawings Removed"
  }

  dimension: drive__num_owned_google_drawings_trashed {
    type: number
    sql: ${TABLE}.drive.num_owned_google_drawings_trashed ;;
    group_label: "Drive"
    group_item_label: "Num Owned Google Drawings Trashed"
  }

  dimension: drive__num_owned_google_drawings_viewed {
    type: number
    sql: ${TABLE}.drive.num_owned_google_drawings_viewed ;;
    group_label: "Drive"
    group_item_label: "Num Owned Google Drawings Viewed"
  }

  dimension: drive__num_owned_google_forms_added {
    type: number
    sql: ${TABLE}.drive.num_owned_google_forms_added ;;
    group_label: "Drive"
    group_item_label: "Num Owned Google Forms Added"
  }

  dimension: drive__num_owned_google_forms_created {
    type: number
    sql: ${TABLE}.drive.num_owned_google_forms_created ;;
    group_label: "Drive"
    group_item_label: "Num Owned Google Forms Created"
  }

  dimension: drive__num_owned_google_forms_delta {
    type: number
    sql: ${TABLE}.drive.num_owned_google_forms_delta ;;
    group_label: "Drive"
    group_item_label: "Num Owned Google Forms Delta"
  }

  dimension: drive__num_owned_google_forms_edited {
    type: number
    sql: ${TABLE}.drive.num_owned_google_forms_edited ;;
    group_label: "Drive"
    group_item_label: "Num Owned Google Forms Edited"
  }

  dimension: drive__num_owned_google_forms_removed {
    type: number
    sql: ${TABLE}.drive.num_owned_google_forms_removed ;;
    group_label: "Drive"
    group_item_label: "Num Owned Google Forms Removed"
  }

  dimension: drive__num_owned_google_forms_trashed {
    type: number
    sql: ${TABLE}.drive.num_owned_google_forms_trashed ;;
    group_label: "Drive"
    group_item_label: "Num Owned Google Forms Trashed"
  }

  dimension: drive__num_owned_google_forms_viewed {
    type: number
    sql: ${TABLE}.drive.num_owned_google_forms_viewed ;;
    group_label: "Drive"
    group_item_label: "Num Owned Google Forms Viewed"
  }

  dimension: drive__num_owned_google_presentations_added {
    type: number
    sql: ${TABLE}.drive.num_owned_google_presentations_added ;;
    group_label: "Drive"
    group_item_label: "Num Owned Google Presentations Added"
  }

  dimension: drive__num_owned_google_presentations_created {
    type: number
    sql: ${TABLE}.drive.num_owned_google_presentations_created ;;
    group_label: "Drive"
    group_item_label: "Num Owned Google Presentations Created"
  }

  dimension: drive__num_owned_google_presentations_delta {
    type: number
    sql: ${TABLE}.drive.num_owned_google_presentations_delta ;;
    group_label: "Drive"
    group_item_label: "Num Owned Google Presentations Delta"
  }

  dimension: drive__num_owned_google_presentations_edited {
    type: number
    sql: ${TABLE}.drive.num_owned_google_presentations_edited ;;
    group_label: "Drive"
    group_item_label: "Num Owned Google Presentations Edited"
  }

  dimension: drive__num_owned_google_presentations_removed {
    type: number
    sql: ${TABLE}.drive.num_owned_google_presentations_removed ;;
    group_label: "Drive"
    group_item_label: "Num Owned Google Presentations Removed"
  }

  dimension: drive__num_owned_google_presentations_trashed {
    type: number
    sql: ${TABLE}.drive.num_owned_google_presentations_trashed ;;
    group_label: "Drive"
    group_item_label: "Num Owned Google Presentations Trashed"
  }

  dimension: drive__num_owned_google_presentations_viewed {
    type: number
    sql: ${TABLE}.drive.num_owned_google_presentations_viewed ;;
    group_label: "Drive"
    group_item_label: "Num Owned Google Presentations Viewed"
  }

  dimension: drive__num_owned_google_sites_added {
    type: number
    sql: ${TABLE}.drive.num_owned_google_sites_added ;;
    group_label: "Drive"
    group_item_label: "Num Owned Google Sites Added"
  }

  dimension: drive__num_owned_google_sites_created {
    type: number
    sql: ${TABLE}.drive.num_owned_google_sites_created ;;
    group_label: "Drive"
    group_item_label: "Num Owned Google Sites Created"
  }

  dimension: drive__num_owned_google_sites_delta {
    type: number
    sql: ${TABLE}.drive.num_owned_google_sites_delta ;;
    group_label: "Drive"
    group_item_label: "Num Owned Google Sites Delta"
  }

  dimension: drive__num_owned_google_sites_edited {
    type: number
    sql: ${TABLE}.drive.num_owned_google_sites_edited ;;
    group_label: "Drive"
    group_item_label: "Num Owned Google Sites Edited"
  }

  dimension: drive__num_owned_google_sites_removed {
    type: number
    sql: ${TABLE}.drive.num_owned_google_sites_removed ;;
    group_label: "Drive"
    group_item_label: "Num Owned Google Sites Removed"
  }

  dimension: drive__num_owned_google_sites_trashed {
    type: number
    sql: ${TABLE}.drive.num_owned_google_sites_trashed ;;
    group_label: "Drive"
    group_item_label: "Num Owned Google Sites Trashed"
  }

  dimension: drive__num_owned_google_sites_viewed {
    type: number
    sql: ${TABLE}.drive.num_owned_google_sites_viewed ;;
    group_label: "Drive"
    group_item_label: "Num Owned Google Sites Viewed"
  }

  dimension: drive__num_owned_google_spreadsheets_added {
    type: number
    sql: ${TABLE}.drive.num_owned_google_spreadsheets_added ;;
    group_label: "Drive"
    group_item_label: "Num Owned Google Spreadsheets Added"
  }

  dimension: drive__num_owned_google_spreadsheets_created {
    type: number
    sql: ${TABLE}.drive.num_owned_google_spreadsheets_created ;;
    group_label: "Drive"
    group_item_label: "Num Owned Google Spreadsheets Created"
  }

  dimension: drive__num_owned_google_spreadsheets_delta {
    type: number
    sql: ${TABLE}.drive.num_owned_google_spreadsheets_delta ;;
    group_label: "Drive"
    group_item_label: "Num Owned Google Spreadsheets Delta"
  }

  dimension: drive__num_owned_google_spreadsheets_edited {
    type: number
    sql: ${TABLE}.drive.num_owned_google_spreadsheets_edited ;;
    group_label: "Drive"
    group_item_label: "Num Owned Google Spreadsheets Edited"
  }

  dimension: drive__num_owned_google_spreadsheets_removed {
    type: number
    sql: ${TABLE}.drive.num_owned_google_spreadsheets_removed ;;
    group_label: "Drive"
    group_item_label: "Num Owned Google Spreadsheets Removed"
  }

  dimension: drive__num_owned_google_spreadsheets_trashed {
    type: number
    sql: ${TABLE}.drive.num_owned_google_spreadsheets_trashed ;;
    group_label: "Drive"
    group_item_label: "Num Owned Google Spreadsheets Trashed"
  }

  dimension: drive__num_owned_google_spreadsheets_viewed {
    type: number
    sql: ${TABLE}.drive.num_owned_google_spreadsheets_viewed ;;
    group_label: "Drive"
    group_item_label: "Num Owned Google Spreadsheets Viewed"
  }

  dimension: drive__num_owned_internal_items_added {
    type: number
    sql: ${TABLE}.drive.num_owned_internal_items_added ;;
    group_label: "Drive"
    group_item_label: "Num Owned Internal Items Added"
  }

  dimension: drive__num_owned_internal_items_delta {
    type: number
    sql: ${TABLE}.drive.num_owned_internal_items_delta ;;
    group_label: "Drive"
    group_item_label: "Num Owned Internal Items Delta"
  }

  dimension: drive__num_owned_internal_items_removed {
    type: number
    sql: ${TABLE}.drive.num_owned_internal_items_removed ;;
    group_label: "Drive"
    group_item_label: "Num Owned Internal Items Removed"
  }

  dimension: drive__num_owned_items_added {
    type: number
    sql: ${TABLE}.drive.num_owned_items_added ;;
    group_label: "Drive"
    group_item_label: "Num Owned Items Added"
  }

  dimension: drive__num_owned_items_created {
    type: number
    sql: ${TABLE}.drive.num_owned_items_created ;;
    group_label: "Drive"
    group_item_label: "Num Owned Items Created"
  }

  dimension: drive__num_owned_items_delta {
    type: number
    sql: ${TABLE}.drive.num_owned_items_delta ;;
    group_label: "Drive"
    group_item_label: "Num Owned Items Delta"
  }

  dimension: drive__num_owned_items_edited {
    type: number
    sql: ${TABLE}.drive.num_owned_items_edited ;;
    group_label: "Drive"
    group_item_label: "Num Owned Items Edited"
  }

  dimension: drive__num_owned_items_removed {
    type: number
    sql: ${TABLE}.drive.num_owned_items_removed ;;
    group_label: "Drive"
    group_item_label: "Num Owned Items Removed"
  }

  dimension: drive__num_owned_items_trashed {
    type: number
    sql: ${TABLE}.drive.num_owned_items_trashed ;;
    group_label: "Drive"
    group_item_label: "Num Owned Items Trashed"
  }

  dimension: drive__num_owned_items_viewed {
    type: number
    sql: ${TABLE}.drive.num_owned_items_viewed ;;
    group_label: "Drive"
    group_item_label: "Num Owned Items Viewed"
  }

  dimension: drive__num_owned_items_with_visibility_anyone_in_domain_added {
    type: number
    sql: ${TABLE}.drive.num_owned_items_with_visibility_anyone_in_domain_added ;;
    group_label: "Drive"
    group_item_label: "Num Owned Items with Visibility Anyone In Domain Added"
  }

  dimension: drive__num_owned_items_with_visibility_anyone_in_domain_delta {
    type: number
    sql: ${TABLE}.drive.num_owned_items_with_visibility_anyone_in_domain_delta ;;
    group_label: "Drive"
    group_item_label: "Num Owned Items with Visibility Anyone In Domain Delta"
  }

  dimension: drive__num_owned_items_with_visibility_anyone_in_domain_removed {
    type: number
    sql: ${TABLE}.drive.num_owned_items_with_visibility_anyone_in_domain_removed ;;
    group_label: "Drive"
    group_item_label: "Num Owned Items with Visibility Anyone In Domain Removed"
  }

  dimension: drive__num_owned_items_with_visibility_anyone_in_domain_with_link_added {
    type: number
    sql: ${TABLE}.drive.num_owned_items_with_visibility_anyone_in_domain_with_link_added ;;
    group_label: "Drive"
    group_item_label: "Num Owned Items with Visibility Anyone In Domain with Link Added"
  }

  dimension: drive__num_owned_items_with_visibility_anyone_in_domain_with_link_delta {
    type: number
    sql: ${TABLE}.drive.num_owned_items_with_visibility_anyone_in_domain_with_link_delta ;;
    group_label: "Drive"
    group_item_label: "Num Owned Items with Visibility Anyone In Domain with Link Delta"
  }

  dimension: drive__num_owned_items_with_visibility_anyone_in_domain_with_link_removed {
    type: number
    sql: ${TABLE}.drive.num_owned_items_with_visibility_anyone_in_domain_with_link_removed ;;
    group_label: "Drive"
    group_item_label: "Num Owned Items with Visibility Anyone In Domain with Link Removed"
  }

  dimension: drive__num_owned_items_with_visibility_anyone_with_link_added {
    type: number
    sql: ${TABLE}.drive.num_owned_items_with_visibility_anyone_with_link_added ;;
    group_label: "Drive"
    group_item_label: "Num Owned Items with Visibility Anyone with Link Added"
  }

  dimension: drive__num_owned_items_with_visibility_anyone_with_link_delta {
    type: number
    sql: ${TABLE}.drive.num_owned_items_with_visibility_anyone_with_link_delta ;;
    group_label: "Drive"
    group_item_label: "Num Owned Items with Visibility Anyone with Link Delta"
  }

  dimension: drive__num_owned_items_with_visibility_anyone_with_link_removed {
    type: number
    sql: ${TABLE}.drive.num_owned_items_with_visibility_anyone_with_link_removed ;;
    group_label: "Drive"
    group_item_label: "Num Owned Items with Visibility Anyone with Link Removed"
  }

  dimension: drive__num_owned_items_with_visibility_private_added {
    type: number
    sql: ${TABLE}.drive.num_owned_items_with_visibility_private_added ;;
    group_label: "Drive"
    group_item_label: "Num Owned Items with Visibility Private Added"
  }

  dimension: drive__num_owned_items_with_visibility_private_delta {
    type: number
    sql: ${TABLE}.drive.num_owned_items_with_visibility_private_delta ;;
    group_label: "Drive"
    group_item_label: "Num Owned Items with Visibility Private Delta"
  }

  dimension: drive__num_owned_items_with_visibility_private_removed {
    type: number
    sql: ${TABLE}.drive.num_owned_items_with_visibility_private_removed ;;
    group_label: "Drive"
    group_item_label: "Num Owned Items with Visibility Private Removed"
  }

  dimension: drive__num_owned_items_with_visibility_public_added {
    type: number
    sql: ${TABLE}.drive.num_owned_items_with_visibility_public_added ;;
    group_label: "Drive"
    group_item_label: "Num Owned Items with Visibility Public Added"
  }

  dimension: drive__num_owned_items_with_visibility_public_delta {
    type: number
    sql: ${TABLE}.drive.num_owned_items_with_visibility_public_delta ;;
    group_label: "Drive"
    group_item_label: "Num Owned Items with Visibility Public Delta"
  }

  dimension: drive__num_owned_items_with_visibility_public_removed {
    type: number
    sql: ${TABLE}.drive.num_owned_items_with_visibility_public_removed ;;
    group_label: "Drive"
    group_item_label: "Num Owned Items with Visibility Public Removed"
  }

  dimension: drive__num_owned_items_with_visibility_shared_externally_added {
    type: number
    sql: ${TABLE}.drive.num_owned_items_with_visibility_shared_externally_added ;;
    group_label: "Drive"
    group_item_label: "Num Owned Items with Visibility Shared Externally Added"
  }

  dimension: drive__num_owned_items_with_visibility_shared_externally_delta {
    type: number
    sql: ${TABLE}.drive.num_owned_items_with_visibility_shared_externally_delta ;;
    group_label: "Drive"
    group_item_label: "Num Owned Items with Visibility Shared Externally Delta"
  }

  dimension: drive__num_owned_items_with_visibility_shared_externally_removed {
    type: number
    sql: ${TABLE}.drive.num_owned_items_with_visibility_shared_externally_removed ;;
    group_label: "Drive"
    group_item_label: "Num Owned Items with Visibility Shared Externally Removed"
  }

  dimension: drive__num_owned_items_with_visibility_shared_internally_added {
    type: number
    sql: ${TABLE}.drive.num_owned_items_with_visibility_shared_internally_added ;;
    group_label: "Drive"
    group_item_label: "Num Owned Items with Visibility Shared Internally Added"
  }

  dimension: drive__num_owned_items_with_visibility_shared_internally_delta {
    type: number
    sql: ${TABLE}.drive.num_owned_items_with_visibility_shared_internally_delta ;;
    group_label: "Drive"
    group_item_label: "Num Owned Items with Visibility Shared Internally Delta"
  }

  dimension: drive__num_owned_items_with_visibility_shared_internally_removed {
    type: number
    sql: ${TABLE}.drive.num_owned_items_with_visibility_shared_internally_removed ;;
    group_label: "Drive"
    group_item_label: "Num Owned Items with Visibility Shared Internally Removed"
  }

  dimension: drive__num_owned_items_with_visibility_unknown_added {
    type: number
    sql: ${TABLE}.drive.num_owned_items_with_visibility_unknown_added ;;
    group_label: "Drive"
    group_item_label: "Num Owned Items with Visibility Unknown Added"
  }

  dimension: drive__num_owned_items_with_visibility_unknown_delta {
    type: number
    sql: ${TABLE}.drive.num_owned_items_with_visibility_unknown_delta ;;
    group_label: "Drive"
    group_item_label: "Num Owned Items with Visibility Unknown Delta"
  }

  dimension: drive__num_owned_items_with_visibility_unknown_removed {
    type: number
    sql: ${TABLE}.drive.num_owned_items_with_visibility_unknown_removed ;;
    group_label: "Drive"
    group_item_label: "Num Owned Items with Visibility Unknown Removed"
  }

  dimension: drive__num_owned_other_types_added {
    type: number
    sql: ${TABLE}.drive.num_owned_other_types_added ;;
    group_label: "Drive"
    group_item_label: "Num Owned Other Types Added"
  }

  dimension: drive__num_owned_other_types_created {
    type: number
    sql: ${TABLE}.drive.num_owned_other_types_created ;;
    group_label: "Drive"
    group_item_label: "Num Owned Other Types Created"
  }

  dimension: drive__num_owned_other_types_delta {
    type: number
    sql: ${TABLE}.drive.num_owned_other_types_delta ;;
    group_label: "Drive"
    group_item_label: "Num Owned Other Types Delta"
  }

  dimension: drive__num_owned_other_types_edited {
    type: number
    sql: ${TABLE}.drive.num_owned_other_types_edited ;;
    group_label: "Drive"
    group_item_label: "Num Owned Other Types Edited"
  }

  dimension: drive__num_owned_other_types_removed {
    type: number
    sql: ${TABLE}.drive.num_owned_other_types_removed ;;
    group_label: "Drive"
    group_item_label: "Num Owned Other Types Removed"
  }

  dimension: drive__num_owned_other_types_trashed {
    type: number
    sql: ${TABLE}.drive.num_owned_other_types_trashed ;;
    group_label: "Drive"
    group_item_label: "Num Owned Other Types Trashed"
  }

  dimension: drive__num_owned_other_types_viewed {
    type: number
    sql: ${TABLE}.drive.num_owned_other_types_viewed ;;
    group_label: "Drive"
    group_item_label: "Num Owned Other Types Viewed"
  }

  dimension: drive__num_sharers {
    type: number
    sql: ${TABLE}.drive.num_sharers ;;
    group_label: "Drive"
    group_item_label: "Num Sharers"
  }

  dimension: drive__timestamp_last_active_usage {
    type: number
    sql: ${TABLE}.drive.timestamp_last_active_usage ;;
    group_label: "Drive"
    group_item_label: "Timestamp Last Active Usage"
  }

  dimension: gmail__is_gmail_enabled {
    type: yesno
    sql: ${TABLE}.gmail.is_gmail_enabled ;;
    group_label: "Gmail"
    group_item_label: "Is Gmail Enabled"
  }

  dimension: gmail__last_access_time {
    type: number
    sql: ${TABLE}.gmail.last_access_time ;;
    group_label: "Gmail"
    group_item_label: "Last Access Time"
  }

  dimension: gmail__last_imap_time {
    type: number
    sql: ${TABLE}.gmail.last_imap_time ;;
    group_label: "Gmail"
    group_item_label: "Last Imap Time"
  }

  dimension: gmail__last_interaction_time {
    type: number
    sql: ${TABLE}.gmail.last_interaction_time ;;
    group_label: "Gmail"
    group_item_label: "Last Interaction Time"
  }

  dimension: gmail__last_pop_time {
    type: number
    sql: ${TABLE}.gmail.last_pop_time ;;
    group_label: "Gmail"
    group_item_label: "Last Pop Time"
  }

  dimension: gmail__last_webmail_time {
    type: number
    sql: ${TABLE}.gmail.last_webmail_time ;;
    group_label: "Gmail"
    group_item_label: "Last Webmail Time"
  }

  dimension: gmail__num_1day_active_users {
    type: number
    sql: ${TABLE}.gmail.num_1day_active_users ;;
    group_label: "Gmail"
    group_item_label: "Num 1day Active Users"
  }

  dimension: gmail__num_1day_imap_users {
    type: number
    sql: ${TABLE}.gmail.num_1day_imap_users ;;
    group_label: "Gmail"
    group_item_label: "Num 1day Imap Users"
  }

  dimension: gmail__num_1day_pop_users {
    type: number
    sql: ${TABLE}.gmail.num_1day_pop_users ;;
    group_label: "Gmail"
    group_item_label: "Num 1day Pop Users"
  }

  dimension: gmail__num_1day_webmail_users {
    type: number
    sql: ${TABLE}.gmail.num_1day_webmail_users ;;
    group_label: "Gmail"
    group_item_label: "Num 1day Webmail Users"
  }

  dimension: gmail__num_30day_active_users {
    type: number
    sql: ${TABLE}.gmail.num_30day_active_users ;;
    group_label: "Gmail"
    group_item_label: "Num 30day Active Users"
  }

  dimension: gmail__num_30day_imap_users {
    type: number
    sql: ${TABLE}.gmail.num_30day_imap_users ;;
    group_label: "Gmail"
    group_item_label: "Num 30day Imap Users"
  }

  dimension: gmail__num_30day_pop_users {
    type: number
    sql: ${TABLE}.gmail.num_30day_pop_users ;;
    group_label: "Gmail"
    group_item_label: "Num 30day Pop Users"
  }

  dimension: gmail__num_30day_webmail_users {
    type: number
    sql: ${TABLE}.gmail.num_30day_webmail_users ;;
    group_label: "Gmail"
    group_item_label: "Num 30day Webmail Users"
  }

  dimension: gmail__num_7day_active_users {
    type: number
    sql: ${TABLE}.gmail.num_7day_active_users ;;
    group_label: "Gmail"
    group_item_label: "Num 7day Active Users"
  }

  dimension: gmail__num_7day_imap_users {
    type: number
    sql: ${TABLE}.gmail.num_7day_imap_users ;;
    group_label: "Gmail"
    group_item_label: "Num 7day Imap Users"
  }

  dimension: gmail__num_7day_pop_users {
    type: number
    sql: ${TABLE}.gmail.num_7day_pop_users ;;
    group_label: "Gmail"
    group_item_label: "Num 7day Pop Users"
  }

  dimension: gmail__num_7day_webmail_users {
    type: number
    sql: ${TABLE}.gmail.num_7day_webmail_users ;;
    group_label: "Gmail"
    group_item_label: "Num 7day Webmail Users"
  }

  dimension: gmail__num_emails_exchanged {
    type: number
    sql: ${TABLE}.gmail.num_emails_exchanged ;;
    group_label: "Gmail"
    group_item_label: "Num Emails Exchanged"
  }

  dimension: gmail__num_emails_received {
    type: number
    sql: ${TABLE}.gmail.num_emails_received ;;
    group_label: "Gmail"
    group_item_label: "Num Emails Received"
  }

  dimension: gmail__num_emails_sent {
    type: number
    sql: ${TABLE}.gmail.num_emails_sent ;;
    group_label: "Gmail"
    group_item_label: "Num Emails Sent"
  }

  dimension: gmail__num_inbound_delivered_emails {
    type: number
    sql: ${TABLE}.gmail.num_inbound_delivered_emails ;;
    group_label: "Gmail"
    group_item_label: "Num Inbound Delivered Emails"
  }

  dimension: gmail__num_inbound_encrypted_emails {
    type: number
    sql: ${TABLE}.gmail.num_inbound_encrypted_emails ;;
    group_label: "Gmail"
    group_item_label: "Num Inbound Encrypted Emails"
  }

  dimension: gmail__num_inbound_non_spam_emails {
    type: number
    sql: ${TABLE}.gmail.num_inbound_non_spam_emails ;;
    group_label: "Gmail"
    group_item_label: "Num Inbound Non Spam Emails"
  }

  dimension: gmail__num_inbound_rejected_emails {
    type: number
    sql: ${TABLE}.gmail.num_inbound_rejected_emails ;;
    group_label: "Gmail"
    group_item_label: "Num Inbound Rejected Emails"
  }

  dimension: gmail__num_inbound_rerouted_emails {
    type: number
    sql: ${TABLE}.gmail.num_inbound_rerouted_emails ;;
    group_label: "Gmail"
    group_item_label: "Num Inbound Rerouted Emails"
  }

  dimension: gmail__num_inbound_spam_emails {
    type: number
    sql: ${TABLE}.gmail.num_inbound_spam_emails ;;
    group_label: "Gmail"
    group_item_label: "Num Inbound Spam Emails"
  }

  dimension: gmail__num_inbound_unencrypted_emails {
    type: number
    sql: ${TABLE}.gmail.num_inbound_unencrypted_emails ;;
    group_label: "Gmail"
    group_item_label: "Num Inbound Unencrypted Emails"
  }

  dimension: gmail__num_outbound_delivered_emails {
    type: number
    sql: ${TABLE}.gmail.num_outbound_delivered_emails ;;
    group_label: "Gmail"
    group_item_label: "Num Outbound Delivered Emails"
  }

  dimension: gmail__num_outbound_encrypted_emails {
    type: number
    sql: ${TABLE}.gmail.num_outbound_encrypted_emails ;;
    group_label: "Gmail"
    group_item_label: "Num Outbound Encrypted Emails"
  }

  dimension: gmail__num_outbound_rejected_emails {
    type: number
    sql: ${TABLE}.gmail.num_outbound_rejected_emails ;;
    group_label: "Gmail"
    group_item_label: "Num Outbound Rejected Emails"
  }

  dimension: gmail__num_outbound_rerouted_emails {
    type: number
    sql: ${TABLE}.gmail.num_outbound_rerouted_emails ;;
    group_label: "Gmail"
    group_item_label: "Num Outbound Rerouted Emails"
  }

  dimension: gmail__num_outbound_unencrypted_emails {
    type: number
    sql: ${TABLE}.gmail.num_outbound_unencrypted_emails ;;
    group_label: "Gmail"
    group_item_label: "Num Outbound Unencrypted Emails"
  }

  dimension: gmail__num_spam_emails_received {
    type: number
    sql: ${TABLE}.gmail.num_spam_emails_received ;;
    group_label: "Gmail"
    group_item_label: "Num Spam Emails Received"
  }

  dimension: gplus__community_name {
    type: string
    sql: ${TABLE}.gplus.community_name ;;
    group_label: "Gplus"
    group_item_label: "Community Name"
  }

  dimension: gplus__creation_time_usec {
    type: number
    sql: ${TABLE}.gplus.creation_time_usec ;;
    group_label: "Gplus"
    group_item_label: "Creation Time Usec"
  }

  dimension: gplus__num_1day_active_users {
    type: number
    sql: ${TABLE}.gplus.num_1day_active_users ;;
    group_label: "Gplus"
    group_item_label: "Num 1day Active Users"
  }

  dimension: gplus__num_30day_active_external_members {
    type: number
    sql: ${TABLE}.gplus.num_30day_active_external_members ;;
    group_label: "Gplus"
    group_item_label: "Num 30day Active External Members"
  }

  dimension: gplus__num_30day_active_internal_members {
    type: number
    sql: ${TABLE}.gplus.num_30day_active_internal_members ;;
    group_label: "Gplus"
    group_item_label: "Num 30day Active Internal Members"
  }

  dimension: gplus__num_30day_active_members {
    type: number
    sql: ${TABLE}.gplus.num_30day_active_members ;;
    group_label: "Gplus"
    group_item_label: "Num 30day Active Members"
  }

  dimension: gplus__num_30day_active_users {
    type: number
    sql: ${TABLE}.gplus.num_30day_active_users ;;
    group_label: "Gplus"
    group_item_label: "Num 30day Active Users"
  }

  dimension: gplus__num_30day_new_members {
    type: number
    sql: ${TABLE}.gplus.num_30day_new_members ;;
    group_label: "Gplus"
    group_item_label: "Num 30day New Members"
  }

  dimension: gplus__num_30day_plusones {
    type: number
    sql: ${TABLE}.gplus.num_30day_plusones ;;
    group_label: "Gplus"
    group_item_label: "Num 30day Plusones"
  }

  dimension: gplus__num_30day_replies {
    type: number
    sql: ${TABLE}.gplus.num_30day_replies ;;
    group_label: "Gplus"
    group_item_label: "Num 30day Replies"
  }

  dimension: gplus__num_30day_shares {
    type: number
    sql: ${TABLE}.gplus.num_30day_shares ;;
    group_label: "Gplus"
    group_item_label: "Num 30day Shares"
  }

  dimension: gplus__num_7day_active_cfm_devices {
    type: number
    sql: ${TABLE}.gplus.num_7day_active_cfm_devices ;;
    group_label: "Gplus"
    group_item_label: "Num 7day Active Cfm Devices"
  }

  dimension: gplus__num_7day_active_external_members {
    type: number
    sql: ${TABLE}.gplus.num_7day_active_external_members ;;
    group_label: "Gplus"
    group_item_label: "Num 7day Active External Members"
  }

  dimension: gplus__num_7day_active_internal_members {
    type: number
    sql: ${TABLE}.gplus.num_7day_active_internal_members ;;
    group_label: "Gplus"
    group_item_label: "Num 7day Active Internal Members"
  }

  dimension: gplus__num_7day_active_members {
    type: number
    sql: ${TABLE}.gplus.num_7day_active_members ;;
    group_label: "Gplus"
    group_item_label: "Num 7day Active Members"
  }

  dimension: gplus__num_7day_active_users {
    type: number
    sql: ${TABLE}.gplus.num_7day_active_users ;;
    group_label: "Gplus"
    group_item_label: "Num 7day Active Users"
  }

  dimension: gplus__num_7day_new_members {
    type: number
    sql: ${TABLE}.gplus.num_7day_new_members ;;
    group_label: "Gplus"
    group_item_label: "Num 7day New Members"
  }

  dimension: gplus__num_7day_plusones {
    type: number
    sql: ${TABLE}.gplus.num_7day_plusones ;;
    group_label: "Gplus"
    group_item_label: "Num 7day Plusones"
  }

  dimension: gplus__num_7day_replies {
    type: number
    sql: ${TABLE}.gplus.num_7day_replies ;;
    group_label: "Gplus"
    group_item_label: "Num 7day Replies"
  }

  dimension: gplus__num_7day_shares {
    type: number
    sql: ${TABLE}.gplus.num_7day_shares ;;
    group_label: "Gplus"
    group_item_label: "Num 7day Shares"
  }

  dimension: gplus__num_collections {
    type: number
    sql: ${TABLE}.gplus.num_collections ;;
    group_label: "Gplus"
    group_item_label: "Num Collections"
  }

  dimension: gplus__num_collections_organization_private {
    type: number
    sql: ${TABLE}.gplus.num_collections_organization_private ;;
    group_label: "Gplus"
    group_item_label: "Num Collections Organization Private"
  }

  dimension: gplus__num_collections_organization_wide {
    type: number
    sql: ${TABLE}.gplus.num_collections_organization_wide ;;
    group_label: "Gplus"
    group_item_label: "Num Collections Organization Wide"
  }

  dimension: gplus__num_collections_public {
    type: number
    sql: ${TABLE}.gplus.num_collections_public ;;
    group_label: "Gplus"
    group_item_label: "Num Collections Public"
  }

  dimension: gplus__num_communities {
    type: number
    sql: ${TABLE}.gplus.num_communities ;;
    group_label: "Gplus"
    group_item_label: "Num Communities"
  }

  dimension: gplus__num_communities_organization_private {
    type: number
    sql: ${TABLE}.gplus.num_communities_organization_private ;;
    group_label: "Gplus"
    group_item_label: "Num Communities Organization Private"
  }

  dimension: gplus__num_communities_organization_wide {
    type: number
    sql: ${TABLE}.gplus.num_communities_organization_wide ;;
    group_label: "Gplus"
    group_item_label: "Num Communities Organization Wide"
  }

  dimension: gplus__num_communities_private {
    type: number
    sql: ${TABLE}.gplus.num_communities_private ;;
    group_label: "Gplus"
    group_item_label: "Num Communities Private"
  }

  dimension: gplus__num_communities_public {
    type: number
    sql: ${TABLE}.gplus.num_communities_public ;;
    group_label: "Gplus"
    group_item_label: "Num Communities Public"
  }

  dimension: gplus__num_external_members {
    type: number
    sql: ${TABLE}.gplus.num_external_members ;;
    group_label: "Gplus"
    group_item_label: "Num External Members"
  }

  dimension: gplus__num_internal_members {
    type: number
    sql: ${TABLE}.gplus.num_internal_members ;;
    group_label: "Gplus"
    group_item_label: "Num Internal Members"
  }

  dimension: gplus__num_new_users {
    type: number
    sql: ${TABLE}.gplus.num_new_users ;;
    group_label: "Gplus"
    group_item_label: "Num New Users"
  }

  dimension: gplus__num_plusones {
    type: number
    sql: ${TABLE}.gplus.num_plusones ;;
    group_label: "Gplus"
    group_item_label: "Num Plusones"
  }

  dimension: gplus__num_plusones_received {
    type: number
    sql: ${TABLE}.gplus.num_plusones_received ;;
    group_label: "Gplus"
    group_item_label: "Num Plusones Received"
  }

  dimension: gplus__num_replies {
    type: number
    sql: ${TABLE}.gplus.num_replies ;;
    group_label: "Gplus"
    group_item_label: "Num Replies"
  }

  dimension: gplus__num_replies_received {
    type: number
    sql: ${TABLE}.gplus.num_replies_received ;;
    group_label: "Gplus"
    group_item_label: "Num Replies Received"
  }

  dimension: gplus__num_reshares {
    type: number
    sql: ${TABLE}.gplus.num_reshares ;;
    group_label: "Gplus"
    group_item_label: "Num Reshares"
  }

  dimension: gplus__num_reshares_received {
    type: number
    sql: ${TABLE}.gplus.num_reshares_received ;;
    group_label: "Gplus"
    group_item_label: "Num Reshares Received"
  }

  dimension: gplus__num_shares {
    type: number
    sql: ${TABLE}.gplus.num_shares ;;
    group_label: "Gplus"
    group_item_label: "Num Shares"
  }

  dimension: gplus__num_stream_items_read {
    type: number
    sql: ${TABLE}.gplus.num_stream_items_read ;;
    group_label: "Gplus"
    group_item_label: "Num Stream Items Read"
  }

  dimension: gplus__num_total_members {
    type: number
    sql: ${TABLE}.gplus.num_total_members ;;
    group_label: "Gplus"
    group_item_label: "Num Total Members"
  }

  dimension: gplus__num_video_calls {
    type: number
    sql: ${TABLE}.gplus.num_video_calls ;;
    group_label: "Gplus"
    group_item_label: "Num Video Calls"
  }

  dimension: gplus__num_video_calls_android {
    type: number
    value_format_name: id
    sql: ${TABLE}.gplus.num_video_calls_android ;;
    group_label: "Gplus"
    group_item_label: "Num Video Calls Android"
  }

  dimension: gplus__num_video_calls_cfm {
    type: number
    sql: ${TABLE}.gplus.num_video_calls_cfm ;;
    group_label: "Gplus"
    group_item_label: "Num Video Calls Cfm"
  }

  dimension: gplus__num_video_calls_ios {
    type: number
    sql: ${TABLE}.gplus.num_video_calls_ios ;;
    group_label: "Gplus"
    group_item_label: "Num Video Calls Ios"
  }

  dimension: gplus__num_video_calls_web {
    type: number
    sql: ${TABLE}.gplus.num_video_calls_web ;;
    group_label: "Gplus"
    group_item_label: "Num Video Calls Web"
  }

  dimension: gplus__num_video_conferences {
    type: number
    sql: ${TABLE}.gplus.num_video_conferences ;;
    group_label: "Gplus"
    group_item_label: "Num Video Conferences"
  }

  dimension: gplus__num_video_conferences_android {
    type: number
    value_format_name: id
    sql: ${TABLE}.gplus.num_video_conferences_android ;;
    group_label: "Gplus"
    group_item_label: "Num Video Conferences Android"
  }

  dimension: gplus__num_video_conferences_cfm {
    type: number
    sql: ${TABLE}.gplus.num_video_conferences_cfm ;;
    group_label: "Gplus"
    group_item_label: "Num Video Conferences Cfm"
  }

  dimension: gplus__num_video_conferences_ios {
    type: number
    sql: ${TABLE}.gplus.num_video_conferences_ios ;;
    group_label: "Gplus"
    group_item_label: "Num Video Conferences Ios"
  }

  dimension: gplus__num_video_conferences_mobile {
    type: number
    sql: ${TABLE}.gplus.num_video_conferences_mobile ;;
    group_label: "Gplus"
    group_item_label: "Num Video Conferences Mobile"
  }

  dimension: gplus__num_video_conferences_web {
    type: number
    sql: ${TABLE}.gplus.num_video_conferences_web ;;
    group_label: "Gplus"
    group_item_label: "Num Video Conferences Web"
  }

  dimension: gplus__total_video_call_minutes {
    type: number
    sql: ${TABLE}.gplus.total_video_call_minutes ;;
    group_label: "Gplus"
    group_item_label: "Total Video Call Minutes"
  }

  dimension: gplus__total_video_call_minutes_android {
    type: number
    value_format_name: id
    sql: ${TABLE}.gplus.total_video_call_minutes_android ;;
    group_label: "Gplus"
    group_item_label: "Total Video Call Minutes Android"
  }

  dimension: gplus__total_video_call_minutes_cfm {
    type: number
    sql: ${TABLE}.gplus.total_video_call_minutes_cfm ;;
    group_label: "Gplus"
    group_item_label: "Total Video Call Minutes Cfm"
  }

  dimension: gplus__total_video_call_minutes_ios {
    type: number
    sql: ${TABLE}.gplus.total_video_call_minutes_ios ;;
    group_label: "Gplus"
    group_item_label: "Total Video Call Minutes Ios"
  }

  dimension: gplus__total_video_call_minutes_web {
    type: number
    sql: ${TABLE}.gplus.total_video_call_minutes_web ;;
    group_label: "Gplus"
    group_item_label: "Total Video Call Minutes Web"
  }

  dimension: gplus__visibility {
    type: string
    sql: ${TABLE}.gplus.visibility ;;
    group_label: "Gplus"
    group_item_label: "Visibility"
  }

  # this is an unnested record and used as a view
  dimension: group_id {
    hidden: yes
    sql: ${TABLE}.group_id ;;
  }

  dimension: meet__average_meeting_minutes {
    type: number
    sql: ${TABLE}.meet.average_meeting_minutes ;;
    group_label: "Meet"
    group_item_label: "Average Meeting Minutes"
  }

  dimension: meet__average_meeting_minutes_with_11_to_15_calls {
    type: number
    sql: ${TABLE}.meet.average_meeting_minutes_with_11_to_15_calls ;;
    group_label: "Meet"
    group_item_label: "Average Meeting Minutes with 11 to 15 Calls"
  }

  dimension: meet__average_meeting_minutes_with_16_to_25_calls {
    type: number
    sql: ${TABLE}.meet.average_meeting_minutes_with_16_to_25_calls ;;
    group_label: "Meet"
    group_item_label: "Average Meeting Minutes with 16 to 25 Calls"
  }

  dimension: meet__average_meeting_minutes_with_26_to_50_calls {
    type: number
    sql: ${TABLE}.meet.average_meeting_minutes_with_26_to_50_calls ;;
    group_label: "Meet"
    group_item_label: "Average Meeting Minutes with 26 to 50 Calls"
  }

  dimension: meet__average_meeting_minutes_with_2_calls {
    type: number
    sql: ${TABLE}.meet.average_meeting_minutes_with_2_calls ;;
    group_label: "Meet"
    group_item_label: "Average Meeting Minutes with 2 Calls"
  }

  dimension: meet__average_meeting_minutes_with_3_to_5_calls {
    type: number
    sql: ${TABLE}.meet.average_meeting_minutes_with_3_to_5_calls ;;
    group_label: "Meet"
    group_item_label: "Average Meeting Minutes with 3 to 5 Calls"
  }

  dimension: meet__average_meeting_minutes_with_6_to_10_calls {
    type: number
    sql: ${TABLE}.meet.average_meeting_minutes_with_6_to_10_calls ;;
    group_label: "Meet"
    group_item_label: "Average Meeting Minutes with 6 to 10 Calls"
  }

  dimension: meet__lonely_meetings {
    type: number
    sql: ${TABLE}.meet.lonely_meetings ;;
    group_label: "Meet"
    group_item_label: "Lonely Meetings"
  }

  dimension: meet__max_concurrent_usage_chromebase {
    type: number
    sql: ${TABLE}.meet.max_concurrent_usage_chromebase ;;
    group_label: "Meet"
    group_item_label: "Max Concurrent Usage Chromebase"
  }

  dimension: meet__max_concurrent_usage_chromebox {
    type: number
    sql: ${TABLE}.meet.max_concurrent_usage_chromebox ;;
    group_label: "Meet"
    group_item_label: "Max Concurrent Usage Chromebox"
  }

  dimension: meet__num_1day_active_users {
    type: number
    sql: ${TABLE}.meet.num_1day_active_users ;;
    group_label: "Meet"
    group_item_label: "Num 1day Active Users"
  }

  dimension: meet__num_30day_active_users {
    type: number
    sql: ${TABLE}.meet.num_30day_active_users ;;
    group_label: "Meet"
    group_item_label: "Num 30day Active Users"
  }

  dimension: meet__num_7day_active_users {
    type: number
    sql: ${TABLE}.meet.num_7day_active_users ;;
    group_label: "Meet"
    group_item_label: "Num 7day Active Users"
  }

  dimension: meet__num_calls {
    type: number
    sql: ${TABLE}.meet.num_calls ;;
    group_label: "Meet"
    group_item_label: "Num Calls"
  }

  dimension: meet__num_calls_android {
    type: number
    value_format_name: id
    sql: ${TABLE}.meet.num_calls_android ;;
    group_label: "Meet"
    group_item_label: "Num Calls Android"
  }

  dimension: meet__num_calls_by_external_users {
    type: number
    sql: ${TABLE}.meet.num_calls_by_external_users ;;
    group_label: "Meet"
    group_item_label: "Num Calls By External Users"
  }

  dimension: meet__num_calls_by_internal_users {
    type: number
    sql: ${TABLE}.meet.num_calls_by_internal_users ;;
    group_label: "Meet"
    group_item_label: "Num Calls By Internal Users"
  }

  dimension: meet__num_calls_by_pstn_in_users {
    type: number
    sql: ${TABLE}.meet.num_calls_by_pstn_in_users ;;
    group_label: "Meet"
    group_item_label: "Num Calls By Pstn In Users"
  }

  dimension: meet__num_calls_by_pstn_out_users {
    type: number
    sql: ${TABLE}.meet.num_calls_by_pstn_out_users ;;
    group_label: "Meet"
    group_item_label: "Num Calls By Pstn Out Users"
  }

  dimension: meet__num_calls_chromebase {
    type: number
    sql: ${TABLE}.meet.num_calls_chromebase ;;
    group_label: "Meet"
    group_item_label: "Num Calls Chromebase"
  }

  dimension: meet__num_calls_chromebox {
    type: number
    sql: ${TABLE}.meet.num_calls_chromebox ;;
    group_label: "Meet"
    group_item_label: "Num Calls Chromebox"
  }

  dimension: meet__num_calls_ios {
    type: number
    sql: ${TABLE}.meet.num_calls_ios ;;
    group_label: "Meet"
    group_item_label: "Num Calls Ios"
  }

  dimension: meet__num_calls_jamboard {
    type: number
    sql: ${TABLE}.meet.num_calls_jamboard ;;
    group_label: "Meet"
    group_item_label: "Num Calls Jamboard"
  }

  dimension: meet__num_calls_unknown_client {
    type: number
    sql: ${TABLE}.meet.num_calls_unknown_client ;;
    group_label: "Meet"
    group_item_label: "Num Calls Unknown Client"
  }

  dimension: meet__num_calls_web {
    type: number
    sql: ${TABLE}.meet.num_calls_web ;;
    group_label: "Meet"
    group_item_label: "Num Calls Web"
  }

  dimension: meet__num_meetings {
    type: number
    sql: ${TABLE}.meet.num_meetings ;;
    group_label: "Meet"
    group_item_label: "Num Meetings"
  }

  dimension: meet__num_meetings_android {
    type: number
    value_format_name: id
    sql: ${TABLE}.meet.num_meetings_android ;;
    group_label: "Meet"
    group_item_label: "Num Meetings Android"
  }

  dimension: meet__num_meetings_chromebase {
    type: number
    sql: ${TABLE}.meet.num_meetings_chromebase ;;
    group_label: "Meet"
    group_item_label: "Num Meetings Chromebase"
  }

  dimension: meet__num_meetings_chromebox {
    type: number
    sql: ${TABLE}.meet.num_meetings_chromebox ;;
    group_label: "Meet"
    group_item_label: "Num Meetings Chromebox"
  }

  dimension: meet__num_meetings_ios {
    type: number
    sql: ${TABLE}.meet.num_meetings_ios ;;
    group_label: "Meet"
    group_item_label: "Num Meetings Ios"
  }

  dimension: meet__num_meetings_jamboard {
    type: number
    sql: ${TABLE}.meet.num_meetings_jamboard ;;
    group_label: "Meet"
    group_item_label: "Num Meetings Jamboard"
  }

  dimension: meet__num_meetings_unknown_client {
    type: number
    sql: ${TABLE}.meet.num_meetings_unknown_client ;;
    group_label: "Meet"
    group_item_label: "Num Meetings Unknown Client"
  }

  dimension: meet__num_meetings_web {
    type: number
    sql: ${TABLE}.meet.num_meetings_web ;;
    group_label: "Meet"
    group_item_label: "Num Meetings Web"
  }

  dimension: meet__num_meetings_with_11_to_15_calls {
    type: number
    sql: ${TABLE}.meet.num_meetings_with_11_to_15_calls ;;
    group_label: "Meet"
    group_item_label: "Num Meetings with 11 to 15 Calls"
  }

  dimension: meet__num_meetings_with_16_to_25_calls {
    type: number
    sql: ${TABLE}.meet.num_meetings_with_16_to_25_calls ;;
    group_label: "Meet"
    group_item_label: "Num Meetings with 16 to 25 Calls"
  }

  dimension: meet__num_meetings_with_26_to_50_calls {
    type: number
    sql: ${TABLE}.meet.num_meetings_with_26_to_50_calls ;;
    group_label: "Meet"
    group_item_label: "Num Meetings with 26 to 50 Calls"
  }

  dimension: meet__num_meetings_with_2_calls {
    type: number
    sql: ${TABLE}.meet.num_meetings_with_2_calls ;;
    group_label: "Meet"
    group_item_label: "Num Meetings with 2 Calls"
  }

  dimension: meet__num_meetings_with_3_to_5_calls {
    type: number
    sql: ${TABLE}.meet.num_meetings_with_3_to_5_calls ;;
    group_label: "Meet"
    group_item_label: "Num Meetings with 3 to 5 Calls"
  }

  dimension: meet__num_meetings_with_6_to_10_calls {
    type: number
    sql: ${TABLE}.meet.num_meetings_with_6_to_10_calls ;;
    group_label: "Meet"
    group_item_label: "Num Meetings with 6 to 10 Calls"
  }

  dimension: meet__num_meetings_with_external_users {
    type: number
    sql: ${TABLE}.meet.num_meetings_with_external_users ;;
    group_label: "Meet"
    group_item_label: "Num Meetings with External Users"
  }

  dimension: meet__num_meetings_with_pstn_in_users {
    type: number
    sql: ${TABLE}.meet.num_meetings_with_pstn_in_users ;;
    group_label: "Meet"
    group_item_label: "Num Meetings with Pstn In Users"
  }

  dimension: meet__num_meetings_with_pstn_out_users {
    type: number
    sql: ${TABLE}.meet.num_meetings_with_pstn_out_users ;;
    group_label: "Meet"
    group_item_label: "Num Meetings with Pstn Out Users"
  }

  dimension: meet__total_call_minutes {
    type: number
    sql: ${TABLE}.meet.total_call_minutes ;;
    group_label: "Meet"
    group_item_label: "Total Call Minutes"
  }

  dimension: meet__total_call_minutes_android {
    type: number
    value_format_name: id
    sql: ${TABLE}.meet.total_call_minutes_android ;;
    group_label: "Meet"
    group_item_label: "Total Call Minutes Android"
  }

  dimension: meet__total_call_minutes_by_external_users {
    type: number
    sql: ${TABLE}.meet.total_call_minutes_by_external_users ;;
    group_label: "Meet"
    group_item_label: "Total Call Minutes By External Users"
  }

  dimension: meet__total_call_minutes_by_internal_users {
    type: number
    sql: ${TABLE}.meet.total_call_minutes_by_internal_users ;;
    group_label: "Meet"
    group_item_label: "Total Call Minutes By Internal Users"
  }

  dimension: meet__total_call_minutes_by_pstn_in_users {
    type: number
    sql: ${TABLE}.meet.total_call_minutes_by_pstn_in_users ;;
    group_label: "Meet"
    group_item_label: "Total Call Minutes By Pstn In Users"
  }

  dimension: meet__total_call_minutes_by_pstn_out_users {
    type: number
    sql: ${TABLE}.meet.total_call_minutes_by_pstn_out_users ;;
    group_label: "Meet"
    group_item_label: "Total Call Minutes By Pstn Out Users"
  }

  dimension: meet__total_call_minutes_chromebase {
    type: number
    sql: ${TABLE}.meet.total_call_minutes_chromebase ;;
    group_label: "Meet"
    group_item_label: "Total Call Minutes Chromebase"
  }

  dimension: meet__total_call_minutes_chromebox {
    type: number
    sql: ${TABLE}.meet.total_call_minutes_chromebox ;;
    group_label: "Meet"
    group_item_label: "Total Call Minutes Chromebox"
  }

  dimension: meet__total_call_minutes_ios {
    type: number
    sql: ${TABLE}.meet.total_call_minutes_ios ;;
    group_label: "Meet"
    group_item_label: "Total Call Minutes Ios"
  }

  dimension: meet__total_call_minutes_jamboard {
    type: number
    sql: ${TABLE}.meet.total_call_minutes_jamboard ;;
    group_label: "Meet"
    group_item_label: "Total Call Minutes Jamboard"
  }

  dimension: meet__total_call_minutes_unknown_client {
    type: number
    sql: ${TABLE}.meet.total_call_minutes_unknown_client ;;
    group_label: "Meet"
    group_item_label: "Total Call Minutes Unknown Client"
  }

  dimension: meet__total_call_minutes_web {
    type: number
    sql: ${TABLE}.meet.total_call_minutes_web ;;
    group_label: "Meet"
    group_item_label: "Total Call Minutes Web"
  }

  dimension: meet__total_meeting_minutes {
    type: number
    sql: ${TABLE}.meet.total_meeting_minutes ;;
    group_label: "Meet"
    group_item_label: "Total Meeting Minutes"
  }

  dimension: record_type {
    type: string
    sql: ${TABLE}.record_type ;;
  }

  dimension: sites__num_sites {
    type: number
    sql: ${TABLE}.sites.num_sites ;;
    group_label: "Sites"
    group_item_label: "Num Sites"
  }

  dimension: sites__num_sites_created {
    type: number
    sql: ${TABLE}.sites.num_sites_created ;;
    group_label: "Sites"
    group_item_label: "Num Sites Created"
  }

  dimension: user_email {
    type: string
    sql: ${TABLE}.user_email ;;
  }

  dimension: voice__total_active_users {
    type: number
    sql: ${TABLE}.voice.total_active_users ;;
    group_label: "Voice"
    group_item_label: "Total Active Users"
  }

  dimension: voice__total_call_duration_mins {
    type: number
    sql: ${TABLE}.voice.total_call_duration_mins ;;
    group_label: "Voice"
    group_item_label: "Total Call Duration Mins"
  }

  dimension: voice__total_calls {
    type: number
    sql: ${TABLE}.voice.total_calls ;;
    group_label: "Voice"
    group_item_label: "Total Calls"
  }

  dimension: voice__total_inbound_calls {
    type: number
    sql: ${TABLE}.voice.total_inbound_calls ;;
    group_label: "Voice"
    group_item_label: "Total Inbound Calls"
  }

  dimension: voice__total_inbound_messages {
    type: number
    sql: ${TABLE}.voice.total_inbound_messages ;;
    group_label: "Voice"
    group_item_label: "Total Inbound Messages"
  }

  dimension: voice__total_licensed_users {
    type: number
    sql: ${TABLE}.voice.total_licensed_users ;;
    group_label: "Voice"
    group_item_label: "Total Licensed Users"
  }

  dimension: voice__total_messages {
    type: number
    sql: ${TABLE}.voice.total_messages ;;
    group_label: "Voice"
    group_item_label: "Total Messages"
  }

  dimension: voice__total_outbound_calls {
    type: number
    sql: ${TABLE}.voice.total_outbound_calls ;;
    group_label: "Voice"
    group_item_label: "Total Outbound Calls"
  }

  dimension: voice__total_outbound_messages {
    type: number
    sql: ${TABLE}.voice.total_outbound_messages ;;
    group_label: "Voice"
    group_item_label: "Total Outbound Messages"
  }

  dimension: voice__total_voicemails {
    type: number
    sql: ${TABLE}.voice.total_voicemails ;;
    group_label: "Voice"
    group_item_label: "Total Voicemails"
  }
}

view: usage__group_id {
  fields_hidden_by_default: yes

  dimension: usage__group_id {
    type: string
    sql: usage__group_id ;;
  }
}

view: usage__accounts__authorized_apps {
  fields_hidden_by_default: yes

  dimension: client_id {
    type: string
    sql: ${TABLE}.client_id ;;
  }

  dimension: client_name {
    type: string
    sql: ${TABLE}.client_name ;;
  }

  dimension: num_users {
    type: number
    sql: ${TABLE}.num_users ;;
  }
}

view: usage__cros__device_version_distribution {
  fields_hidden_by_default: yes

  dimension: major_os_version {
    type: string
    sql: ${TABLE}.MajorOsVersion ;;
  }

  dimension: major_os_version_count {
    type: number
    sql: ${TABLE}.MajorOsVersionCount ;;
  }
}
