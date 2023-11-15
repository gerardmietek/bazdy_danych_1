
INSERT INTO ksiegowosc.pracownicy (imie, nazwisko, adres, telefon) 
VALUES 
('Jan', 'Kowalski', 'ul. Testowa 1', '123456789'),
('Anna', 'Nowak', 'ul. Inna 2', '987654321'),
('Piotr', 'Zawisza', 'ul. Przykładowa 3', '555555555'),
('Magda', 'Mazur', 'ul. Prosta 4', '666666666'),
('Tomasz', 'Nowicki', 'ul. Trudna 5', '777777777'),
('Ewa', 'Wiśniewska', 'ul. Skomplikowana 6', '888888888'),
('Krzysztof', 'Kwiatkowski', 'ul. Łatwa 7', '999999999'),
('Agnieszka', 'Majewska', 'ul. Zwykła 8', '111111111'),
('Adam', 'Wojcik', 'ul. Szybka 9', '222222222'),
('Karolina', 'Kaczmarek', 'ul. Wolna 10', '333333333');


INSERT INTO ksiegowosc.godziny (data, liczba_godzin, id_pracownika) 
VALUES 
('2023-11-01', 8, 1),
('2023-11-02', 7, 2),
('2023-11-03', 6, 3),
('2023-11-04', 9, 4),
('2023-11-05', 8, 5),
('2023-11-06', 7, 6),
('2023-11-07', 8, 7),
('2023-11-08', 9, 8),
('2023-11-09', 6, 9),
('2023-11-10', 7, 10);


INSERT INTO ksiegowosc.pensje (stanowisko, kwota) 
VALUES 
('Kierownik', 6000.00),
('Programista', 4000.00),
('Księgowy', 3500.00),
('Asystent', 2500.00),
('Inżynier', 4500.00),
('Sekretarka', 2000.00),
('Analityk', 3800.00),
('Tester', 3000.00),
('Administrator', 4200.00),
('Projektant', 4200.00);


INSERT INTO ksiegowosc.premie (rodzaj, kwota) 
VALUES 
('Premia kwartalna', 1000.00),
('Premia roczna', 2000.00),
('Premia świąteczna', 500.00),
('Premia za wyniki', 800.00),
('Premia uznaniowa', 1200.00),
('Premia specjalna', 1500.00),
('Premia motywacyjna', 900.00),
('Premia za staż', 700.00),
('Premia za nadgodziny', 600.00),
('Premia za wysiłek', 1100.00);


INSERT INTO ksiegowosc.wynagrodzenia (data, id_pracownika, id_godziny, id_pensji, id_premii) 
VALUES 
('2023-11-01', 1, 1, 1, 1),
('2023-11-02', 2, 2, 2, 2),
('2023-11-03', 3, 3, 3, 3),
('2023-11-04', 4, 4, 4, 4),
('2023-11-05', 5, 5, 5, 5),
('2023-11-06', 6, 6, 6, 6),
('2023-11-07', 7, 7, 7, 7),
('2023-11-08', 8, 8, 8, 8),
('2023-11-09', 9, 9, 9, 9),
('2023-11-10', 10, 10, 10, 10);