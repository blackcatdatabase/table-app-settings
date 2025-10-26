-- Auto-generated from schema-views-postgres.psd1 (map@38d5403)
-- engine: postgres
-- table:  app_settings
-- Contract view for [app_settings]
-- Masks secrets and protected values; adds has_value flag.
CREATE OR REPLACE VIEW vw_app_settings AS
SELECT
  setting_key,
  CASE WHEN "type" = 'secret' OR is_protected THEN NULL ELSE setting_value END AS setting_value,
  (setting_value IS NOT NULL) AS has_value,
  "type",
  section,
  description,
  is_protected,
  updated_at,
  updated_by
FROM app_settings;
