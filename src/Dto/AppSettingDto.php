<?php
declare(strict_types=1);

namespace BlackCat\Database\Packages\AppSettings\Dto;

/**
 * Jednoduché, neměnné DTO s veřejnými readonly vlastnostmi.
 * - Žádná logika; pouze nosič dat.
 * - Silné typy drží kontrakt napříč vrstvami.
 */
final class AppSettingDto {
    public function __construct(
        public readonly ?string $settingKey,
        public readonly ?string $settingValue,
        public readonly string $type,
        public readonly ?string $section,
        public readonly ?string $description,
        public readonly bool $isProtected,
        public readonly \DateTimeImmutable $updatedAt,
        public readonly ?int $updatedBy
    ) {}

    /** Vhodné pro serializaci/logování (bez binárních/velkých blobů). */
    public function toArray(): array {
        // get_object_vars funguje dobře s public readonly vlastnostmi
        return get_object_vars($this);
    }
}
