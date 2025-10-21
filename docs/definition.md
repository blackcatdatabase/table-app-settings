<!-- Auto-generated from schema-map.psd1 @ 1e83bb6 (2025-10-21T10:18:36+02:00) -->
# Definition – app_settings

Application-wide key/value configuration.

## Columns
| Column | Type | Null | Default | Description | Notes |
|-------:|:-----|:----:|:--------|:------------|:------|
| setting_key | VARCHAR(100) | — | — | Unique setting identifier (natural primary key). |  |
| setting_value | TEXT | YES | — | Value as text (may contain JSON when type=json). |  |
| type | ENUM('string','int','bool','json','secret') | NO | — | Datatype of the value. | enum: string, int, bool, json, secret |
| section | VARCHAR(100) | YES | — | Logical group/namespace. |  |
| description | TEXT | YES | — | Human-readable description. |  |
| is_protected | BOOLEAN | NO | FALSE | Marks sensitive values for redaction in UIs. |  |
| updated_at | DATETIME(6) | NO | CURRENT_TIMESTAMP(6) | Last update timestamp (UTC). |  |
| updated_by | BIGINT UNSIGNED | YES | — | User who changed the setting (FK users.id). |  |
