---
- dashboard: gemini
  title: Gemini
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: He3f6hvdnbMHbmu2yDs2WD
  layout: newspaper
  tabs:
  - name: ''
    label: ''
  elements:
  - title: Gemini's Most Engaged Users
    name: Gemini's Most Engaged Users
    model: workspace_audit_logs
    explore: gemini
    type: looker_grid
    fields: [activity.email, activity.count, activity.count_apps]
    filters:
      activity.activity_date: 7 days
      activity.json_ou_path: ''
      activity.record_type: gemini_for_workspace
    sorts: [activity.count desc 0]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      Event Category: activity.event_category_split
      Activity Date: activity.activity_date
    row: 18
    col: 0
    width: 10
    height: 7
    tab_name: ''
  - title: Interactions
    name: Interactions
    model: workspace_audit_logs
    explore: gemini
    type: looker_column
    fields: [activity.app_name, activity.count, activity.count_user, activity.dynamic_activity_date]
    pivots: [activity.app_name]
    filters:
      activity.activity_date: 30 days
      activity.json_ou_path: ''
      activity.record_type: gemini_for_workspace
      activity.time_granularity: week
    sorts: [activity.app_name, activity.dynamic_activity_date]
    limit: 500
    column_limit: 20
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    interpolation: monotone
    y_axes: [{label: '', orientation: left, series: [{axisId: activity.count, id: chat
              - activity.count, name: chat - Activity Count of Events}, {axisId: activity.count,
            id: docs - activity.count, name: docs - Activity Count of Events}, {axisId: activity.count,
            id: drive - activity.count, name: drive - Activity Count of Events}, {
            axisId: activity.count, id: gemini_app - activity.count, name: gemini_app
              - Activity Count of Events}, {axisId: activity.count, id: gmail - activity.count,
            name: gmail - Activity Count of Events}, {axisId: activity.count, id: slides
              - activity.count, name: slides - Activity Count of Events}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: !!null '', orientation: right, series: [{axisId: activity.count_user,
            id: chat - activity.count_user, name: chat - Activity Count of Users},
          {axisId: activity.count_user, id: docs - activity.count_user, name: docs
              - Activity Count of Users}, {axisId: activity.count_user, id: drive
              - activity.count_user, name: drive - Activity Count of Users}, {axisId: activity.count_user,
            id: gemini_app - activity.count_user, name: gemini_app - Activity Count
              of Users}, {axisId: activity.count_user, id: gmail - activity.count_user,
            name: gmail - Activity Count of Users}, {axisId: activity.count_user,
            id: slides - activity.count_user, name: slides - Activity Count of Users}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    hidden_series: [chat - activity.count_user, docs - activity.count_user, gemini_app
        - activity.count_user, drive - activity.count_user, slides - activity.count_user,
      gmail - activity.count_user]
    series_colors:
      chat - activity.count: "#34A853"
      docs - activity.count: "#4285F4"
      drive - activity.count: "#EA4335"
      gemini_app - activity.count: "#12B5CB"
      gmail - activity.count: "#EA4335"
      meet - activity.count: "#FBBC04"
      sheets - activity.count: "#34A853"
      slides - activity.count: "#FBBC04"
      vids - activity.count: "#A8A116"
    defaults_version: 1
    hidden_pivots: {}
    hidden_fields: [activity.count_user]
    listen:
      Event Category: activity.event_category_split
      Analysis Granularity: activity.time_granularity
      Activity Date: activity.activity_date
    row: 8
    col: 0
    width: 24
    height: 5
    tab_name: ''
  - title: Apps Balance
    name: Apps Balance
    model: workspace_audit_logs
    explore: gemini
    type: looker_pie
    fields: [activity.app_name, activity.count]
    filters:
      activity.activity_date: 30 days
      activity.json_ou_path: ''
      activity.record_type: gemini_for_workspace
    sorts: [activity.app_name]
    limit: 20
    column_limit: 50
    value_labels: labels
    label_type: labPer
    series_colors:
      chat: "#34A853"
      docs: "#4285F4"
      drive: "#EA4335"
      gemini_app: "#12B5CB"
      gmail: "#EA4335"
      meet: "#FBBC04"
      slides: "#FBBC04"
      sheets: "#34A853"
      vids: "#A8A116"
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
    x_axis_zoom: true
    y_axis_zoom: true
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: monotone
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Event Category: activity.event_category_split
      Activity Date: activity.activity_date
    row: 18
    col: 11
    width: 12
    height: 7
    tab_name: ''
  - title: Popular Actions
    name: Popular Actions
    model: workspace_audit_logs
    explore: gemini
    type: looker_bar
    fields: [activity.count, activity.action_category]
    fill_fields: [activity.action_category]
    filters:
      activity.activity_date: 30 days
      activity.json_ou_path: ''
      activity.record_type: gemini_for_workspace
    sorts: [activity.count desc 0]
    limit: 10
    column_limit: 50
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Event Category: activity.event_category_split
      Activity Date: activity.activity_date
    row: 58
    col: 0
    width: 9
    height: 9
    tab_name: ''
  - title: Usage by OU
    name: Usage by OU
    model: workspace_audit_logs
    explore: gemini
    type: looker_bar
    fields: [activity.active_user_org_unit_name, activity.app_name, activity.count]
    pivots: [activity.app_name]
    filters:
      activity.activity_date: 30 days
      activity.json_ou_path: ''
      activity.record_type: gemini_for_workspace
      activity.feature_source: "-NULL"
    sorts: [activity.app_name, activity.count desc 0]
    limit: 10
    column_limit: 50
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
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
      options:
        steps: 5
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors:
      slides - activity.dynamic_users_events: "#A8A116"
      chat - activity.count: "#34A853"
      docs - activity.count: "#4285F4"
      drive - activity.count: "#EA4335"
      gmail - activity.count: "#EA4335"
      gemini_app - activity.count: "#12B5CB"
      meet - activity.count: "#FBBC04"
      slides - activity.count: "#FBBC04"
      sheets - activity.count: "#34A853"
      vids - activity.count: "#A8A116"
    defaults_version: 1
    hidden_pivots: {}
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    listen:
      Event Category: activity.event_category_split
      Activity Date: activity.activity_date
    row: 34
    col: 0
    width: 24
    height: 7
    tab_name: ''
  - title: Gemini Interaction Patterns by App & Action
    name: Gemini Interaction Patterns by App & Action
    model: workspace_audit_logs
    explore: gemini
    type: marketplace_viz_sankey::sankey-marketplace
    fields: [activity.app_name, activity.action, activity.feature_source, activity.count]
    filters:
      activity.activity_date: 30 days
      activity.json_ou_path: ''
      activity.record_type: gemini_for_workspace
      activity.feature_source: "-NULL"
    sorts: [activity.count desc 0]
    limit: 30
    column_limit: 50
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    color_range: ["#dd3333", "#80ce5d", "#f78131", "#369dc1", "#c572d3", "#36c1b3",
      "#b57052", "#ed69af"]
    label_type: name
    show_null_points: false
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
      options:
        steps: 5
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axes: [{label: Count, orientation: left, series: [{axisId: activity.dynamic_users_events,
            id: activity.dynamic_users_events, name: "Users\n    "}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    x_axis_label: Hour of the day
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    x_axis_zoom: true
    y_axis_zoom: true
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    hide_legend: false
    legend_position: center
    point_style: none
    series_colors:
      activity.dynamic_users_events: "#7CB342"
      slides - activity.dynamic_users_events: "#7CB342"
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    column_group_spacing_ratio: 0.2
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 0
    hidden_pivots: {}
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_picker: ["#7FCDAE", "#7ED09C", "#7DD389", "#85D67C", "#9AD97B", "#B1DB7A",
      "#CADF79", "#E2DF78", "#E5C877", "#E7AF75", "#EB9474", "#EE7772"]
    formatting_override: ''
    rounded: false
    outline: month
    label_year: 'true'
    label_month: 'false'
    viz_show_legend: 'true'
    focus_tooltip: 'true'
    outline_weight: 1
    cell_color: "#fff"
    outline_color: "#000"
    cell_reducer: 1
    axis_label_color: "#282828"
    listen:
      Event Category: activity.event_category_split
      Activity Date: activity.activity_date
    row: 58
    col: 9
    width: 15
    height: 9
    tab_name: ''
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: '[{"type":"h1","children":[{"text":"Gemini Within Workspace"}],"align":"center"}]'
    rich_content_json: '{"format":"slate"}'
    row: 6
    col: 0
    width: 24
    height: 2
    tab_name: ''
  - title: User Segmentation
    name: User Segmentation
    model: workspace_audit_logs
    explore: gemini
    type: looker_scatter
    fields: [activity.email, activity.count_actions, activity.count_apps]
    filters:
      activity.activity_date: ''
      activity.json_ou_path: ''
      activity.record_type: gemini_for_workspace
    sorts: [activity.count_actions desc 0]
    limit: 500
    column_limit: 50
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
    show_null_points: true
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors:
      activity.count: "#E8710A"
      activity.count_actions: "#079c98"
    series_point_styles:
      activity.count_actions: diamond
    swap_axes: false
    cluster_points: true
    quadrants_enabled: true
    quadrant_properties:
      '0':
        color: "#ebf2ff"
        label: Explorers
      '1':
        color: "#effff1"
        label: Champions
      '2':
        color: "#fce6e3"
        label: Casual
      '3':
        color: "#fff3c7"
        label: Specialists
    custom_quadrant_point_x: 5
    custom_quadrant_point_y: 5
    custom_x_column: activity.count_actions
    custom_y_column: activity.count_apps
    custom_value_label_column: ''
    ordering: none
    show_null_labels: true
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_fields: [activity.email]
    note_state: collapsed
    note_display: hover
    note_text: |-
      User segmentation by Volume (Events on X-axis) vs. Variety (Actions on Y-axis).

      Champions (Top-Right): High volume, high variety.

      Explorers (Top-Left): Low volume, high variety.

      Specialists (Bottom-Right): High volume, low variety.

      Casual Users (Bottom-Left): Low volume, low variety.
    listen:
      Event Category: activity.event_category_split
      Activity Date: activity.activity_date
    row: 25
    col: 0
    width: 24
    height: 9
    tab_name: ''
  - name: "Engagement subtitle"
    type: text
    title_text: "Engagement subtitle"
    subtitle_text: ''
    body_text: '[{"type":"h1","children":[{"text":"Engagement"}],"align":"center"}]'
    rich_content_json: '{"format":"slate"}'
    row: 0
    col: 0
    width: 19
    height: 2
    tab_name: ''
  - title: Users
    name: Users
    model: workspace_audit_logs
    explore: gemini
    type: looker_column
    fields: [activity.app_name, activity.count, activity.count_user, activity.dynamic_activity_date]
    pivots: [activity.app_name]
    filters:
      activity.activity_date: 30 days
      activity.json_ou_path: ''
      activity.record_type: gemini_for_workspace
      activity.time_granularity: week
    sorts: [activity.app_name, activity.dynamic_activity_date]
    limit: 500
    column_limit: 20
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    interpolation: monotone
    y_axes: [{label: '', orientation: left, series: [{axisId: activity.count, id: chat
              - activity.count, name: chat - Activity Count of Events}, {axisId: activity.count,
            id: docs - activity.count, name: docs - Activity Count of Events}, {axisId: activity.count,
            id: drive - activity.count, name: drive - Activity Count of Events}, {
            axisId: activity.count, id: gemini_app - activity.count, name: gemini_app
              - Activity Count of Events}, {axisId: activity.count, id: gmail - activity.count,
            name: gmail - Activity Count of Events}, {axisId: activity.count, id: slides
              - activity.count, name: slides - Activity Count of Events}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: !!null '', orientation: right, series: [{axisId: activity.count_user,
            id: chat - activity.count_user, name: chat - Activity Count of Users},
          {axisId: activity.count_user, id: docs - activity.count_user, name: docs
              - Activity Count of Users}, {axisId: activity.count_user, id: drive
              - activity.count_user, name: drive - Activity Count of Users}, {axisId: activity.count_user,
            id: gemini_app - activity.count_user, name: gemini_app - Activity Count
              of Users}, {axisId: activity.count_user, id: gmail - activity.count_user,
            name: gmail - Activity Count of Users}, {axisId: activity.count_user,
            id: slides - activity.count_user, name: slides - Activity Count of Users}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    hidden_series: []
    series_colors:
      chat - activity.count: "#34A853"
      docs - activity.count: "#4285F4"
      drive - activity.count: "#EA4335"
      gemini_app - activity.count: "#1A73E8"
      gmail - activity.count: "#EA4335"
      meet - activity.count: "#FBBC04"
      sheets - activity.count: "#34A853"
      slides - activity.count: "#FBBC04"
      vids - activity.count: "#1A73E8"
      chat - activity.count_user: "#34A853"
      docs - activity.count_user: "#4285F4"
      drive - activity.count_user: "#EA4335"
      gemini_app - activity.count_user: "#12B5CB"
      gmail - activity.count_user: "#EA4335"
      meet - activity.count_user: "#FBBC04"
      slides - activity.count_user: "#FBBC04"
      sheets - activity.count_user: "#34A853"
      vids - activity.count_user: "#A8A116"
    defaults_version: 1
    hidden_pivots: {}
    hidden_fields: [activity.count]
    listen:
      Event Category: activity.event_category_split
      Analysis Granularity: activity.time_granularity
      Activity Date: activity.activity_date
    row: 13
    col: 0
    width: 24
    height: 5
    tab_name: ''
  - title: " OU Segmentation Scale vs Saturation"
    name: " OU Segmentation Scale vs Saturation"
    model: workspace_audit_logs
    explore: gemini
    type: looker_scatter
    fields: [activity.active_user_org_unit_name, workspace_benchmark_sidecar.count_core_users,
      activity.real_penetration_rate]
    filters:
      activity.activity_date: ''
      activity.json_ou_path: ''
      activity.record_type: gemini_for_workspace
      activity.real_penetration_rate: ">=0"
    sorts: [workspace_benchmark_sidecar.count_core_users desc 0]
    limit: 500
    column_limit: 50
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
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors:
      activity.count_user: "#1A73E8"
      activity.count_opportunity_gap: "#12B5CB"
    swap_axes: true
    cluster_points: false
    quadrants_enabled: true
    quadrant_properties:
      '0':
        color: "#fce6e3"
        label: Niche Innovators
      '1':
        color: "#ebf2ff"
        label: Powerhouse Adopters
      '2':
        color: "#effff1"
        label: Incubator Zone
      '3':
        color: "#fffee8"
        label: Sleeping Giants
    custom_quadrant_point_x: 5
    custom_quadrant_point_y: 5
    custom_x_column: ''
    custom_y_column: ''
    custom_value_label_column: ''
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    hidden_fields: [activity.active_user_org_unit_name]
    hidden_pivots: {}
    note_state: collapsed
    note_display: hover
    note_text: Identifies high-impact opportunities. Prioritize the Bottom-Right quadrant
      ("Sleeping Giants")—teams with high user volume but low AI penetration—to drive
      the fastest adoption growth.
    listen:
      Activity Date: activity.activity_date
    row: 48
    col: 0
    width: 24
    height: 10
    tab_name: ''
  - title: 'Departmental Effectiveness: Volume vs Penetration'
    name: 'Departmental Effectiveness: Volume vs Penetration'
    model: workspace_audit_logs
    explore: gemini
    type: looker_column
    fields: [activity.active_user_org_unit_name, workspace_benchmark_sidecar.count_core_users,
      activity.real_penetration_rate]
    filters:
      activity.activity_date: ''
      activity.json_ou_path: ''
      activity.record_type: gemini_for_workspace
      activity.real_penetration_rate: NOT NULL
    sorts: [workspace_benchmark_sidecar.count_core_users desc]
    limit: 500
    column_limit: 50
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
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: workspace_benchmark_sidecar.count_core_users,
            id: workspace_benchmark_sidecar.count_core_users, name: Total Active Workspace
              Users}], showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}, {label: !!null '', orientation: right,
        series: [{axisId: activity.real_penetration_rate, id: activity.real_penetration_rate,
            name: Real Penetration Rate %}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    series_types:
      activity.real_penetration_rate: line
    series_colors:
      activity.count_user: "#1A73E8"
      activity.count_opportunity_gap: "#12B5CB"
    show_null_points: true
    cluster_points: false
    quadrants_enabled: true
    quadrant_properties:
      '0':
        color: "#fce6e3"
        label: Niche Innovators
      '1':
        color: "#ebf2ff"
        label: Powerhouse Adopters
      '2':
        color: "#effff1"
        label: Incubator Zone
      '3':
        color: "#fffee8"
        label: Sleeping Giants
    custom_quadrant_point_x: 5
    custom_quadrant_point_y: 5
    custom_x_column: ''
    custom_y_column: ''
    custom_value_label_column: ''
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    hidden_fields:
    hidden_pivots: {}
    note_state: collapsed
    note_display: hover
    note_text: Contextualizes performance. Bars show the Total Active Workforce (Scale),
      while the line tracks the Penetration Rate % (Efficiency). Use this to filter
      out "false positives"—small teams with 100% adoption but low organizational
      impact—and identify large teams with room to grow.
    listen:
      Activity Date: activity.activity_date
    row: 41
    col: 0
    width: 24
    height: 7
    tab_name: ''
  - title: Interactions Count
    name: Interactions Count
    model: workspace_audit_logs
    explore: gemini
    type: marketplace_viz_multiple_value::multiple_value-marketplace
    fields: [activity.selected_period_count_events, activity.previous_period_count_events]
    filters:
      activity.activity_date: ''
      activity.json_ou_path: ''
      activity.record_type: gemini_for_workspace
      activity.date_filter: 15 days
    limit: 500
    column_limit: 50
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    font_size_main: '12'
    orientation: auto
    style_activity.selected_period_count_events: "#000000"
    show_title_activity.selected_period_count_events: false
    title_override_activity.selected_period_count_events: Interactions
    title_placement_activity.selected_period_count_events: above
    value_format_activity.selected_period_count_events: ''
    show_comparison_activity.previous_period_count_events: true
    comparison_style_activity.previous_period_count_events: percentage_change
    comparison_show_label_activity.previous_period_count_events: false
    pos_is_bad_activity.previous_period_count_events: false
    comparison_label_placement_activity.previous_period_count_events: below
    comp_value_format_activity.previous_period_count_events: ''
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
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
      Event Category: activity.event_category_split
      Activity Date: activity.date_filter
    row: 2
    col: 2
    width: 8
    height: 4
    tab_name: ''
  - title: Active Users
    name: Active Users
    model: workspace_audit_logs
    explore: gemini
    type: marketplace_viz_multiple_value::multiple_value-marketplace
    fields: [activity.selected_period_count_users, activity.previous_period_count_users]
    filters:
      activity.activity_date: ''
      activity.json_ou_path: ''
      activity.record_type: gemini_for_workspace
      activity.date_filter: 15 days
    limit: 500
    column_limit: 50
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    font_size_main: '12'
    orientation: auto
    style_activity.selected_period_count_users: "#3A4245"
    show_title_activity.selected_period_count_users: false
    title_placement_activity.selected_period_count_users: above
    value_format_activity.selected_period_count_users: ''
    show_comparison_activity.previous_period_count_users: true
    comparison_style_activity.previous_period_count_users: percentage_change
    comparison_show_label_activity.previous_period_count_users: false
    pos_is_bad_activity.previous_period_count_users: false
    comparison_label_placement_activity.previous_period_count_users: below
    comp_value_format_activity.previous_period_count_users: ''
    style_activity.selected_period_count_events: "#000000"
    show_title_activity.selected_period_count_events: false
    title_override_activity.selected_period_count_events: Interactions
    title_placement_activity.selected_period_count_events: above
    value_format_activity.selected_period_count_events: ''
    show_comparison_activity.previous_period_count_events: true
    comparison_style_activity.previous_period_count_events: percentage_change
    comparison_show_label_activity.previous_period_count_events: false
    pos_is_bad_activity.previous_period_count_events: false
    comparison_label_placement_activity.previous_period_count_events: below
    comp_value_format_activity.previous_period_count_events: ''
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
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
      Event Category: activity.event_category_split
      Activity Date: activity.date_filter
    row: 2
    col: 14
    width: 8
    height: 4
    tab_name: ''
  - type: button
    name: button_534
    rich_content_json: '{"text":"Adoption and Collaboration","description":"","newTab":true,"alignment":"center","size":"medium","style":"FILLED","color":"#1A73E8","href":"/dashboards/workspace_audit_logs::adoption_and_collaboration?Activity+Date=30+day"}'
    row: 0
    col: 19
    width: 5
    height: 2
    tab_name: ''
  - title: App Adoption
    name: App Adoption
    model: workspace_audit_logs
    explore: gemini_app_penetration
    type: looker_column
    fields: [gemini_app_penetration.app_name, gemini_app_penetration.penetration_rate,
      gemini_app_penetration.dynamic_date]
    pivots: [gemini_app_penetration.app_name]
    filters:
      gemini_app_penetration.date_filter: 60 days
      gemini_app_penetration.analysis_grain: month
      gemini_app_penetration.penetration_rate: ">0"
      gemini_app_penetration.app_name: -workflows,-"gemini_app"
    sorts: [gemini_app_penetration.app_name, gemini_app_penetration.dynamic_date]
    limit: 500
    column_limit: 50
    total: true
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    interpolation: linear
    hidden_pivots: {}
    defaults_version: 1
    note_state: collapsed
    note_display: hover
    note_text: Visualizes the evolution of Gemini penetration rates across Workspace
      apps over time. Use the Analysis Granularity filter to switch the view between
      Daily, Weekly, or Monthly trends.
    listen:
      Analysis Granularity: gemini_app_penetration.analysis_grain
      Activity Date: gemini_app_penetration.date_filter
    row: 67
    col: 0
    width: 24
    height: 6
    tab_name: ''
  filters:
  - name: Activity Date
    title: Activity Date
    type: field_filter
    default_value: 3 month
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: workspace_audit_logs
    explore: gemini
    listens_to_filters: []
    field: activity.activity_date
  - name: Event Category
    title: Event Category
    type: field_filter
    default_value: Active,Passive
    allow_multiple_values: true
    required: false
    ui_config:
      type: button_group
      display: inline
    model: workspace_audit_logs
    explore: gemini
    listens_to_filters: []
    field: activity.event_category_split
  - name: Analysis Granularity
    title: Analysis Granularity
    type: field_filter
    default_value: month
    allow_multiple_values: true
    required: false
    ui_config:
      type: dropdown_menu
      display: inline
    model: workspace_audit_logs
    explore: gemini_app_penetration
    listens_to_filters: []
    field: gemini_app_penetration.analysis_grain
