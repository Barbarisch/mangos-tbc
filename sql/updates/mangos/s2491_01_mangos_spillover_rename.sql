ALTER TABLE db_version CHANGE COLUMN required_s2490_01_mangos_spell_threat_mask required_s2491_01_mangos_spillover_rename bit;

-- PATCHED for MariaDB 10.3 (Ubuntu 20.04): RENAME COLUMN needs MariaDB >= 10.5.2.
-- CHANGE COLUMN is the pre-10.5 equivalent. Revert if MariaDB is upgraded.
ALTER TABLE `quest_template` CHANGE COLUMN `ReputationSpilloverMask` `RewFactionFlags` tinyint(3) unsigned NOT NULL DEFAULT 0;

