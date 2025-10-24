-- Auto-generated from schema-views-mysql.psd1 (map@mtime:2025-10-24T09:19:46Z)
-- engine: mysql
-- table:  app_settings
-- Contract view for [app_settings]
-- Masks setting_value for secret entries.
CREATE OR REPLACE VIEW vw_app_settings AS
SELECT
  setting_key,
  CASE WHEN type = 'secret' THEN NULL ELSE setting_value END AS setting_value,
  type,
  section,
  description,
  is_protected,
  updated_at,
  updated_by
FROM app_settings;
