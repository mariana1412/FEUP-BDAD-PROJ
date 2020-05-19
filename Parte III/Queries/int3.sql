.mode       columns
.headers    on
.nullvalue  NULL

-- Quais os cavaleiros com as 3 ganhos mais altos ( junção do total de pontos com o dinheiro recebido)?

WITH RiderGains AS (
    SELECT RName, TotalPoints, AmountGain, (TotalPoints+AmountGain) as Gains
    FROM Rider R1)

SELECT RName, TotalPoints, AmountGain
FROM RiderGains R1
WHERE not exists (SELECT * FROM RiderGains R2 WHERE R1.Gains < R2.Gains)

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
        (SELECT count(*),Gains
        FROM RiderGains R2 
        GROUP BY Gains) AS GroupedPoints
    WHERE R1.Gains < GroupedPoints.Gains ) = 2
    
ORDER BY TotalPoints DESC;
