SELECT pracownicy.imie, pracownicy.nazwisko
FROM ksiegowosc.pracownicy
WHERE (nazwisko LIKE 'N%' 
OR nazwisko LIKE '%n%' 
OR nazwisko LIKE '%n')
AND imie LIKE '%a'