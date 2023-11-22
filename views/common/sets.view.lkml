view: sets {
  extension: required

  set: activity_default {
    fields: [
      activity.activity_time,
      activity.ip_address,
      activity.email,
      activity.active_user_org_unit_name,
      activity.event_type,
      activity.event_name
    ]
  }

  set: activity_drive {
    fields: [
      activity.activity_default*,
      activity.drive__doc_id,
      activity.drive__doc_title,
      activity.drive__doc_type,
      activity_drive_facts.current_owner_email,
      activity_drive_facts.current_owner_ou_name,
      activity.drive__target_user,
      activity.target_user_org_unit_name,
    ]
  }

  set: activity_drive_file_shares {
    fields: [
      activity.drive__doc_id,
      activity_drive_facts.current_doc_title,
      activity.drive__doc_type,
      activity_drive_facts.current_visibility,
      activity.list_of_target_users
    ]
  }

  set: activity_drive_user_shares {
    fields: [
      activity.drive__target_user,
      activity.is_target_user_internal,
      activity.count_of_docs
    ]
  }

  set: activity_gmail {
    fields: [
      activity.activity_default*,
      activity.gmail__message_info__rfc2822_message_id,
      activity.gmail__message_info__subject,
      activity.gmail__message_info__source__from_header_address,
      activity__gmail__message_info__destination.address,
      activity.gmail__message_info__connection_info__client_host_zone,
      activity.gmail__message_info__connection_info__is_internal,
      activity.gmail__message_info__connection_info__is_intra_domain,
      activity.gmail__message_info__is_spam
    ]
  }

  set: activity_login {
    fields: [
      activity.activity_default*,
      activity.login__login_type,
      activity__login__login_challenge_method.activity__login__login_challenge_method,
      activity.login__login_challenge_status
    ]
  }

  set: activity_meet {
    fields: [
      activity.meet__conference_id,
      activity_meet_facts.livestream_view_page_id,
      activity_meet_facts.start_time,
      activity_meet_facts.end_time,
      activity_meet_facts__participant_details.start_time,
      activity_meet_facts__participant_details.end_time,
      activity_meet_facts__participant_details.endpoint_id,
      activity_meet_facts__participant_details.identifier_type,
      activity_meet_facts__participant_details.identifier,
      activity_meet_facts__participant_details.display_name,
      activity_meet_facts__participant_details.device_type,
      activity_meet_facts__participant_details.is_external,
      activity_meet_facts__participant_details.ip_address,
      activity_meet_facts__participant_details.location_country,
      activity_meet_facts__participant_details.location_region,
      activity_meet_facts__participant_details.screencast_send_seconds,
      activity_meet_facts__participant_details.video_send_seconds,
      activity_meet_facts__participant_details.duration_seconds
    ]
  }
}
