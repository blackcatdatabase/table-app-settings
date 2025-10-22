-- Auto-generated from schema-map.psd1 (map@6cefe8e)
-- table: app_settings
ALTER TABLE app_settings ADD CONSTRAINT fk_app_settings_user FOREIGN KEY (updated_by) REFERENCES users(id) ON DELETE SET NULL;
