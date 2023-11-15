SELECT pensje.stanowisko, COUNT(wynagrodzenia.id_premii)
FROM ksiegowosc.pensje
INNER JOIN ksiegowosc.wynagrodzenia
USING(id_pensji)
GROUP BY pensje.stanowisko;