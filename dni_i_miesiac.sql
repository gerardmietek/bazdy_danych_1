SELECT
    data,
	EXTRACT( DOW FROM data) AS dzien_tygodnia,
	DATE_PART('month', data) AS miesiac
FROM
    "Rozliczenia".godziny;