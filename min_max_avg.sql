--jako ze u mnie kazdy pracownik ma inne stanowisko, policze avg min max z wszystkich stanowisk
SELECT  MAX(kwota) AS max_pay, MIN(kwota) AS min_pay, AVG(CAST(kwota AS numeric)) AS avg_pay
FROM ksiegowosc.pensje
