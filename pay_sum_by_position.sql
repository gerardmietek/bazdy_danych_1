SELECT SUM(kwota) AS suma_wynagrodzen
FROM ksiegowosc.pensje
GROUP BY stanowisko;