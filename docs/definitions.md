# app_settings

Application-wide key/value configuration.

## Columns
| Column | Type | Null | Default | Description |
| --- | --- | --- | --- | --- |
| description | TEXT | YES |  | Human-readable description. |
| setting_key | VARCHAR(100) | NO |  | Unique setting identifier (natural primary key). |
| type | mysql: VARCHAR(20) / postgres: TEXT | NO |  | Datatype of the value. (enum: string, int, bool, json, secret) |
| is_protected | BOOLEAN | NO | FALSE | Marks sensitive values for redaction in UIs. |
| section | VARCHAR(100) | YES |  | Logical group/namespace. |
| updated_by | BIGINT | YES |  | User who changed the setting (FK users.id). |
| updated_at | mysql: DATETIME(6) / postgres: TIMESTAMPTZ(6) | NO | CURRENT_TIMESTAMP(6) | Last update timestamp (UTC). |
| setting_value | TEXT | YES |  | Value as text (may contain JSON when type=json). |

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
| vw_app_settings | mysql | algorithm=MERGE, security=INVOKER | [../schema/040_views.mysql.sql](../schema/040_views.mysql.sql) |
| vw_app_settings | postgres |  | [../schema/040_views.postgres.sql](../schema/040_views.postgres.sql) |
