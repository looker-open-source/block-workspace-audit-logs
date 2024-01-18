- dashboard: adoption_and_collaboration
  title: Workspace Logs - Adoption and Collaboration
  layout: newspaper
  preferred_viewer: dashboards-next
  description: Adoption and collaboration metrics across Workspace products
  elements:
  - title: Product Activity Snapshot
    name: Product Activity Snapshot
    model: workspace_audit_logs
    explore: activity_consolidated
    type: looker_column
    fields: [activity.activity_date, activity_active_user_facts.all_active_n_day,
      activity_active_user_facts.calendar_active_n_day, activity_active_user_facts.chat_active_n_day,
      activity_active_user_facts.presentation_active_n_day, activity_active_user_facts.drive_active_n_day,
      activity_active_user_facts.document_active_n_day, activity_active_user_facts.sheet_active_n_day,
      activity_active_user_facts.meet_active_n_day, activity_active_user_facts.gmail_active_n_day]
    fill_fields: [activity.activity_date]
    filters: {}
    sorts: [activity.activity_date desc]
    limit: 1
    column_limit: 50
    query_timezone: user_timezone
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: circle
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: Active Users, orientation: left, series: [{axisId: activity_active_user_facts.all_active_n_day,
            id: activity_active_user_facts.all_active_n_day, name: Total Active Users},
          {axisId: activity_active_user_facts.calendar_active_n_day, id: activity_active_user_facts.calendar_active_n_day,
            name: "\n               Calendar [30 Days]\n            \n            "},
          {axisId: activity_active_user_facts.chat_active_n_day, id: activity_active_user_facts.chat_active_n_day,
            name: "\n               Chat [30 Days]\n            \n            "},
          {axisId: activity_active_user_facts.presentation_active_n_day, id: activity_active_user_facts.presentation_active_n_day,
            name: "\n               Slides [30 Days]\n            \n            "},
          {axisId: activity_active_user_facts.drive_active_n_day, id: activity_active_user_facts.drive_active_n_day,
            name: "\n               Drive [30 Days]\n            \n            "},
          {axisId: activity_active_user_facts.document_active_n_day, id: activity_active_user_facts.document_active_n_day,
            name: "\n                Docs [30 Days]\n            \n            "},
          {axisId: activity_active_user_facts.sheet_active_n_day, id: activity_active_user_facts.sheet_active_n_day,
            name: "\n                Sheets [30 Days]\n            \n            "},
          {axisId: activity_active_user_facts.meet_active_n_day, id: activity_active_user_facts.meet_active_n_day,
            name: "\n                Meet [30 Days]\n            \n            "},
          {axisId: activity_active_user_facts.gmail_active_n_day, id: activity_active_user_facts.gmail_active_n_day,
            name: "\n                Gmail [30 Days]\n            \n            "}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    series_types:
      activity_active_user_facts.all_active_n_day: line
    series_colors:
      activity_active_user_facts.all_active_n_day: "#4285F4"
      activity_active_user_facts.document_active_n_day: "#4285F4"
      activity_active_user_facts.sheet_active_n_day: "#34A853"
      activity_active_user_facts.chat_active_n_day: "#34A853"
      activity_active_user_facts.presentation_active_n_day: "#FBBC04"
      activity_active_user_facts.gmail_active_n_day: "#EA4335"
      activity_active_user_facts.meet_active_n_day: "#FBBC04"
      activity_active_user_facts.calendar_active_n_day: "#4285F4"
      activity_active_user_facts.drive_active_n_day: "#EA4335"
    series_labels:
      activity_active_user_facts.all_active_n_day: Total Active Users
    reference_lines: [{reference_type: line, line_value: max, range_start: max, range_end: min,
        margin_top: deviation, margin_value: mean, margin_bottom: deviation, label_position: center,
        color: "#4285F4", label: Total Active Users, value_format: ''}]
    trend_lines: []
    column_spacing_ratio: 0.1
    advanced_vis_config: |-
      {
        xAxis: {
          labels: {
            style: {
              fontSize: '20px'
            }
          }
        },
        chart: {},
        series: [{
          "name": "Total Active Users"
        }, {
          "name": "\n               Calendar [30 Days]\n            \n            "
        }, {
          "name": "\n               Chat [30 Days]\n            \n            "
        }, {
          "name": "\n               Slides [30 Days]\n            \n            "
        }, {
          "name": "\n               Drive [30 Days]\n            \n            "
        }, {
          "name": "\n                Docs [30 Days]\n            \n            "
        }, {
          "name": "\n                Sheets [30 Days]\n            \n            "
        }, {
          "name": "\n                Meet [30 Days]\n            \n            "
        }, {
          "name": "\n                Gmail [30 Days]\n            \n            "
        }]
      }
    show_null_points: true
    interpolation: linear
    hidden_pivots: {}
    defaults_version: 1
    listen:
      Active User Definition: activity_active_user_facts.timeframe
      Activity Date: activity.activity_date
      Organizational Unit: activity.json_ou_path
    row: 2
    col: 0
    width: 24
    height: 8
  - title: "# Sharers"
    name: "# Sharers"
    model: workspace_audit_logs
    explore: drive
    type: looker_column
    fields: [activity.activity_date, activity.drive__doc_type, activity.count_user]
    pivots: [activity.drive__doc_type]
    fill_fields: [activity.activity_date]
    filters:
      activity.record_type: drive
      activity.drive__doc_type: doc,slide,sheet
      activity.event_type: '"acl_change"'
      activity.is_target_user_internal: 'Yes'
    sorts: [activity.drive__doc_type, activity.activity_date desc]
    limit: 500
    column_limit: 50
    query_timezone: user_timezone
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    x_axis_zoom: true
    y_axis_zoom: true
    hidden_series: []
    series_colors:
      folder - activity.count_user: "#FBBC04"
      sheet - activity.count_user: "#34A853"
    show_null_points: true
    interpolation: linear
    hidden_pivots: {}
    defaults_version: 1
    note_state: collapsed
    note_display: hover
    note_text: Only including internal sharing
    listen:
      Activity Date: activity.activity_date
      Organizational Unit: activity.json_ou_path
    row: 51
    col: 12
    width: 12
    height: 7
  - title: "# Collaboration Events"
    name: "# Collaboration Events"
    model: workspace_audit_logs
    explore: drive
    type: looker_column
    fields: [activity.activity_date, activity.drive__doc_type, activity.count_collaboration]
    pivots: [activity.drive__doc_type]
    fill_fields: [activity.activity_date]
    filters:
      activity.record_type: drive
      activity.drive__doc_type: doc,slide,sheet
    sorts: [activity.drive__doc_type, activity.activity_date desc]
    limit: 500
    column_limit: 50
    filter_expression: "${activity.email} != ${activity_drive_facts.current_owner_email}"
    query_timezone: user_timezone
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    x_axis_zoom: true
    y_axis_zoom: true
    hidden_series: []
    series_colors:
      sheet - activity.count_collaboration: "#34A853"
    show_null_points: true
    interpolation: linear
    hidden_pivots: {}
    defaults_version: 1
    note_state: collapsed
    note_display: hover
    note_text: |-
      Internal Collaboration Only.

      Actions included: edit, approval_requested, approval_completed, approval_canceled, approval_comment_added, approval_reviewer_responded, approval_decisions_reset, approval_reviewer_change, approval_due_time_change, create_comment, delete_comment, edit_comment, reassign_comment, reopen_comment, resolve_comment, accept_suggestion, create_suggestion, delete_suggestion, reject_suggestion
    listen:
      Activity Date: activity.activity_date
      Organizational Unit: activity.json_ou_path
    row: 58
    col: 0
    width: 12
    height: 7
  - title: "# Creators"
    name: "# Creators"
    model: workspace_audit_logs
    explore: drive
    type: looker_column
    fields: [activity.activity_date, activity.drive__doc_type, activity.count_user]
    pivots: [activity.drive__doc_type]
    fill_fields: [activity.activity_date]
    filters:
      activity.record_type: drive
      activity.drive__doc_type: doc,slide,sheet
      activity.event_type: access
      activity.event_name: create
    sorts: [activity.drive__doc_type, activity.activity_date desc]
    limit: 500
    column_limit: 50
    query_timezone: user_timezone
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    x_axis_zoom: true
    y_axis_zoom: true
    hidden_series: []
    series_colors:
      sheet - activity.count_user: "#34A853"
    show_null_points: true
    interpolation: linear
    hidden_pivots: {}
    defaults_version: 1
    listen:
      Activity Date: activity.activity_date
      Organizational Unit: activity.json_ou_path
    row: 51
    col: 0
    width: 12
    height: 7
  - title: Meeting Activity
    name: Meeting Activity
    model: workspace_audit_logs
    explore: meet
    type: looker_column
    fields: [activity.activity_date, activity_meet_facts.count_of_no_show_meetings,
      activity_meet_facts.count_of_1_to_1_meetings, activity_meet_facts.count_of_greater_than_2_meetings,
      activity_meet_facts.count_of_greater_than_10_meetings, activity_meet_facts.count_of_livestreams]
    fill_fields: [activity.activity_date]
    filters:
      activity.record_type: meet
    sorts: [activity.activity_date desc]
    limit: 500
    column_limit: 50
    query_timezone: user_timezone
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: Count of Meetings, orientation: left, series: [{axisId: activity_meet_facts.count_of_no_show_meetings,
            id: activity_meet_facts.count_of_no_show_meetings, name: "    Count of\
              \ No Show Meetings"}, {axisId: activity_meet_facts.count_of_1_to_1_meetings,
            id: activity_meet_facts.count_of_1_to_1_meetings, name: "   Count of 1-1p\
              \ Meetings"}, {axisId: activity_meet_facts.count_of_greater_than_2_meetings,
            id: activity_meet_facts.count_of_greater_than_2_meetings, name: "  Count\
              \ of >2p Meetings"}, {axisId: activity_meet_facts.count_of_livestreams,
            id: activity_meet_facts.count_of_livestreams, name: Count of Livestreams}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}, {label: !!null '', orientation: right,
        series: [{axisId: activity_meet_facts.meeting_length_minutes, id: activity_meet_facts.meeting_length_minutes,
            name: Total Meeting Length (minutes)}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    hidden_series: []
    series_labels:
      activity_meet_facts.count_of_no_show_meetings: No Show Meetings
      activity_meet_facts.count_of_1_to_1_meetings: 1-1p Meetings
      activity_meet_facts.count_of_greater_than_2_meetings: ">2p Meetings"
      activity_meet_facts.count_of_livestreams: Livestreams
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Activity Date: activity.activity_date
      Organizational Unit: activity.json_ou_path
    row: 74
    col: 12
    width: 12
    height: 7
  - title: Collaboration Across Organizational Units
    name: Collaboration Across Organizational Units
    model: workspace_audit_logs
    explore: drive
    type: marketplace_viz_sankey::sankey-marketplace
    fields: [activity_drive_facts.current_owner_json_ou_path, activity_drive_facts.current_owner_ou_name,
      activity.json_ou_path, activity.active_user_org_unit_name, activity.count_collaboration]
    filters:
      activity.record_type: drive
      activity.event_type: access
      activity.drive__doc_type: doc,folder,slide,sheet
      activity_drive_facts.current_owner_json_ou_path: "-NULL"
      activity.active_user_org_unit_name: "-NULL"
    sorts: [activity.count_collaboration desc 0]
    limit: 50
    column_limit: 50
    filter_expression: "${activity.email} != ${activity_drive_facts.current_owner_email}"
    query_timezone: user_timezone
    hidden_fields: [activity_drive_facts.current_owner_json_ou_path, activity.json_ou_path]
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 0
    hidden_pivots: {}
    listen:
      Activity Date: activity.activity_date
      Organizational Unit: activity.json_ou_path
    row: 27
    col: 12
    width: 12
    height: 12
  - title: Collaboration Across Organizational Units
    name: Collaboration Across Organizational Units (2)
    model: workspace_audit_logs
    explore: drive
    type: marketplace_viz_chord::chord-marketplace
    fields: [activity_drive_facts.current_owner_json_ou_path, activity_drive_facts.current_owner_ou_name,
      activity.json_ou_path, activity.active_user_org_unit_name, activity.count_collaboration]
    filters:
      activity.record_type: drive
      activity.event_type: access
      activity.drive__doc_type: doc,folder,slide,sheet
      activity_drive_facts.current_owner_json_ou_path: "-NULL"
      activity.active_user_org_unit_name: "-NULL"
    sorts: [activity.count_collaboration desc 0]
    limit: 50
    column_limit: 50
    filter_expression: "${activity.email} != ${activity_drive_facts.current_owner_email}"
    query_timezone: user_timezone
    hidden_fields: [activity_drive_facts.current_owner_json_ou_path, activity.json_ou_path]
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 0
    hidden_pivots: {}
    listen:
      Activity Date: activity.activity_date
      Organizational Unit: activity.json_ou_path
    row: 27
    col: 0
    width: 12
    height: 12
  - name: " (Copy)"
    type: text
    title_text: " (Copy)"
    subtitle_text: ''
    body_text: '[{"type":"h1","children":[{"text":"Collaboration","bold":true}],"align":"center"}]'
    rich_content_json: '{"format":"slate"}'
    row: 18
    col: 0
    width: 24
    height: 2
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: '[{"type":"h1","children":[{"text":"Adoption","bold":true}],"align":"center"}]'
    rich_content_json: '{"format":"slate"}'
    row: 0
    col: 0
    width: 24
    height: 2
  - title: Product Activity Over Time
    name: Product Activity Over Time
    model: workspace_audit_logs
    explore: activity_consolidated
    type: looker_line
    fields: [activity.activity_date, activity_active_user_facts.calendar_active_n_day,
      activity_active_user_facts.chat_active_n_day, activity_active_user_facts.presentation_active_n_day,
      activity_active_user_facts.drive_active_n_day, activity_active_user_facts.document_active_n_day,
      activity_active_user_facts.sheet_active_n_day, activity_active_user_facts.meet_active_n_day,
      activity_active_user_facts.gmail_active_n_day]
    fill_fields: [activity.activity_date]
    filters: {}
    sorts: [activity.activity_date desc]
    limit: 500
    column_limit: 50
    query_timezone: user_timezone
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    y_axes: [{label: Active Users, orientation: left, series: [{axisId: activity_active_user_facts.all_active_n_day,
            id: activity_active_user_facts.all_active_n_day, name: Total Active Users},
          {axisId: activity_active_user_facts.calendar_active_n_day, id: activity_active_user_facts.calendar_active_n_day,
            name: "\n               Calendar [30 Days]\n            \n            "},
          {axisId: activity_active_user_facts.chat_active_n_day, id: activity_active_user_facts.chat_active_n_day,
            name: "\n               Chat [30 Days]\n            \n            "},
          {axisId: activity_active_user_facts.presentation_active_n_day, id: activity_active_user_facts.presentation_active_n_day,
            name: "\n               Slides [30 Days]\n            \n            "},
          {axisId: activity_active_user_facts.drive_active_n_day, id: activity_active_user_facts.drive_active_n_day,
            name: "\n               Drive [30 Days]\n            \n            "},
          {axisId: activity_active_user_facts.document_active_n_day, id: activity_active_user_facts.document_active_n_day,
            name: "\n                Docs [30 Days]\n            \n            "},
          {axisId: activity_active_user_facts.sheet_active_n_day, id: activity_active_user_facts.sheet_active_n_day,
            name: "\n                Sheets [30 Days]\n            \n            "},
          {axisId: activity_active_user_facts.meet_active_n_day, id: activity_active_user_facts.meet_active_n_day,
            name: "\n                Meet [30 Days]\n            \n            "},
          {axisId: activity_active_user_facts.gmail_active_n_day, id: activity_active_user_facts.gmail_active_n_day,
            name: "\n                Gmail [30 Days]\n            \n            "}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors:
      activity_active_user_facts.all_active_n_day: "#4285F4"
      activity_active_user_facts.document_active_n_day: "#4285F4"
      activity_active_user_facts.sheet_active_n_day: "#34A853"
      activity_active_user_facts.chat_active_n_day: "#34A853"
      activity_active_user_facts.presentation_active_n_day: "#FBBC04"
      activity_active_user_facts.gmail_active_n_day: "#EA4335"
      activity_active_user_facts.meet_active_n_day: "#FBBC04"
      activity_active_user_facts.calendar_active_n_day: "#4285F4"
      activity_active_user_facts.drive_active_n_day: "#EA4335"
    series_labels:
      activity_active_user_facts.all_active_n_day: Total Active Users
    reference_lines: []
    trend_lines: []
    ordering: none
    show_null_labels: false
    column_spacing_ratio: 0.1
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_pivots: {}
    defaults_version: 1
    listen:
      Active User Definition: activity_active_user_facts.timeframe
      Activity Date: activity.activity_date
      Organizational Unit: activity.json_ou_path
    row: 10
    col: 0
    width: 24
    height: 8
  - title: Slides Created
    name: Slides Created
    model: workspace_audit_logs
    explore: drive
    type: single_value
    fields: [activity.drive__doc_type, activity.count_of_docs]
    pivots: [activity.drive__doc_type]
    filters:
      activity.record_type: drive
      activity.drive__doc_type: doc,slide,sheet
      activity.event_type: access
      activity.event_name: create
    sorts: [activity.drive__doc_type]
    limit: 500
    column_limit: 50
    query_timezone: user_timezone
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Slides Created
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    x_axis_zoom: true
    y_axis_zoom: true
    hidden_series: []
    show_null_points: true
    interpolation: linear
    hidden_pivots:
      sheet:
        is_entire_pivot_hidden: true
      doc:
        is_entire_pivot_hidden: true
    defaults_version: 1
    listen:
      Activity Date: activity.activity_date
      Organizational Unit: activity.json_ou_path
    row: 41
    col: 8
    width: 4
    height: 3
  - title: Sheets Created
    name: Sheets Created
    model: workspace_audit_logs
    explore: drive
    type: single_value
    fields: [activity.drive__doc_type, activity.count_of_docs]
    pivots: [activity.drive__doc_type]
    filters:
      activity.record_type: drive
      activity.drive__doc_type: doc,slide,sheet
      activity.event_type: access
      activity.event_name: create
    sorts: [activity.drive__doc_type]
    limit: 500
    column_limit: 50
    query_timezone: user_timezone
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Sheets Created
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    x_axis_zoom: true
    y_axis_zoom: true
    hidden_series: []
    show_null_points: true
    interpolation: linear
    hidden_pivots:
      sheet:
        is_entire_pivot_hidden: false
      doc:
        is_entire_pivot_hidden: true
      slide:
        is_entire_pivot_hidden: true
    defaults_version: 1
    listen:
      Activity Date: activity.activity_date
      Organizational Unit: activity.json_ou_path
    row: 41
    col: 4
    width: 4
    height: 3
  - title: Docs Created
    name: Docs Created
    model: workspace_audit_logs
    explore: drive
    type: single_value
    fields: [activity.drive__doc_type, activity.count_of_docs]
    pivots: [activity.drive__doc_type]
    filters:
      activity.record_type: drive
      activity.drive__doc_type: doc,slide,sheet
      activity.event_type: access
      activity.event_name: create
    sorts: [activity.drive__doc_type]
    limit: 500
    column_limit: 50
    query_timezone: user_timezone
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Docs Created
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    x_axis_zoom: true
    y_axis_zoom: true
    hidden_series: []
    show_null_points: true
    interpolation: linear
    hidden_pivots:
      sheet:
        is_entire_pivot_hidden: true
      doc:
        is_entire_pivot_hidden: false
      slide:
        is_entire_pivot_hidden: true
    defaults_version: 1
    listen:
      Activity Date: activity.activity_date
      Organizational Unit: activity.json_ou_path
    row: 41
    col: 0
    width: 4
    height: 3
  - title: Docs Shared
    name: Docs Shared
    model: workspace_audit_logs
    explore: drive
    type: single_value
    fields: [activity.drive__doc_type, activity.count_of_docs]
    pivots: [activity.drive__doc_type]
    filters:
      activity.record_type: drive
      activity.drive__doc_type: doc,slide,sheet
      activity.event_type: '"acl_change"'
      activity.is_target_user_internal: 'Yes'
    sorts: [activity.drive__doc_type]
    limit: 500
    column_limit: 50
    query_timezone: user_timezone
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Docs Shared
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    x_axis_zoom: true
    y_axis_zoom: true
    hidden_series: []
    show_null_points: true
    interpolation: linear
    hidden_pivots:
      sheet:
        is_entire_pivot_hidden: true
      doc:
        is_entire_pivot_hidden: false
      slide:
        is_entire_pivot_hidden: true
    defaults_version: 1
    listen:
      Activity Date: activity.activity_date
      Organizational Unit: activity.json_ou_path
    row: 41
    col: 12
    width: 4
    height: 3
  - title: Sheets Shared
    name: Sheets Shared
    model: workspace_audit_logs
    explore: drive
    type: single_value
    fields: [activity.drive__doc_type, activity.count_of_docs]
    pivots: [activity.drive__doc_type]
    filters:
      activity.record_type: drive
      activity.drive__doc_type: doc,slide,sheet
      activity.event_type: '"acl_change"'
      activity.is_target_user_internal: 'Yes'
    sorts: [activity.drive__doc_type]
    limit: 500
    column_limit: 50
    query_timezone: user_timezone
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Sheets Shared
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    x_axis_zoom: true
    y_axis_zoom: true
    hidden_series: []
    show_null_points: true
    interpolation: linear
    hidden_pivots:
      sheet:
        is_entire_pivot_hidden: false
      doc:
        is_entire_pivot_hidden: true
      slide:
        is_entire_pivot_hidden: true
    defaults_version: 1
    listen:
      Activity Date: activity.activity_date
      Organizational Unit: activity.json_ou_path
    row: 41
    col: 16
    width: 4
    height: 3
  - title: Slides Shared
    name: Slides Shared
    model: workspace_audit_logs
    explore: drive
    type: single_value
    fields: [activity.drive__doc_type, activity.count_of_docs]
    pivots: [activity.drive__doc_type]
    filters:
      activity.record_type: drive
      activity.drive__doc_type: doc,slide,sheet
      activity.event_type: '"acl_change"'
      activity.is_target_user_internal: 'Yes'
    sorts: [activity.drive__doc_type]
    limit: 500
    column_limit: 50
    query_timezone: user_timezone
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Slides Shared
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    x_axis_zoom: true
    y_axis_zoom: true
    hidden_series: []
    show_null_points: true
    interpolation: linear
    hidden_pivots:
      sheet:
        is_entire_pivot_hidden: true
      doc:
        is_entire_pivot_hidden: true
      slide:
        is_entire_pivot_hidden: false
    defaults_version: 1
    listen:
      Activity Date: activity.activity_date
      Organizational Unit: activity.json_ou_path
    row: 41
    col: 20
    width: 4
    height: 3
  - name: " (Copy 2)"
    type: text
    title_text: " (Copy 2)"
    subtitle_text: ''
    body_text: '[{"type":"h1","children":[{"text":"Total Files Shared (Internal)","bold":true}],"align":"center","id":1697723315150}]'
    rich_content_json: '{"format":"slate"}'
    row: 39
    col: 12
    width: 12
    height: 2
  - name: " (2)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: '[{"type":"h1","children":[{"text":"Total Files Created","bold":true}],"align":"center","id":1697723315150}]'
    rich_content_json: '{"format":"slate"}'
    row: 39
    col: 0
    width: 12
    height: 2
  - title: Files Created Over Time
    name: Files Created Over Time
    model: workspace_audit_logs
    explore: drive
    type: looker_column
    fields: [activity.drive__doc_type, activity.count_of_docs, activity.activity_date]
    pivots: [activity.drive__doc_type]
    fill_fields: [activity.activity_date]
    filters:
      activity.record_type: drive
      activity.drive__doc_type: doc,slide,sheet
      activity.event_type: access
      activity.event_name: create
    sorts: [activity.drive__doc_type, activity.activity_date desc]
    limit: 500
    column_limit: 50
    query_timezone: user_timezone
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    x_axis_zoom: true
    y_axis_zoom: true
    hidden_series: []
    series_colors:
      sheet - activity.count_of_docs: "#34A853"
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Docs Created
    show_null_points: true
    interpolation: linear
    hidden_pivots:
      sheet:
        is_entire_pivot_hidden: false
      doc:
        is_entire_pivot_hidden: false
      slide:
        is_entire_pivot_hidden: false
    defaults_version: 1
    listen:
      Activity Date: activity.activity_date
      Organizational Unit: activity.json_ou_path
    row: 44
    col: 0
    width: 12
    height: 7
  - title: Files Shared Over Time
    name: Files Shared Over Time
    model: workspace_audit_logs
    explore: drive
    type: looker_column
    fields: [activity.drive__doc_type, activity.count_of_docs, activity.activity_date]
    pivots: [activity.drive__doc_type]
    fill_fields: [activity.activity_date]
    filters:
      activity.record_type: drive
      activity.drive__doc_type: doc,slide,sheet
      activity.event_type: '"acl_change"'
      activity.is_target_user_internal: 'Yes'
    sorts: [activity.drive__doc_type, activity.activity_date desc]
    limit: 500
    column_limit: 50
    query_timezone: user_timezone
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    x_axis_zoom: true
    y_axis_zoom: true
    hidden_series: []
    series_colors:
      sheet - activity.count_of_docs: "#34A853"
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Docs Created
    show_null_points: true
    interpolation: linear
    hidden_pivots:
      sheet:
        is_entire_pivot_hidden: false
      doc:
        is_entire_pivot_hidden: false
      slide:
        is_entire_pivot_hidden: false
    defaults_version: 1
    note_state: collapsed
    note_display: hover
    note_text: Only including internal sharing
    listen:
      Activity Date: activity.activity_date
      Organizational Unit: activity.json_ou_path
    row: 44
    col: 12
    width: 12
    height: 7
  - title: Internal File Sharing
    name: Internal File Sharing
    model: workspace_audit_logs
    explore: drive
    type: looker_line
    fields: [activity.count_of_docs, activity.activity_date, activity.count_user]
    fill_fields: [activity.activity_date]
    filters:
      activity.record_type: drive
      activity.event_type: '"acl_change"'
      activity.is_target_user_internal: 'Yes'
      activity.drive__doc_type: doc,slide,sheet,folder
    sorts: [activity.activity_date desc]
    limit: 500
    column_limit: 50
    query_timezone: user_timezone
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    y_axes: [{label: '', orientation: left, series: [{axisId: activity.count_of_docs,
            id: activity.count_of_docs, name: Count of Docs}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear},
      {label: !!null '', orientation: right, series: [{axisId: activity.count_user,
            id: activity.count_user, name: Count of Users}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    hidden_series: []
    series_colors:
      sheet - activity.count_of_docs: "#34A853"
      activity.count_user: "#FBBC04"
    series_labels:
      activity.count_of_docs: Docs
      activity.count_user: Users
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Docs Created
    hidden_pivots: {}
    defaults_version: 1
    listen:
      Activity Date: activity.activity_date
      Organizational Unit: activity.json_ou_path
    row: 20
    col: 0
    width: 12
    height: 7
  - title: Internal File Sharing
    name: Internal File Sharing (2)
    model: workspace_audit_logs
    explore: drive
    type: looker_pie
    fields: [activity.count_of_docs, activity.drive__doc_type]
    filters:
      activity.record_type: drive
      activity.event_type: '"acl_change"'
      activity.is_target_user_internal: 'Yes'
      activity.drive__doc_type: doc,slide,sheet,folder
    sorts: [activity.count_of_docs desc 0]
    limit: 500
    column_limit: 50
    query_timezone: user_timezone
    value_labels: legend
    label_type: labPer
    series_colors:
      sheet - activity.count_of_docs: "#34A853"
      activity.count_user: "#FBBC04"
      doc: "#4285F4"
      sheet: "#34A853"
      slide: "#FBBC04"
      folder: "#EA4335"
    series_labels:
      activity.count_of_docs: Docs
      activity.count_user: Users
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: activity.count_of_docs,
            id: activity.count_of_docs, name: Count of Docs}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear},
      {label: !!null '', orientation: right, series: [{axisId: activity.count_user,
            id: activity.count_user, name: Count of Users}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    x_axis_zoom: true
    y_axis_zoom: true
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    hidden_series: []
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Docs Created
    hidden_pivots: {}
    defaults_version: 1
    listen:
      Activity Date: activity.activity_date
      Organizational Unit: activity.json_ou_path
    row: 20
    col: 12
    width: 12
    height: 7
  - title: "# Collaborators"
    name: "# Collaborators"
    model: workspace_audit_logs
    explore: drive
    type: looker_column
    fields: [activity.activity_date, activity.drive__doc_type, activity.count_user]
    pivots: [activity.drive__doc_type]
    fill_fields: [activity.activity_date]
    filters:
      activity.record_type: drive
      activity.drive__doc_type: doc,slide,sheet
      activity.is_active_user_internal: 'Yes'
    sorts: [activity.drive__doc_type, activity.activity_date desc]
    limit: 500
    column_limit: 50
    filter_expression: "${activity.email} != ${activity_drive_facts.current_owner_email}"
    query_timezone: user_timezone
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    x_axis_zoom: true
    y_axis_zoom: true
    hidden_series: []
    series_colors:
      sheet - activity.count_collaboration: "#34A853"
    show_null_points: true
    interpolation: linear
    hidden_pivots: {}
    defaults_version: 1
    note_state: collapsed
    note_display: hover
    note_text: |-
      Internal Collaboration Only.

      Actions included: edit, approval_requested, approval_completed, approval_canceled, approval_comment_added, approval_reviewer_responded, approval_decisions_reset, approval_reviewer_change, approval_due_time_change, create_comment, delete_comment, edit_comment, reassign_comment, reopen_comment, resolve_comment, accept_suggestion, create_suggestion, delete_suggestion, reject_suggestion
    listen:
      Activity Date: activity.activity_date
      Organizational Unit: activity.json_ou_path
    row: 58
    col: 12
    width: 12
    height: 7
  - name: " (Copy 3)"
    type: text
    title_text: " (Copy 3)"
    subtitle_text: ''
    body_text: '[{"type":"h1","children":[{"text":"Meet","bold":true}],"align":"center"}]'
    rich_content_json: '{"format":"slate"}'
    row: 65
    col: 0
    width: 24
    height: 2
  - title: 'Total # Meetings'
    name: 'Total # Meetings'
    model: workspace_audit_logs
    explore: meet
    type: single_value
    fields: [activity_meet_facts.meeting_length_minutes, activity_meet_facts.avg_length_minutes,
      activity_meet_facts.count_of_no_show_meetings, activity_meet_facts.count_of_1_to_1_meetings,
      activity_meet_facts.count_of_greater_than_2_meetings, activity_meet_facts.count_of_greater_than_10_meetings,
      activity_meet_facts.count_of_livestreams, activity_meet_facts.count_of_meetings]
    filters:
      activity.record_type: meet
    limit: 500
    column_limit: 50
    query_timezone: user_timezone
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: 'Total # Meetings'
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_labels:
      activity_meet_facts.count_of_no_show_meetings: No Show Meetings
      activity_meet_facts.count_of_1_to_1_meetings: 1-1p Meetings
      activity_meet_facts.count_of_greater_than_2_meetings: ">2p Meetings"
      activity_meet_facts.count_of_livestreams: Livestreams
    series_cell_visualizations:
      activity_meet_facts.count_of_no_show_meetings:
        is_active: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: Count of Meetings, orientation: left, series: [{axisId: activity_meet_facts.count_of_no_show_meetings,
            id: activity_meet_facts.count_of_no_show_meetings, name: "    Count of\
              \ No Show Meetings"}, {axisId: activity_meet_facts.count_of_1_to_1_meetings,
            id: activity_meet_facts.count_of_1_to_1_meetings, name: "   Count of 1-1p\
              \ Meetings"}, {axisId: activity_meet_facts.count_of_greater_than_2_meetings,
            id: activity_meet_facts.count_of_greater_than_2_meetings, name: "  Count\
              \ of >2p Meetings"}, {axisId: activity_meet_facts.count_of_livestreams,
            id: activity_meet_facts.count_of_livestreams, name: Count of Livestreams}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}, {label: !!null '', orientation: right,
        series: [{axisId: activity_meet_facts.meeting_length_minutes, id: activity_meet_facts.meeting_length_minutes,
            name: Total Meeting Length (minutes)}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    hidden_series: []
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    hidden_pivots: {}
    hidden_fields: [activity_meet_facts.meeting_length_minutes, activity_meet_facts.avg_length_minutes,
      activity_meet_facts.count_of_no_show_meetings, activity_meet_facts.count_of_1_to_1_meetings,
      activity_meet_facts.count_of_greater_than_2_meetings, activity_meet_facts.count_of_greater_than_10_meetings,
      activity_meet_facts.count_of_livestreams]
    listen:
      Activity Date: activity.activity_date
      Organizational Unit: activity.json_ou_path
    row: 67
    col: 0
    width: 24
    height: 2
  - title: Total Meetings Minutes
    name: Total Meetings Minutes
    model: workspace_audit_logs
    explore: meet
    type: single_value
    fields: [activity_meet_facts.meeting_length_minutes, activity_meet_facts.avg_length_minutes,
      activity_meet_facts.count_of_no_show_meetings, activity_meet_facts.count_of_1_to_1_meetings,
      activity_meet_facts.count_of_greater_than_2_meetings, activity_meet_facts.count_of_greater_than_10_meetings,
      activity_meet_facts.count_of_livestreams, activity_meet_facts.count_of_meetings]
    filters:
      activity.record_type: meet
    limit: 500
    column_limit: 50
    query_timezone: user_timezone
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Total Meetings Minutes
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_labels:
      activity_meet_facts.count_of_no_show_meetings: No Show Meetings
      activity_meet_facts.count_of_1_to_1_meetings: 1-1p Meetings
      activity_meet_facts.count_of_greater_than_2_meetings: ">2p Meetings"
      activity_meet_facts.count_of_livestreams: Livestreams
    series_cell_visualizations:
      activity_meet_facts.count_of_no_show_meetings:
        is_active: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: Count of Meetings, orientation: left, series: [{axisId: activity_meet_facts.count_of_no_show_meetings,
            id: activity_meet_facts.count_of_no_show_meetings, name: "    Count of\
              \ No Show Meetings"}, {axisId: activity_meet_facts.count_of_1_to_1_meetings,
            id: activity_meet_facts.count_of_1_to_1_meetings, name: "   Count of 1-1p\
              \ Meetings"}, {axisId: activity_meet_facts.count_of_greater_than_2_meetings,
            id: activity_meet_facts.count_of_greater_than_2_meetings, name: "  Count\
              \ of >2p Meetings"}, {axisId: activity_meet_facts.count_of_livestreams,
            id: activity_meet_facts.count_of_livestreams, name: Count of Livestreams}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}, {label: !!null '', orientation: right,
        series: [{axisId: activity_meet_facts.meeting_length_minutes, id: activity_meet_facts.meeting_length_minutes,
            name: Total Meeting Length (minutes)}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    hidden_series: []
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    hidden_pivots: {}
    hidden_fields: [activity_meet_facts.avg_length_minutes, activity_meet_facts.count_of_no_show_meetings,
      activity_meet_facts.count_of_1_to_1_meetings, activity_meet_facts.count_of_greater_than_2_meetings,
      activity_meet_facts.count_of_greater_than_10_meetings, activity_meet_facts.count_of_livestreams,
      activity_meet_facts.count_of_meetings]
    listen:
      Activity Date: activity.activity_date
      Organizational Unit: activity.json_ou_path
    row: 69
    col: 0
    width: 12
    height: 3
  - title: Average Meeting Length
    name: Average Meeting Length
    model: workspace_audit_logs
    explore: meet
    type: single_value
    fields: [activity_meet_facts.meeting_length_minutes, activity_meet_facts.avg_length_minutes,
      activity_meet_facts.count_of_no_show_meetings, activity_meet_facts.count_of_1_to_1_meetings,
      activity_meet_facts.count_of_greater_than_2_meetings, activity_meet_facts.count_of_greater_than_10_meetings,
      activity_meet_facts.count_of_livestreams, activity_meet_facts.count_of_meetings]
    filters:
      activity.record_type: meet
    limit: 500
    column_limit: 50
    query_timezone: user_timezone
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Average Meeting Length
    value_format: ''
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_labels:
      activity_meet_facts.count_of_no_show_meetings: No Show Meetings
      activity_meet_facts.count_of_1_to_1_meetings: 1-1p Meetings
      activity_meet_facts.count_of_greater_than_2_meetings: ">2p Meetings"
      activity_meet_facts.count_of_livestreams: Livestreams
    series_cell_visualizations:
      activity_meet_facts.count_of_no_show_meetings:
        is_active: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: Count of Meetings, orientation: left, series: [{axisId: activity_meet_facts.count_of_no_show_meetings,
            id: activity_meet_facts.count_of_no_show_meetings, name: "    Count of\
              \ No Show Meetings"}, {axisId: activity_meet_facts.count_of_1_to_1_meetings,
            id: activity_meet_facts.count_of_1_to_1_meetings, name: "   Count of 1-1p\
              \ Meetings"}, {axisId: activity_meet_facts.count_of_greater_than_2_meetings,
            id: activity_meet_facts.count_of_greater_than_2_meetings, name: "  Count\
              \ of >2p Meetings"}, {axisId: activity_meet_facts.count_of_livestreams,
            id: activity_meet_facts.count_of_livestreams, name: Count of Livestreams}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}, {label: !!null '', orientation: right,
        series: [{axisId: activity_meet_facts.meeting_length_minutes, id: activity_meet_facts.meeting_length_minutes,
            name: Total Meeting Length (minutes)}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    hidden_series: []
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    hidden_pivots: {}
    hidden_fields: [activity_meet_facts.count_of_no_show_meetings, activity_meet_facts.count_of_1_to_1_meetings,
      activity_meet_facts.count_of_greater_than_2_meetings, activity_meet_facts.count_of_greater_than_10_meetings,
      activity_meet_facts.count_of_livestreams, activity_meet_facts.count_of_meetings,
      activity_meet_facts.meeting_length_minutes]
    listen:
      Activity Date: activity.activity_date
      Organizational Unit: activity.json_ou_path
    row: 69
    col: 12
    width: 12
    height: 3
  - title: 1:1 Meetings
    name: 1:1 Meetings
    model: workspace_audit_logs
    explore: meet
    type: single_value
    fields: [activity_meet_facts.meeting_length_minutes, activity_meet_facts.avg_length_minutes,
      activity_meet_facts.count_of_no_show_meetings, activity_meet_facts.count_of_1_to_1_meetings,
      activity_meet_facts.count_of_greater_than_2_meetings, activity_meet_facts.count_of_greater_than_10_meetings,
      activity_meet_facts.count_of_livestreams, activity_meet_facts.count_of_meetings]
    filters:
      activity.record_type: meet
    limit: 500
    column_limit: 50
    query_timezone: user_timezone
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: 1:1 Meetings
    value_format: ''
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_labels:
      activity_meet_facts.count_of_no_show_meetings: No Show Meetings
      activity_meet_facts.count_of_1_to_1_meetings: 1-1p Meetings
      activity_meet_facts.count_of_greater_than_2_meetings: ">2p Meetings"
      activity_meet_facts.count_of_livestreams: Livestreams
    series_cell_visualizations:
      activity_meet_facts.count_of_no_show_meetings:
        is_active: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: Count of Meetings, orientation: left, series: [{axisId: activity_meet_facts.count_of_no_show_meetings,
            id: activity_meet_facts.count_of_no_show_meetings, name: "    Count of\
              \ No Show Meetings"}, {axisId: activity_meet_facts.count_of_1_to_1_meetings,
            id: activity_meet_facts.count_of_1_to_1_meetings, name: "   Count of 1-1p\
              \ Meetings"}, {axisId: activity_meet_facts.count_of_greater_than_2_meetings,
            id: activity_meet_facts.count_of_greater_than_2_meetings, name: "  Count\
              \ of >2p Meetings"}, {axisId: activity_meet_facts.count_of_livestreams,
            id: activity_meet_facts.count_of_livestreams, name: Count of Livestreams}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}, {label: !!null '', orientation: right,
        series: [{axisId: activity_meet_facts.meeting_length_minutes, id: activity_meet_facts.meeting_length_minutes,
            name: Total Meeting Length (minutes)}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    hidden_series: []
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    hidden_pivots: {}
    hidden_fields: [activity_meet_facts.count_of_no_show_meetings, activity_meet_facts.count_of_greater_than_2_meetings,
      activity_meet_facts.count_of_greater_than_10_meetings, activity_meet_facts.count_of_livestreams,
      activity_meet_facts.count_of_meetings, activity_meet_facts.meeting_length_minutes,
      activity_meet_facts.avg_length_minutes]
    listen:
      Activity Date: activity.activity_date
      Organizational Unit: activity.json_ou_path
    row: 72
    col: 0
    width: 6
    height: 2
  - title: ">2 Attendees"
    name: ">2 Attendees"
    model: workspace_audit_logs
    explore: meet
    type: single_value
    fields: [activity_meet_facts.meeting_length_minutes, activity_meet_facts.avg_length_minutes,
      activity_meet_facts.count_of_no_show_meetings, activity_meet_facts.count_of_1_to_1_meetings,
      activity_meet_facts.count_of_greater_than_2_meetings, activity_meet_facts.count_of_greater_than_10_meetings,
      activity_meet_facts.count_of_livestreams, activity_meet_facts.count_of_meetings]
    filters:
      activity.record_type: meet
    limit: 500
    column_limit: 50
    query_timezone: user_timezone
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: ">2 Attendees"
    value_format: ''
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_labels:
      activity_meet_facts.count_of_no_show_meetings: No Show Meetings
      activity_meet_facts.count_of_1_to_1_meetings: 1-1p Meetings
      activity_meet_facts.count_of_greater_than_2_meetings: ">2p Meetings"
      activity_meet_facts.count_of_livestreams: Livestreams
    series_cell_visualizations:
      activity_meet_facts.count_of_no_show_meetings:
        is_active: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: Count of Meetings, orientation: left, series: [{axisId: activity_meet_facts.count_of_no_show_meetings,
            id: activity_meet_facts.count_of_no_show_meetings, name: "    Count of\
              \ No Show Meetings"}, {axisId: activity_meet_facts.count_of_1_to_1_meetings,
            id: activity_meet_facts.count_of_1_to_1_meetings, name: "   Count of 1-1p\
              \ Meetings"}, {axisId: activity_meet_facts.count_of_greater_than_2_meetings,
            id: activity_meet_facts.count_of_greater_than_2_meetings, name: "  Count\
              \ of >2p Meetings"}, {axisId: activity_meet_facts.count_of_livestreams,
            id: activity_meet_facts.count_of_livestreams, name: Count of Livestreams}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}, {label: !!null '', orientation: right,
        series: [{axisId: activity_meet_facts.meeting_length_minutes, id: activity_meet_facts.meeting_length_minutes,
            name: Total Meeting Length (minutes)}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    hidden_series: []
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    hidden_pivots: {}
    hidden_fields: [activity_meet_facts.count_of_no_show_meetings, activity_meet_facts.count_of_greater_than_10_meetings,
      activity_meet_facts.count_of_livestreams, activity_meet_facts.count_of_meetings,
      activity_meet_facts.meeting_length_minutes, activity_meet_facts.avg_length_minutes,
      activity_meet_facts.count_of_1_to_1_meetings]
    listen:
      Activity Date: activity.activity_date
      Organizational Unit: activity.json_ou_path
    row: 72
    col: 6
    width: 6
    height: 2
  - title: ">10 Attendees"
    name: ">10 Attendees"
    model: workspace_audit_logs
    explore: meet
    type: single_value
    fields: [activity_meet_facts.meeting_length_minutes, activity_meet_facts.avg_length_minutes,
      activity_meet_facts.count_of_no_show_meetings, activity_meet_facts.count_of_1_to_1_meetings,
      activity_meet_facts.count_of_greater_than_2_meetings, activity_meet_facts.count_of_greater_than_10_meetings,
      activity_meet_facts.count_of_livestreams, activity_meet_facts.count_of_meetings]
    filters:
      activity.record_type: meet
    limit: 500
    column_limit: 50
    query_timezone: user_timezone
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: ">10 Attendees"
    value_format: ''
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_labels:
      activity_meet_facts.count_of_no_show_meetings: No Show Meetings
      activity_meet_facts.count_of_1_to_1_meetings: 1-1p Meetings
      activity_meet_facts.count_of_greater_than_2_meetings: ">2p Meetings"
      activity_meet_facts.count_of_livestreams: Livestreams
    series_cell_visualizations:
      activity_meet_facts.count_of_no_show_meetings:
        is_active: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: Count of Meetings, orientation: left, series: [{axisId: activity_meet_facts.count_of_no_show_meetings,
            id: activity_meet_facts.count_of_no_show_meetings, name: "    Count of\
              \ No Show Meetings"}, {axisId: activity_meet_facts.count_of_1_to_1_meetings,
            id: activity_meet_facts.count_of_1_to_1_meetings, name: "   Count of 1-1p\
              \ Meetings"}, {axisId: activity_meet_facts.count_of_greater_than_2_meetings,
            id: activity_meet_facts.count_of_greater_than_2_meetings, name: "  Count\
              \ of >2p Meetings"}, {axisId: activity_meet_facts.count_of_livestreams,
            id: activity_meet_facts.count_of_livestreams, name: Count of Livestreams}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}, {label: !!null '', orientation: right,
        series: [{axisId: activity_meet_facts.meeting_length_minutes, id: activity_meet_facts.meeting_length_minutes,
            name: Total Meeting Length (minutes)}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    hidden_series: []
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    hidden_pivots: {}
    hidden_fields: [activity_meet_facts.count_of_no_show_meetings, activity_meet_facts.count_of_livestreams,
      activity_meet_facts.count_of_meetings, activity_meet_facts.meeting_length_minutes,
      activity_meet_facts.avg_length_minutes, activity_meet_facts.count_of_1_to_1_meetings,
      activity_meet_facts.count_of_greater_than_2_meetings]
    listen:
      Activity Date: activity.activity_date
      Organizational Unit: activity.json_ou_path
    row: 72
    col: 12
    width: 6
    height: 2
  - title: Livestreams
    name: Livestreams
    model: workspace_audit_logs
    explore: meet
    type: single_value
    fields: [activity_meet_facts.meeting_length_minutes, activity_meet_facts.avg_length_minutes,
      activity_meet_facts.count_of_no_show_meetings, activity_meet_facts.count_of_1_to_1_meetings,
      activity_meet_facts.count_of_greater_than_2_meetings, activity_meet_facts.count_of_greater_than_10_meetings,
      activity_meet_facts.count_of_livestreams, activity_meet_facts.count_of_meetings]
    filters:
      activity.record_type: meet
    limit: 500
    column_limit: 50
    query_timezone: user_timezone
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Livestreams
    value_format: ''
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_labels:
      activity_meet_facts.count_of_no_show_meetings: No Show Meetings
      activity_meet_facts.count_of_1_to_1_meetings: 1-1p Meetings
      activity_meet_facts.count_of_greater_than_2_meetings: ">2p Meetings"
      activity_meet_facts.count_of_livestreams: Livestreams
    series_cell_visualizations:
      activity_meet_facts.count_of_no_show_meetings:
        is_active: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: Count of Meetings, orientation: left, series: [{axisId: activity_meet_facts.count_of_no_show_meetings,
            id: activity_meet_facts.count_of_no_show_meetings, name: "    Count of\
              \ No Show Meetings"}, {axisId: activity_meet_facts.count_of_1_to_1_meetings,
            id: activity_meet_facts.count_of_1_to_1_meetings, name: "   Count of 1-1p\
              \ Meetings"}, {axisId: activity_meet_facts.count_of_greater_than_2_meetings,
            id: activity_meet_facts.count_of_greater_than_2_meetings, name: "  Count\
              \ of >2p Meetings"}, {axisId: activity_meet_facts.count_of_livestreams,
            id: activity_meet_facts.count_of_livestreams, name: Count of Livestreams}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}, {label: !!null '', orientation: right,
        series: [{axisId: activity_meet_facts.meeting_length_minutes, id: activity_meet_facts.meeting_length_minutes,
            name: Total Meeting Length (minutes)}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    hidden_series: []
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    hidden_pivots: {}
    hidden_fields: [activity_meet_facts.count_of_no_show_meetings, activity_meet_facts.count_of_meetings,
      activity_meet_facts.meeting_length_minutes, activity_meet_facts.avg_length_minutes,
      activity_meet_facts.count_of_1_to_1_meetings, activity_meet_facts.count_of_greater_than_2_meetings,
      activity_meet_facts.count_of_greater_than_10_meetings]
    listen:
      Activity Date: activity.activity_date
      Organizational Unit: activity.json_ou_path
    row: 72
    col: 18
    width: 6
    height: 2
  - title: Video and Screencast Usage
    name: Video and Screencast Usage
    model: workspace_audit_logs
    explore: meet
    type: looker_grid
    fields: [activity.activity_date, activity_meet_facts.avg_per_video_time_on,
      activity_meet_facts.total_screencast_send_minutes, meetings_with_video_on, meetings_with_video_off,
      activity_meet_facts.count_of_meetings]
    fill_fields: [activity.activity_date]
    filters:
      activity.record_type: meet
    sorts: [activity.activity_date desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: measure
      label: Meetings with Video On
      based_on: activity_meet_facts.count_of_meetings
      _kind_hint: measure
      measure: meetings_with_video_on
      type: count_distinct
      _type_hint: number
      filters:
        activity_meet_facts.is_video_on: 'Yes'
    - category: measure
      label: Meetings with Video Off
      based_on: activity_meet_facts.count_of_meetings
      _kind_hint: measure
      measure: meetings_with_video_off
      type: count_distinct
      _type_hint: number
      filters:
        activity_meet_facts.is_video_on: 'No'
    query_timezone: user_timezone
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: true
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_cell_visualizations:
      activity_meet_facts.avg_per_video_time_on:
        is_active: true
        palette:
          palette_id: google-diverging-0
          collection_id: google
      activity_meet_facts.total_screencast_send_minutes:
        is_active: true
        palette:
          palette_id: google-diverging-0
          collection_id: google
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '50'
    hidden_pivots: {}
    defaults_version: 1
    listen:
      Activity Date: activity.activity_date
      Organizational Unit: activity.json_ou_path
    row: 74
    col: 0
    width: 12
    height: 7
  - title: Most Attended
    name: Most Attended
    model: workspace_audit_logs
    explore: meet
    type: looker_grid
    fields: [activity_meet_facts.start_time, activity_meet_facts.end_time, activity.meet__conference_id,
      activity_meet_facts.count_internal_participants, activity_meet_facts.count_external_participants,
      activity_meet_facts.count_total_participants, activity_meet_facts.meeting_length_minutes,
      activity_meet_facts.total_screencast_send_minutes, activity_meet_facts.avg_per_video_time_on,
      activity_meet_facts.calendar_event_title]
    filters:
      activity.record_type: meet
    sorts: [activity_meet_facts.count_total_participants desc]
    limit: 500
    column_limit: 50
    query_timezone: user_timezone
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: true
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_column_widths:
      activity_meet_facts.start_time: 136
      activity_meet_facts.end_time: 134
    series_cell_visualizations:
      activity_meet_facts.count_internal_participants:
        is_active: true
        palette:
          palette_id: google-diverging-0
          collection_id: google
      activity_meet_facts.count_external_participants:
        is_active: true
        palette:
          palette_id: google-diverging-0
          collection_id: google
      activity_meet_facts.count_total_participants:
        is_active: false
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '50'
    defaults_version: 1
    hidden_fields: [activity.meet__conference_id]
    hidden_pivots: {}
    listen:
      Activity Date: activity.activity_date
      Organizational Unit: activity.json_ou_path
    row: 81
    col: 0
    width: 24
    height: 7
  filters:
  - name: Activity Date
    title: Activity Date
    type: field_filter
    default_value: 7 day
    allow_multiple_values: true
    required: false
    ui_config:
      type: relative_timeframes
      display: inline
      options: []
    model: workspace_audit_logs
    explore: drive
    listens_to_filters: []
    field: activity.activity_date
  - name: Organizational Unit
    title: Organizational Unit
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: workspace_audit_logs
    explore: drive
    listens_to_filters: []
    field: activity.json_ou_path
  - name: Active User Definition
    title: Active User Definition
    type: field_filter
    default_value: '30'
    allow_multiple_values: true
    required: false
    ui_config:
      type: dropdown_menu
      display: inline
    model: workspace_audit_logs
    explore: activity_consolidated
    listens_to_filters: []
    field: activity_active_user_facts.timeframe
