CREATE TABLE IF NOT EXISTS ksiegowosc.pracownicy 
(
	id_pracownika SERIAL NOT NULL,
	imie varchar(30),
	nazwisko varchar(30) NOT NULL,
	adres varchar(50) NOT NULL,
	telefon varchar(9),
	PRIMARY KEY(id_pracownika)
);

CREATE TABLE IF NOT EXISTS ksiegowosc.godziny
(
	id_godziny SERIAL NOT NULL,
	data date NOT NULL,
	liczba_godzin int,
	id_pracownika int NOT NULL,
	PRIMARY KEY(id_godziny),
	CONSTRAINT FK_Pracownik_Godziny FOREIGN KEY (id_pracownika)
	REFERENCES ksiegowosc.pracownicy(id_pracownika)
);

CREATE TABLE IF NOT EXISTS ksiegowosc.pensje
(
	id_pensji SERIAL NOT NULL,
	stanowisko varchar(40) NOT NULL,
	kwota money NOT NULL,
	PRIMARY KEY(id_pensji)
);

CREATE TABLE IF NOT EXISTS ksiegowosc.premie
(
	id_premii SERIAL NOT NULL,
	rodzaj varchar(40) NOT NULL,
	kwota money,
	PRIMARY KEY(id_premii)
);

CREATE TABLE IF NOT EXISTS ksiegowosc.wynagrodzenia
(
	id_wynagrodzenia SERIAL NOT NULL,
	data date NOT NULL,
	id_pracownika int NOT NULL,
	id_godziny int,
	id_pensji int,
	id_premii int,
	PRIMARY KEY(id_wynagrodzenia),
	CONSTRAINT FK_Pracownik_Wynagrodzenia FOREIGN KEY (id_pracownika)
	REFERENCES ksiegowosc.pracownicy(id_pracownika),
    CONSTRAINT FK_Godziny_Wynagrodzenia FOREIGN KEY (id_godziny)
	REFERENCES ksiegowosc.godziny(id_godziny),
	CONSTRAINT FK_Pensja_Wynagrodzenia FOREIGN KEY (id_pensji)
	REFERENCES ksiegowosc.pensje(id_pensji),
	CONSTRAINT FK_Pracownik_Godziny FOREIGN KEY (id_premii)
	REFERENCES ksiegowosc.premie(id_premii)
);

