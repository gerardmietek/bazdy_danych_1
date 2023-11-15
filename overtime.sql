--u mnie standardowy czas pracy to 7 godzin, inaczej nic sie nie wyswietli
SELECT pracownicy.imie, pracownicy.nazwisko, (godziny.liczba_godzin - 7 ) AS nadgodziny
FROM ksiegowosc.pracownicy
INNER JOIN ksiegowosc.godziny
USING(id_pracownika)
WHERE godziny.liczba_godzin > 7;