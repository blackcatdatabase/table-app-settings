# app_settings

Application-wide key/value configuration.

## Columns
| Column | Type | Null | Default | Description |
| --- | --- | --- | --- | --- |
| description | TEXT | YES |  | Human-readable description. |
| is_protected | BOOLEAN | NO | FALSE | Marks sensitive values for redaction in UIs. |
| section | VARCHAR(100) | YES |  | Logical group/namespace. |
| setting_key | VARCHAR(100) | NO |  | Unique setting identifier (natural primary key). |
| setting_value | TEXT | YES |  | Value as text (may contain JSON when type=json). |
| type | TEXT | NO |  | Datatype of the value. (enum: string, int, bool, json, secret) |
| updated_at | TIMESTAMPTZ(6) | NO | CURRENT_TIMESTAMP(6) | Last update timestamp (UTC). |
| updated_by | BIGINT | YES |  | User who changed the setting (FK users.id). |

## Engine Details

### mysql

Foreign keys:
| Name | Columns | References | Actions |
| --- | --- | --- | --- |
| fk_app_settings_user | updated_by | users(id) | ON DELETE SET |

### postgres

Foreign keys:
| Name | Columns | References | Actions |
| --- | --- | --- | --- |
| fk_app_settings_user | updated_by | users(id) | ON DELETE SET |

## Engine differences

## Views
| View | Engine | Flags | File |
| --- | --- | --- | --- |
| vw_app_settings | mysql | algorithm=MERGE, security=INVOKER | [packages\app-settings\schema\040_views.mysql.sql](https://github.com/blackcatacademy/blackcat-database/packages/app-settings/schema/040_views.mysql.sql) |
| vw_app_settings | postgres |  | [packages\app-settings\schema\040_views.postgres.sql](https://github.com/blackcatacademy/blackcat-database/packages/app-settings/schema/040_views.postgres.sql) |
