.mode       columns
.headers    on
.nullvalue  NULL
.width 40 20 20

-- Quais os cavaleiros com os 3 ganhos mais altos, tendo em conta o total de pontos e dinheiro adquiridos?

WITH RiderGains AS (
    SELECT RName, TotalPoints, AmountGain, (TotalPoints+AmountGain) as Gains    
    FROM Rider R1)

SELECT RName, TotalPoints, AmountGain
FROM RiderGains R1
WHERE NOT EXISTS (
    SELECT * 
    FROM RiderGains R2 
    WHERE R1.Gains < R2.Gains
)

UNION

SELECT RName, TotalPoints, AmountGain
FROM RiderGains R1
Where (
    SELECT count(*) 
    FROM    
        (SELECT count(*), Gains
        FROM RiderGains R2 
        GROUP BY Gains) AS GroupedPoints
    WHERE R1.Gains < GroupedPoints.Gains) = 1

UNION

SELECT RName, TotalPoints, AmountGain
FROM RiderGains R1
Where (
    SELECT count(*) 
    FROM    
        (SELECT count(*), Gains
        FROM RiderGains R2 
        GROUP BY Gains) AS GroupedPoints
    WHERE R1.Gains < GroupedPoints.Gains ) = 2
    
ORDER BY TotalPoints DESC;
