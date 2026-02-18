view: gemini_activity_base {
  derived_table: {
    datagroup_trigger: daily

    partition_keys: ["activity_date"]
    cluster_keys: ["app_name", "ou_name"]

    sql:
      ------------------------------------------------------------------
      -- STEP 1: CLEAN THE LOOKUP
      ------------------------------------------------------------------
      WITH unique_lookup AS (
        SELECT DISTINCT
          json_ou_path,
          ou_name
        FROM ${ou_user_lookup.SQL_TABLE_NAME}
        WHERE json_ou_path IS NOT NULL
      ),

      ------------------------------------------------------------------
      -- STEP 2: PREPARE ACTIVITY
      ------------------------------------------------------------------
      prep_activity AS (
      SELECT
      DATE(TIMESTAMP_MICROS(act.time_usec)) AS activity_date,
      act.email,
      act.record_type,
      act.gemini_for_workspace.app_name AS gemini_app_name,
      act.drive.doc_type,
      TO_JSON_STRING(act.org_unit_name_path) AS join_key
      FROM `@{WORKSPACE_ANALYTICS_PROJECT_ID}.@{WORKSPACE_ANALYTICS_DATASET_NAME}.activity` AS act
      )

      ------------------------------------------------------------------
      -- STEP 3: LOGIC FIX
      ------------------------------------------------------------------
      SELECT
      a.activity_date,
      a.email,
      l.ou_name,

      CASE
      -- 1. Gemini Logs: Use the explicit app name provided by Gemini
      WHEN a.record_type = 'gemini_for_workspace' AND a.gemini_app_name IS NOT NULL THEN a.gemini_app_name

      -- 2. Standard Drive Logs: Split by doc_type to match Gemini granularity
      WHEN a.record_type = 'drive' AND a.doc_type = 'document' THEN 'docs'
      WHEN a.record_type = 'drive' AND a.doc_type = 'spreadsheet' THEN 'sheets'
      WHEN a.record_type = 'drive' AND a.doc_type = 'presentation' THEN 'slides'

      -- 3. Standard Other Logs: Use record_type (e.g., 'gmail', 'meet', 'chat')
      ELSE a.record_type
      END AS app_name,

      -- UNIVERSE MATCH: Only count Standard logs towards the denominator
      CASE
      WHEN a.record_type != 'gemini_for_workspace' THEN 1
      ELSE 0
      END AS is_universe_match,

      -- GEMINI MATCH: Only count Gemini logs towards the numerator
      CASE
      WHEN a.record_type = 'gemini_for_workspace' THEN 1
      ELSE 0
      END AS is_gemini_match

      FROM prep_activity a
      LEFT JOIN unique_lookup l ON a.join_key = l.json_ou_path
      ;;
  }
}
