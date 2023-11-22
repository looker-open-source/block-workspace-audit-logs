view: activity_drive_facts {
  view_label: "Drive"
  derived_table: {
    sql:
WITH drive_facts AS (
SELECT
  activity.drive.doc_id AS doc_id
  , STRING_AGG(activity.drive.doc_title ORDER BY activity.time_usec DESC LIMIT 1) AS current_doc_title
  , STRING_AGG(activity.drive.owner ORDER BY activity.time_usec DESC LIMIT 1) AS current_owner_email
  , STRING_AGG(activity.drive.visibility ORDER BY activity.time_usec DESC LIMIT 1) AS current_visibility
  , STRING_AGG(activity.drive.doc_type ORDER BY activity.time_usec DESC LIMIT 1) AS doc_type
  , STRING_AGG(activity.event_name ORDER BY activity.time_usec DESC LIMIT 1) = 'delete' AS is_deleted
  , MAX(CASE WHEN activity.event_name = 'create' THEN TIMESTAMP_MICROS(activity.time_usec) ELSE NULL END) AS doc_creation
  , COUNT(DISTINCT CASE WHEN activity.event_name = 'view' THEN email ELSE NULL END) AS count_distinct_user_view
  , COUNT(DISTINCT CASE WHEN activity.event_name = 'edit' THEN email ELSE NULL END) AS count_distinct_user_edit
  , COUNT(CASE WHEN activity.event_name = 'copy' THEN 1 ELSE NULL END) AS count_doc_copy
  , COUNT(CASE WHEN activity.event_name = 'download' THEN 1 ELSE NULL END) AS count_doc_download
  , COUNT(*) AS count_doc_activity
FROM `@{PROJECT_ID}.@{DATASET_NAME}.activity` AS activity
WHERE activity.record_type = 'drive'
GROUP BY 1
)
SELECT
drive_facts.*
, ou_user_lookup.json_ou_path
, ou_user_lookup.ou_name
FROM drive_facts
JOIN ${ou_user_lookup.SQL_TABLE_NAME} AS ou_user_lookup ON drive_facts.current_owner_email = ou_user_lookup.email
;;
    partition_keys: ["doc_creation"]
    datagroup_trigger: daily
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
    link: {
      label: "View in Google Drive"
      url: "https://drive.google.com/file/d/{{ activity.drive__doc_id._value }}"
      icon_url: "https://www.google.com/s2/favicons?domain=drive.google.com"
    }
  }

  dimension: current_owner_email {
    group_label: "Current"
    group_item_label: "Owner Email"
    description: "Email address of the document's owner at time of most current log entry"
    type: string
    sql: ${TABLE}.current_owner_email ;;
  }

  dimension: current_owner_json_ou_path {
    group_label: "Current"
    label: "Owner OU JSON Path"
    description: "JSON Path for Organizational Unit of the document's owner at time of most current log entry"
    type: string
    sql: ${TABLE}.json_ou_path ;;
  }

  dimension: current_owner_ou_name {
    hidden: no
    group_label: "Current"
    label: "Owner OU Name"
    description: "Organizational Unit name of the document's owner at time of most current log entry"
    type:  string
    sql: ${TABLE}.ou_name ;;
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

  dimension: doc_type {
    hidden: yes
    type: string
    sql: ${TABLE}.doc_type ;;
  }

  dimension: is_deleted {
    group_label: "Current"
    description: "Has the document been deleted?"
    type: yesno
    sql: ${TABLE}.is_deleted ;;
  }


  dimension_group: creation {
    description: "The date the document was created. Will be NULL if data is not in BigQuery"
    type: time
    timeframes: [
      raw,
      time,
      hour,
      date,
      day_of_week,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    sql: ${TABLE}.doc_creation ;;
  }

  measure: count_distinct_user_view {
    hidden:yes
    type: max
    sql: ${TABLE}.count_distinct_user_view ;;
  }

  measure: count_distinct_user_edit {
    hidden:yes
    type: max
    sql: ${TABLE}.count_distinct_user_edit ;;
  }

  measure: count_doc_copy {
    hidden:yes
    type: max
    sql: ${TABLE}.count_doc_copy ;;
  }

  measure: count_doc_download {
    hidden:yes
    type: max
    sql: ${TABLE}.count_doc_download ;;
  }

  measure: count_doc_activity {
    hidden:yes
    type: max
    sql: ${TABLE}.count_doc_activity ;;
  }

}
