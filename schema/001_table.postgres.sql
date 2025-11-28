-- Auto-generated from schema-map-postgres.psd1 (map@mtime:2025-11-21T00:25:46Z)
-- engine: postgres
-- table:  app_settings

CREATE TABLE IF NOT EXISTS app_settings (
  setting_key VARCHAR(100) PRIMARY KEY,
  setting_value TEXT NULL,
  "type" TEXT NOT NULL,
  section VARCHAR(100) NULL,
  description TEXT NULL,
  is_protected BOOLEAN NOT NULL DEFAULT FALSE,
  updated_at TIMESTAMPTZ(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  version INTEGER NOT NULL DEFAULT 0,
  CONSTRAINT chk_app_settings_version CHECK (version >= 0),
  updated_by BIGINT NULL,
  CONSTRAINT chk_app_settings_type CHECK ("type" IN ('string','int','bool','json','secret'))
);
