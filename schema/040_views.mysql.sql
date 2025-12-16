-- Auto-generated from schema-views-mysql.yaml (map@sha1:FFA9A9D6FA9EE079B0DAEBB6FEE023C138E8FFA1)
-- engine: mysql
-- table:  app_settings

-- Contract view for [app_settings]
-- Masks secrets and protected values; adds has_value flag.
CREATE OR REPLACE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW vw_app_settings AS
SELECT
  setting_key,
  CASE WHEN `type` = 'secret' OR is_protected = 1 THEN NULL ELSE setting_value END AS setting_value,
  CASE WHEN app_settings.setting_value IS NOT NULL THEN 1 ELSE 0 END AS has_value,
  `type`,
  section,
  description,
  is_protected,
  updated_at,
  version,
  updated_by
FROM app_settings;
