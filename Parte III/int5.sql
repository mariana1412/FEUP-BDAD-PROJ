.mode       columns
.headers    on
.nullvalue  NULL

--organizar países por nº de cavaleiros na competição

SELECT COUNT(Country) AS NumberOfRiders,Country
FROM Rider
GROUP BY  Country
ORDER BY(NumberOfRiders) DESC;
