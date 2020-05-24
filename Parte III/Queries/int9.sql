
.mode       columns
.headers    on
.nullvalue  NULL

-- Qual o top 3 de treinadores, isto é, treinadores com maior taxa de sucesso?

SELECT Name, Country, AVG(TotalPoints) as AveragePoints
FROM(
    SELECT TotalPoints, Coach.CName AS Name, Coach.Country AS Country, Coach.CID as ID
    FROM Rider, Coach
    WHERE Rider.CoachID = Coach.CID
) C
GROUP BY ID
ORDER BY AveragePoints DESC
LIMIT 3;