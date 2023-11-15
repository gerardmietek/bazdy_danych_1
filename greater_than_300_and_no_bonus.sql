--ze wzgledu na specyfike recordow wybieram powyzej 3000 a nie 1000
SELECT id_pracownika
FROM ksiegowosc.pracownicy
INNER JOIN ksiegowosc.wynagrodzenia
USING(id_pracownika)
INNER JOIN ksiegowosc.pensje
USING(id_pensji)
WHERE CAST(pensje.kwota AS numeric) > 3000.00 AND wynagrodzenia.id_premii IS NULL;