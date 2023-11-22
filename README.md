This block contains metrics for the following services, which is filtered by `activity.record_type`: `gmail`, `drive`, `login`, and `meet`

Schemas and API reference for each can be found here:

- [gmail](https://support.google.com/a/answer/7230050)
- [login](https://developers.google.com/admin-sdk/reports/v1/appendix/activity/login)
- [drive](https://developers.google.com/admin-sdk/reports/v1/appendix/activity/drive)
- [meet](https://developers.google.com/admin-sdk/reports/v1/appendix/activity/meet)

### Requirements

Service Log Exports to BigQuery:
This block requires setting up [service log exports to BigQuery](https://support.google.com/a/answer/9079365). Once this is set up, there will be 2 tables created in the BigQuery project and dataset specified: "activity" and "usage"

Looker User Attribute:
You will need create a user attribute that will be used to apply a filter for each Organizational Unit:

```
Name: workspace_block_organizational_unit
Label: Workspace Block Organizational Unit
Type: string
User Access: view
Hide values: no
```

The value should be in a JSON string format, so if your domain is `my_org.com`, then this should be inputted as `["my_org.com"]`.

For an administrator with access to all data, set the user attribute the primary domain to view all OU events as well as system generated and external user events. For lower level access, the user attribute can be set to the OU path, e.g. `["my_org.com","team_a","foo"]`

# Manifest

On block installation you will specify the following constants:

```
constant: PROJECT_ID {
value: "MY_PROJECT_NAME"
export: override_required
}

constant: DATASET_NAME {
  value: "MY_DATASET_NAME"
  export: override_required
}

constant: PRIMARY_DOMAIN {
  value: "MY_PRIMARY_DOMAIN.COM"
  export: override_required
}

constant: SECONDARY_DOMAINS {
  value: "MY_SECONDARY_DOMAIN_1.COM,MY_SECONDARY_DOMAIN_2.COM,..."
  export: override_required
}
```

# Views

### Raw Tables

The raw folder contains the autogenerated LookML base definition of the 2 tables: [activity](./views/raw/activity.view.lkml), [usage](./views/raw/usage.view.lkml)

- All fields are hidden by default and only exposed in the refinement layer

### Refined

The refined folder contains the refined versions of the 2 views: [activity](./views/refined/activity.view.lkml), [usage](./views/refined/usage.view.lkml)

- These tables are queried as a derived table and include 2 additional columns:
  - A hidden `_PARTITIONTIME` column used for filtering on the partition date
  - `GENERATE_UUID() AS pk` for a primary key
- Fields and customizations added here is _shared logic_ to be leveraged in all subsequent views

The activity view is extended to specific views for each service: [activity_drive](./views/refined/activity_drive.view.lkml), [activity_gmail](./views/refined/activity_gmail.view.lkml), [activity_login](./views/refined/activity_login.view.lkml), [activity_meet](./views/refined/activity_meet.view.lkml)

- Fields and customizations added here is _specific to each service_

The usage view is extended to a specific view for: [usage_customer](./views/refined/usage_customer.view.lkml) and [usage_user](./views/refined/usage_user.view.lkml)

- Fields and customizations added here is _specific to each usage view_
- The Customers usage report aggregates Google Workspace service usage information, for all users, across an entire domain. The user usage report returns Google Workspace service usage information for a particular user in your domain

### PDTs

#### Fact Tables

- [activity_aa](./views/pdt/activity_aa.explore.lkml) - There are 13 aggregate tables (4 for drive, gmail, and login, plus 1 for drive collaboration) that contain measures with by the timeframe (date, week, month, or year) and OU dimensions
- [activity_active_user_facts](./views/pdt/activity_active_user_facts.view.lkml) - 1, 7, and 30 day roll up facts for active users across all products by Date and OU
- [activity_drive_facts](./views/pdt/activity_drive_facts.view.lkml) - Fact table for drive documents
- [activity_meet_facts](./views/pdt/activity_meet_facts.view.lkml) - Metrics for each conference and handles UNNESTING for participant level data
- [ou_user_lookup](./views/pdt/ou_user_lookup.view.lkml) - This fact table shows the mapping of users to Organizational Unit(s). It is used for active metrics per OU and for the OU lookup for drive target users
- [usage_user_drive_facts](./views/pdt/usage_user_drive_facts.view.lkml) - 1, 7, and 30 day roll up facts for active users across docs, sheets, and slides by Date (use activity_active_user_facts for breakdown by OU)

#### OU Lookup

- [ou_lookup](./views/pdt/ou_lookup.view.lkml) - This fact table shows the Organizational Unit tree and is inner joined on every Activity explore with an access filter in order to only display data based on a user's `workspace_block_organizational_unit` user attribute. The table is in the following format:

| ou_name    | ou_id                         | json_ou_path            |
| ---------- | ----------------------------- | ----------------------- |
| my_org.com | ["my_org.com"]                | [my_org.com]            |
| my_org.com | ["my_org.com"]                | [my_org.com,team_a]     |
| my_org.com | ["my_org.com"]                | [my_org.com,team_a,foo] |
| my_org.com | ["my_org.com"]                | [my_org.com,team_b]     |
| my_org.com | ["my_org.com"]                | [my_org.com,team_b,foo] |
| my_org.com | ["my_org.com"]                | [my_org.com,team_b,bar] |
| team_a     | ["my_org.com","team_a"]       | [my_org.com,team_a]     |
| team_a     | ["my_org.com","team_a"]       | [my_org.com,team_a,foo] |
| foo        | ["my_org.com","team_a","foo"] | [my_org.com,team_a,foo] |
| team_b     | ["my_org.com","team_b"]       | [my_org.com,team_b]     |
| team_b     | ["my_org.com","team_b"]       | [my_org.com,team_b,foo] |
| team_b     | ["my_org.com","team_b"]       | [my_org.com,team_b,bar] |
| foo        | ["my_org.com","team_b","foo"] | [my_org.com,team_b,foo] |
| bar        | ["my_org.com","team_b","bar"] | [my_org.com,team_b,bar] |

By specifying a user attribute, a Looker admin can ensure that a user with an ou_id set to `["my_org.com","team_a","foo"]` will only be be able to see activity data from users in that OU. Admins can set `["my_org.com"]` in order to see data from all OUs.

Note that ou_name is not unique (e.g. team_a and team_b both contain a "foo") so the ou_id is used.

### Common

The common folder contains [sets](./views/common/sets.view.lkml) that are shared between the views.

# Explores

The explore folder contains the join logic between the views.

### Base Explores

The [activity_base](./explores/activity_base.explore.lkml) explore contains shared logic for all activity explores. The access_filter is applied to `ou_lookup.ou_id` and a sql_always_where uses liquid conditions to mirror any filters applied to the `time_usec` to the `_PARTITIONTIME` column.

The [usage_base](./explores/usage_base.explore.lkml) explore follows the same logic to mirror filters applied to `usage.date` to the to the `_PARTITIONTIME` column. There is no ou data in the usage explores.

### Activity [Drive, Gmail, Login, Meet]

The [activity](./explores/activity.explore.lkml) explore extends the base explore and is hidden and only used as a filter lookup.

The [drive](./explores/activity_drive.explore.lkml), [gmail](./explores/activity_gmail.explore.lkml), [login](./explores/activity_login.explore.lkml), and [meet](./explores/activity_meet.explore.lkml) explores extends the base explore.

The [activity_consolidated](./explores/activity_consolidated.explore.lkml) is used for top level facts across all products

### Usage [Customer, User]

The [usage_customer](./explores/usage_customer.explore.lkml) explore contains aggregated company-wide metrics across all products, rolled up by date.

The [usage_user](./explores/usage_user.explore.lkml) explore contains aggregated user metrics across all products, rolled up by user email and date.

Note there is an expected lag time of 1-3 days for usage log events to be available.

# Model

The [model](./workspace_audit_logs.model.lkml) includes all the explore definitions.

# Dashboards
All Dashboards have been build using the Activity table and do not include the Usage table for the following reasons:
1. The Activity table contains OU data which lets users filter by OU
1. The Usage table is preaggregated data and does not allow users to drill down to row level events
1. Activity log events are available within 10 minutes, however the Usage log events have a lag time of 1-3 days

- [Security Audit](/dashboards/workspace_audit_logs::security_audit)
- [Adoption and Collaboration](/dashboards/workspace_audit_logs::adoption_and_collaboration)