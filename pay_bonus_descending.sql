SELECT pracownicy.id_pracownika, imie, nazwisko, pensje.kwota AS pensja, premie.kwota AS premia
FROM ksiegowosc.pracownicy
INNER JOIN ksiegowosc.wynagrodzenia
USING(id_pracownika)
INNER JOIN ksiegowosc.pensje
USING(id_pensji)
INNER JOIN ksiegowosc.premie
USING(id_premii)
ORDER BY pensje.kwota, premie.kwota DESC;