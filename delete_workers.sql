DELETE FROM ksiegowosc.pracownicy
WHERE id_pracownika IN (
    SELECT id_pracownika
    FROM ksiegowosc.wynagrodzenia
    INNER JOIN ksiegowosc.pensje USING(id_pensji)
    WHERE CAST(pensje.kwota AS numeric) < 4500
);
