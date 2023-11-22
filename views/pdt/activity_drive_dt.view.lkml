# this dt is no longer in use
view: activity_drive_dt {
  view_label: "Drive"
  derived_table: {
    sql:
SELECT
    activity.drive.doc_id AS doc_id,
    {% if drive_facts.current_doc_title._in_query %}
      STRING_AGG(activity.drive.doc_title ORDER BY activity.time_usec DESC LIMIT 1) AS current_doc_title,
    {% endif %}
    {% if drive_facts.current_owner_email._in_query %}
      STRING_AGG(activity.drive.owner ORDER BY activity.time_usec DESC LIMIT 1) AS current_owner_email,
    {% endif %}
    {% if drive_facts.current_visibility._in_query %}
      STRING_AGG(activity.drive.visibility ORDER BY activity.time_usec DESC LIMIT 1) AS current_visibility,
    {% endif %}
    {% if drive_facts.is_deleted._in_query %}
      STRING_AGG(activity.event_name ORDER BY activity.time_usec DESC LIMIT 1) AS is_deleted,
    {% endif %}
FROM `@{PROJECT_ID}.@{DATASET_NAME}.activity` AS activity
WHERE activity.record_type = 'drive'
GROUP BY 1
    ;;
  }

  dimension: doc_id {
    hidden: yes
    primary_key: yes
    type: string
    sql: ${TABLE}.doc_id ;;
  }

  dimension: current_doc_title {
    group_label: "Current"
    group_item_label: "Doc Title"
    description: "Document title at time of most current log entry"
    type: string
    sql: ${TABLE}.current_doc_title ;;
  }

  dimension: current_owner_email {
    group_label: "Current"
    group_item_label: "Owner Email"
    description: "Email address of the document's owner at time of most current log entry"
    type: string
    sql: ${TABLE}.current_owner_email ;;
  }

  dimension: current_visibility {
    group_label: "Current"
    group_item_label: "Visibility"
    description: "Visibility of Target File at time of most current log entry. Possible values:
      people_with_link, people_within_domain_with_link, private, public_in_the_domain,
      public_on_the_web, shared_externally, shared_internally, unknown"
    type: string
    sql: ${TABLE}.current_visibility ;;
  }

  dimension: is_deleted {
    group_label: "Current"
    description: "Has the document been deleted?"
    type: yesno
    sql: ${TABLE}.is_deleted = 'delete';;
  }
}
