SELECT pracownicy.imie, pracownicy.nazwisko
FROM ksiegowosc.pracownicy
INNER JOIN ksiegowosc.wynagrodzenia
USING(id_pracownika)
INNER JOIN ksiegowosc.pensje
USING(id_pensji)
where CAST(pensje.kwota AS numeric) > 1500 AND CAST(pensje.kwota AS numeric) < 3000;