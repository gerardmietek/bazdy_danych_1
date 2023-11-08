ALTER TABLE "Rozliczenia".pensje
RENAME COLUMN kwota TO kwota_brutto;

ALTER TABLE "Rozliczenia".pensje
ADD COLUMN kwota_netto money;

UPDATE "Rozliczenia".pensje
SET kwota_netto = kwota_brutto * 0.77;