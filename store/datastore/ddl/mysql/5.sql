-- +migrate Up

ALTER TABLE builds ADD COLUMN build_signed   BOOLEAN;
ALTER TABLE builds ADD COLUMN build_verified BOOLEAN;

UPDATE builds SET build_signed   = false;
UPDATE builds SET build_verified = false;

-- +migrate Down

ALTER TABLE builds DROP COLUMN build_signed;
ALTER TABLE builds DROP COLUMN build_verified;
