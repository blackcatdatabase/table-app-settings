-- Auto-generated from schema-map-mysql.psd1 (map@mtime:2025-11-27T15:13:14Z)
-- engine: mysql
-- table:  app_settings

ALTER TABLE app_settings ADD CONSTRAINT fk_app_settings_user FOREIGN KEY (updated_by) REFERENCES users(id) ON DELETE SET NULL;
