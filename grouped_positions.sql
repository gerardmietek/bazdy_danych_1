SELECT p.stanowisko, COUNT(*) AS ilosc_osob_na_stanowisku
FROM ksiegowosc.pensje AS p
INNER JOIN ksiegowosc.wynagrodzenia
USING(id_pensji)
GROUP BY p.stanowisko