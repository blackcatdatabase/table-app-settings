<?php
declare(strict_types=1);

namespace BlackCat\Database\Packages\AppSettings;

final class Definitions {
    // --- základní metadata ---
    public static function table(): string { return 'app_settings'; }
    public static function contractView(): string { return 'v_app_settings_contract'; }
    /** @return string[] */
    public static function columns(): array { return [ 'setting_key', 'setting_value', 'type', 'section', 'description', 'is_protected', 'updated_at', 'updated_by' ]; }
    public static function pk(): string { return 'setting_key'; }

    // --- volitelná metadata (mohou být prázdná) ---
    public static function softDeleteColumn(): ?string {
        $c = ''; return $c !== '' ? $c : null;
    }
    public static function updatedAtColumn(): ?string {
        $c = 'updated_at'; return $c !== '' ? $c : null;
    }
    public static function versionColumn(): ?string {
        $c = ''; return $c !== '' ? $c : null; // pro optimistic locking
    }
    /** např. "created_at DESC, id DESC" */
    public static function defaultOrder(): ?string {
        $c = 'setting_key DESC'; return $c !== '' ? $c : null;
    }
    /** @return array<int,array<int,string>> seznam unikátních klíčů (sloupcových kombinací) */
    public static function uniqueKeys(): array { return []; }
    /** @return string[] JSON sloupce kvůli castům/operacím */
    public static function jsonColumns(): array { return []; }

    // --- pomocníci ---
    public static function hasColumn(string $col): bool {
        static $set = null;
        if ($set === null) { $set = array_fill_keys(self::columns(), true); }
        return isset($set[$col]);
    }
}
