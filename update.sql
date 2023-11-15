--update do tabeli, zeby wyniki dla kwerend byly w miare sensowne
UPDATE ksiegowosc.wynagrodzenia
SET id_premii = NULL
WHERE id_pracownika IN (1,3,4,7);