SELECT pracownicy.id_pracownika, imie, nazwisko, pensje.kwota AS pensja
FROM ksiegowosc.pracownicy
INNER JOIN ksiegowosc.wynagrodzenia
USING(id_pracownika)
INNER JOIN ksiegowosc.pensje
USING(id_pensji)
ORDER BY pensje.kwota;