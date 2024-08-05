- dashboard: security_audit
  title: Workspace Logs - Security Audit
  layout: newspaper
  preferred_viewer: dashboards-next
  description: Summary on data exfiltration and suspicious events from drive, login, and gmail
  elements:
  - title: External Domain Sharing
    name: External Domain Sharing
    model: workspace_audit_logs
    explore: drive
    type: looker_grid
    fields: [activity.target_user_domain, activity.count_distinct_all_user_shares,
      activity.count_of_docs]
    filters:
      activity.record_type: drive
      activity.is_target_user_internal: 'No'
      activity.drive__target_user: "-NULL"
    sorts: [activity.count_distinct_all_user_shares desc 0]
    limit: 500
    column_limit: 50
    query_timezone: user_timezone
    show_view_names: false
    show_row_numbers: true
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
    series_labels:
      activity.count: Events
      activity.count_distinct_all_user_shares: Number of Users Shared With
    series_cell_visualizations:
      activity.count:
        is_active: true
      activity.count_distinct_all_user_shares:
        is_active: true
        palette:
          palette_id: google-diverging-0
          collection_id: google
      activity.count_of_docs:
        is_active: true
        palette:
          palette_id: google-diverging-0
          collection_id: google
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '50'
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#29bff3",
        font_color: !!null '', color_application: {collection_id: create-a-color-collection,
          palette_id: create-a-color-collection-diverging-0, options: {constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: false, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    hidden_pivots: {}
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
    listen:
      Organizational Unit: activity.json_ou_path
      Activity Date: activity.activity_date
    row: 16
    col: 0
    width: 11
    height: 6
  - title: Emails Received by Domain
    name: Emails Received by Domain
    model: workspace_audit_logs
    explore: gmail
    type: looker_grid
    fields: [activity.gmail__message_info__source__from_header_domain, activity.count_of_all_emails_received,
      activity.count_of_spam]
    filters:
      activity.record_type: gmail
      activity.gmail__message_info__source__from_header_domain: "-NULL"
    sorts: [activity.count_of_all_emails_received desc 0]
    limit: 500
    column_limit: 50
    query_timezone: user_timezone
    show_view_names: false
    show_row_numbers: true
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
    series_labels:
      activity.count_of_all_emails_received: All Emails Received
      activity.count_of_spam: Spam
    series_column_widths:
      activity.gmail__message_info__source__from_header_domain: 234
    series_cell_visualizations:
      activity.count_of_authenticated_emails_received:
        is_active: false
      activity.count_of_spam:
        is_active: true
        palette:
          palette_id: google-diverging-0
          collection_id: google
      activity.count_of_all_emails_received:
        is_active: true
        palette:
          palette_id: google-diverging-0
          collection_id: google
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '50'
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#29bff3",
        font_color: !!null '', color_application: {collection_id: create-a-color-collection,
          palette_id: create-a-color-collection-diverging-0, options: {steps: 5, constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: false, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: [activity.count_of_spam]}]
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
    x_axis_zoom: true
    y_axis_zoom: true
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    hidden_pivots: {}
    defaults_version: 1
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    listen:
      Organizational Unit: activity.json_ou_path
      Activity Date: activity.activity_date
    row: 24
    col: 0
    width: 11
    height: 6
  - title: Daily Email Activity
    name: Daily Email Activity
    model: workspace_audit_logs
    explore: gmail
    type: looker_grid
    fields: [activity.activity_date, activity.count_of_all_emails_received, activity.count_of_spam,
      activity.count_of_all_emails_sent, activity.count_of_external_emails_sent, activity.count_of_internal_emails_sent]
    fill_fields: [activity.activity_date]
    filters:
      activity.record_type: gmail
    sorts: [activity.activity_date desc]
    limit: 500
    column_limit: 50
    query_timezone: user_timezone
    show_view_names: false
    show_row_numbers: true
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
    series_labels:
      activity.count_of_all_emails_received: All Emails Received
      activity.count_of_spam: Spam
      activity.count_of_all_emails_sent: All Emails Sent
      activity.count_of_external_emails_sent: External Emails Sent
      activity.count_of_internal_emails_sent: Internal Emails Sent
    series_cell_visualizations:
      activity.count_of_authenticated_emails_received:
        is_active: false
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '50'
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#29bff3",
        font_color: !!null '', color_application: {collection_id: create-a-color-collection,
          palette_id: create-a-color-collection-diverging-0, options: {steps: 5, constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: false, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: [activity.count_of_spam]}]
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
    x_axis_zoom: true
    y_axis_zoom: true
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    hidden_pivots: {}
    defaults_version: 1
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    listen:
      Organizational Unit: activity.json_ou_path
      Activity Date: activity.activity_date
    row: 24
    col: 11
    width: 13
    height: 6
  - title: File Sharing By Type
    name: File Sharing By Type
    model: workspace_audit_logs
    explore: drive
    type: looker_pie
    fields: [activity.drive__doc_type, activity.count_distinct_all_files_shares]
    filters:
      activity.record_type: drive
      activity.is_target_user_internal: 'No'
      activity.drive__doc_type: doc,sheet,slide,msword,msexcel,mspowerpoint,folder,script,pdf
    sorts: [activity.count_distinct_all_files_shares desc 0]
    limit: 500
    column_limit: 50
    query_timezone: user_timezone
    value_labels: legend
    label_type: labPer
    color_application:
      collection_id: google
      palette_id: google-categorical-0
      options:
        steps: 5
    series_colors: {}
    series_labels:
      activity.count: Events
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    series_cell_visualizations:
      activity.count:
        is_active: true
    table_theme: white
    limit_displayed_rows: true
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '100'
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hide_totals: false
    hide_row_totals: false
    hidden_pivots: {}
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
    note_state: collapsed
    note_display: hover
    note_text: 'Filtered on: doc,sheet,slide,msword,msexcel,mspowerpoint,folder,script,pdf'
    listen:
      Organizational Unit: activity.json_ou_path
      Activity Date: activity.activity_date
    row: 2
    col: 0
    width: 11
    height: 8
  - title: Top External Accounts We've Shared Files With
    name: Top External Accounts We've Shared Files With
    model: workspace_audit_logs
    explore: drive
    type: looker_grid
    fields: [activity.drive__target_user, activity.count_of_docs]
    filters:
      activity.record_type: drive
      activity.is_target_user_internal: 'No'
      activity.drive__target_user: "-NULL"
    sorts: [activity.count_of_docs desc]
    limit: 500
    column_limit: 50
    query_timezone: user_timezone
    show_view_names: false
    show_row_numbers: true
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
    series_labels:
      activity.count: Events
      activity.count_of_docs: Count of Files
    series_cell_visualizations:
      activity.count:
        is_active: true
      activity.count_of_docs:
        is_active: true
        palette:
          palette_id: google-diverging-0
          collection_id: google
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '50'
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#29bff3",
        font_color: !!null '', color_application: {collection_id: create-a-color-collection,
          palette_id: create-a-color-collection-diverging-0, options: {constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: false, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    hidden_pivots: {}
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
    listen:
      Organizational Unit: activity.json_ou_path
      Activity Date: activity.activity_date
    row: 10
    col: 0
    width: 11
    height: 6
  - title: Who is receiving the most Spam
    name: Who is receiving the most Spam
    model: workspace_audit_logs
    explore: gmail
    type: looker_grid
    fields: [activity__gmail__message_info__destination.address, activity__gmail__message_info__link_domain.activity__gmail__message_info__flattened_link_domain,
      activity.count_of_spam]
    filters:
      activity.record_type: gmail
      activity__gmail__message_info__destination.is_destination_internal: 'Yes'
      activity.count_of_spam: ">0"
      activity.gmail__message_info__is_spam: 'Yes'
    sorts: [activity.count_of_spam desc 0]
    limit: 500
    column_limit: 50
    query_timezone: user_timezone
    show_view_names: false
    show_row_numbers: true
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
    series_labels:
      activity.count_of_spam: Spam
      activity__gmail__message_info__link_domain.activity__gmail__message_info__flattened_link_domain: List
        of Sender Domains
    series_column_widths:
      activity.count_of_spam: 20
      activity__gmail__message_info__destination.address: 250
    series_cell_visualizations:
      activity.count_of_spam:
        is_active: true
        palette:
          palette_id: google-diverging-0
          collection_id: google
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '50'
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
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    hidden_pivots: {}
    defaults_version: 1
    listen:
      Organizational Unit: activity.json_ou_path
      Activity Date: activity.activity_date
    row: 30
    col: 0
    width: 12
    height: 6
  - title: Most Externally Shared Files
    name: Most Externally Shared Files
    model: workspace_audit_logs
    explore: drive
    type: looker_grid
    fields: [activity.drive__doc_id, activity_drive_facts.current_doc_title, activity.drive__doc_type,
      activity_drive_facts.current_owner_email, activity_drive_facts.current_visibility,
      activity.count_distinct_external_user_shares]
    filters:
      activity.record_type: drive
      activity.count_distinct_external_user_shares: ">0"
      activity.drive__doc_type: doc,sheet,slide,msword,msexcel,mspowerpoint,folder,script,pdf
      activity_drive_facts.current_doc_title: "-NULL"
    sorts: [activity.count_distinct_external_user_shares desc]
    limit: 500
    column_limit: 50
    query_timezone: user_timezone
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: true
    enable_conditional_formatting: true
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
    series_labels:
      activity.count: Events
      activity.drive__doc_type: File Type
      activity.count_distinct_external_user_shares: External User Shares
    series_column_widths:
      activity.drive__doc_id: 356
    series_cell_visualizations:
      activity.count:
        is_active: true
      activity.count_distinct_all_user_shares:
        is_active: false
      activity.count_distinct_external_user_shares:
        is_active: true
        palette:
          palette_id: google-diverging-0
          collection_id: google
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '50'
    conditional_formatting: []
    hidden_pivots: {}
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
    hidden_fields: [activity.drive__doc_id]
    listen:
      Organizational Unit: activity.json_ou_path
      Activity Date: activity.activity_date
    row: 10
    col: 11
    width: 13
    height: 6
  - title: Which domain is sending the most Spam
    name: Which domain is sending the most Spam
    model: workspace_audit_logs
    explore: gmail
    type: looker_grid
    fields: [activity__gmail__message_info__link_domain.activity__gmail__message_info__flattened_link_domain,
      activity.count_of_spam, activity.gmail__message_info__source__from_header_domain]
    filters:
      activity.record_type: gmail
      activity__gmail__message_info__destination.is_destination_internal: 'Yes'
      activity.count_of_spam: ">0"
      activity.gmail__message_info__is_spam: 'Yes'
    sorts: [activity.count_of_spam desc 0]
    limit: 500
    column_limit: 50
    query_timezone: user_timezone
    show_view_names: false
    show_row_numbers: true
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
    series_labels:
      activity__gmail__message_info__link_domain.activity__gmail__message_info__flattened_link_domain: Links
        included in spam messages
      activity.count_of_spam: Spam
    series_column_widths:
      activity.count_of_spam: 20
      activity.gmail__message_info__source__from_header_domain: 200
    series_cell_visualizations:
      activity.count_of_spam:
        is_active: true
        palette:
          palette_id: google-diverging-0
          collection_id: google
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '50'
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
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    hidden_pivots: {}
    defaults_version: 1
    listen:
      Organizational Unit: activity.json_ou_path
      Activity Date: activity.activity_date
    row: 30
    col: 12
    width: 12
    height: 6
  - title: Login Events by Day
    name: Login Events by Day
    model: workspace_audit_logs
    explore: login
    type: looker_line
    fields: [activity.activity_date, activity.login_success_count, activity.login_failure_count,
      activity.suspicious_login_count, activity.password_edit_count, activity.logout_count]
    fill_fields: [activity.activity_date]
    filters:
      activity.record_type: login
    sorts: [activity.activity_date desc]
    limit: 2000
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
    color_application:
      collection_id: google
      palette_id: google-categorical-0
      options:
        steps: 5
    x_axis_zoom: true
    y_axis_zoom: true
    hidden_series: [activity.logout_count, activity.login_success_count, activity.password_edit_count]
    series_colors: {}
    series_labels:
      activity.suspicious_login_count: Suspicious Login
      activity.login_failure_count: Login Failure
      activity.password_edit_count: Password Edit
      activity.login_success_count: Login Success
      activity.logout_count: Logout
    hidden_pivots: {}
    defaults_version: 1
    listen:
      Organizational Unit: activity.json_ou_path
      Activity Date: activity.activity_date
    row: 38
    col: 0
    width: 12
    height: 7
  - title: Account Warnings per User
    name: Account Warnings per User
    model: workspace_audit_logs
    explore: login
    type: looker_grid
    fields: [activity.login__affected_email_address, activity.account_warning_event_count]
    filters:
      activity.record_type: login
      activity.login__affected_email_address: "-NULL"
    sorts: [activity.account_warning_event_count desc]
    limit: 500
    column_limit: 50
    query_timezone: user_timezone
    show_view_names: false
    show_row_numbers: true
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
      activity.account_warning_event_count:
        is_active: true
        palette:
          palette_id: google-diverging-0
          collection_id: google
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '50'
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
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    hidden_pivots: {}
    defaults_version: 1
    hidden_series: [activity.logout_count, activity.login_success_count, activity.password_edit_count]
    listen:
      Organizational Unit: activity.json_ou_path
      Activity Date: activity.activity_date
    row: 38
    col: 12
    width: 12
    height: 7
  - title: Who has Shared the Most Externally
    name: Who has Shared the Most Externally
    model: workspace_audit_logs
    explore: drive
    type: looker_grid
    fields: [activity.count_of_docs, activity.email, activity.count_distinct_external_user_shares]
    filters:
      activity.record_type: drive
      activity.is_active_user_internal: 'Yes'
      activity.is_target_user_internal: 'No'
      activity.drive__target_user: "-NULL"
      activity.email: "-NULL"
    sorts: [activity.count_of_docs desc]
    limit: 500
    column_limit: 50
    query_timezone: user_timezone
    show_view_names: false
    show_row_numbers: true
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
    series_labels:
      activity.count: Events
      activity.count_of_docs: Count of Files
    series_cell_visualizations:
      activity.count:
        is_active: true
      activity.count_of_docs:
        is_active: true
        palette:
          palette_id: google-diverging-0
          collection_id: google
      activity.count_distinct_external_user_shares:
        is_active: true
        palette:
          palette_id: google-diverging-0
          collection_id: google
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '50'
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#29bff3",
        font_color: !!null '', color_application: {collection_id: create-a-color-collection,
          palette_id: create-a-color-collection-diverging-0, options: {constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: false, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    hidden_pivots: {}
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
    listen:
      Organizational Unit: activity.json_ou_path
      Activity Date: activity.activity_date
    row: 16
    col: 11
    width: 13
    height: 6
  - title: File Sharing Over Time
    name: File Sharing Over Time
    model: workspace_audit_logs
    explore: drive
    type: looker_line
    fields: [activity.count_of_docs, activity.activity_date, activity.count_user]
    fill_fields: [activity.activity_date]
    filters:
      activity.record_type: drive
      activity.event_type: '"acl_change"'
      activity.is_target_user_internal: 'No'
      activity.drive__doc_type: ''
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
    note_state: collapsed
    note_display: hover
    note_text: All doc types included
    listen:
      Organizational Unit: activity.json_ou_path
      Activity Date: activity.activity_date
    row: 2
    col: 11
    width: 13
    height: 8
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: '[{"type":"h1","children":[{"text":"Gmail","bold":true}],"align":"center"}]'
    rich_content_json: '{"format":"slate"}'
    row: 22
    col: 0
    width: 24
    height: 2
  - name: " (Copy)"
    type: text
    title_text: " (Copy)"
    subtitle_text: ''
    body_text: '[{"type":"h1","children":[{"text":"External Drive Sharing","bold":true}],"align":"center"}]'
    rich_content_json: '{"format":"slate"}'
    row: 0
    col: 0
    width: 24
    height: 2
  - name: " (Copy 2)"
    type: text
    title_text: " (Copy 2)"
    subtitle_text: ''
    body_text: '[{"type":"h1","children":[{"text":"Login","bold":true}],"align":"center"}]'
    rich_content_json: '{"format":"slate"}'
    row: 36
    col: 0
    width: 24
    height: 2
  filters:
  - name: Activity Date
    title: Activity Date
    type: date_filter
    default_value: 7 day
    allow_multiple_values: true
    required: false
    ui_config:
      type: relative_timeframes
      display: inline
      options: []
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
    explore: activity
    listens_to_filters: []
    field: activity.json_ou_path
