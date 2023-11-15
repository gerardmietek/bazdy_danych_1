SELECT pracownicy.imie, pracownicy.nazwisko
FROM ksiegowosc.pracownicy
INNER JOIN ksiegowosc.wynagrodzenia
USING(id_pracownika)
WHERE wynagrodzenia.id_premii IS NULL
AND
pracownicy.id_pracownika IN
(SELECT pracownicy.id_pracownika
FROM ksiegowosc.pracownicy
INNER JOIN ksiegowosc.godziny
USING(id_pracownika)
WHERE godziny.liczba_godzin > 7);