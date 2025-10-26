-- Auto-generated from schema-views-mysql.psd1 (map@38d5403)
-- engine: mysql
-- table:  app_settings
-- Contract view for [app_settings]
-- Masks secrets and protected values; adds has_value flag.
CREATE OR REPLACE SQL SECURITY INVOKER VIEW vw_app_settings AS
SELECT
  setting_key,
  CASE WHEN type = 'secret' OR is_protected = 1 THEN NULL ELSE setting_value END AS setting_value,
  (setting_value IS NOT NULL) AS has_value,
  type,
  section,
  description,
  is_protected,
  updated_at,
  updated_by
FROM app_settings;
