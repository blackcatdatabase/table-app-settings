<!-- Auto-generated from schema-map-postgres.psd1 @ 62c9c93 (2025-11-20T21:38:11+01:00) -->
# Definition – app_settings

Application-wide key/value configuration.

## Columns
| Column | Type | Null | Default | Description | Notes |
|-------:|:-----|:----:|:--------|:------------|:------|
| setting_key | VARCHAR(100) | — | — | Unique setting identifier (natural primary key). |  |
| setting_value | TEXT | YES | — | Value as text (may contain JSON when type=json). |  |
| type | TEXT | NO | — | Datatype of the value. | enum: string, int, bool, json, secret |
| section | VARCHAR(100) | YES | — | Logical group/namespace. |  |
| description | TEXT | YES | — | Human-readable description. |  |
| is_protected | BOOLEAN | NO | FALSE | Marks sensitive values for redaction in UIs. |  |
| updated_at | TIMESTAMPTZ(6) | NO | CURRENT_TIMESTAMP(6) | Last update timestamp (UTC). |  |
| version | INTEGER | NO | 0 |  |  |
| updated_by | BIGINT | YES | — | User who changed the setting (FK users.id). |  |