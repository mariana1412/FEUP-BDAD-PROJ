.mode       columns
.headers    on
.nullvalue  NULL

--Qual o nº de cavaleiros em competição por país? 

SELECT COUNT(Country) AS NumberOfRiders,Country
FROM Rider
GROUP BY  Country
ORDER BY(NumberOfRiders) DESC;
