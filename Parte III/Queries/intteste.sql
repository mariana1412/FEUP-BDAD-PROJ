

-- Qual o melhor cavaleiro (individualmente) em cada etapa? 
SELECT City, RName, max(Points)
FROM(
SELECT City, RiderID, Points
FROM (
    IndividualParticipation 
    Join Class Using(DateTime)
    Join Participation Using(DateTime, Place))
Where IndividualParticipation.Place = 1) AS BestRiders, Rider
Where BestRiders.RiderID = Rider.RiderID
GROUP BY City;


-- Quais os pares de cavaleiros que participaram na mesma prova?


WITH IParticipation AS (
    SELECT RiderID, RName, DateTime
    FROM Rider JOIN IndividualParticipation using(RiderID)
), TParticipation AS(
    SELECT RiderID, Rname, DateTime
    From Rider Join TeamParticipation using(TeamID)
)


SELECT RiderPair, sum(NumOfTimes) as Frequency
FROM (
SELECT IP1.RName || ' - ' || IP2.RName as RiderPair, Count(*) AS NumOfTimes
FROM IParticipation as IP1
    JOIN IParticipation as IP2
    ON IP1.RiderID < IP2.RiderID 
WHERE IP1.DateTime = IP2.DateTime
GROUP BY RiderPair

UNION

SELECT TP1.RName || ' - ' || TP2.RName as RiderPair, Count(*) AS NumOfTimes
FROM TParticipation as TP1
    JOIN TParticipation as TP2
    On TP1.RiderID < TP2.RiderID
WHERE TP1.DateTime = TP2.DateTime
GROUP BY RiderPair
)
GROUP BY RiderPair;


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



--  Qual a percentagem de desistência por prova individual?

SELECT DateTime AS Class,  (IFNULL(Withdrawal, 0)*100/Total) AS WithdrawalPercent
FROM (
    (SELECT DateTime, COUNT(*) AS Total
FROM IndividualParticipation
GROUP BY DateTime)

LEFT OUTER JOIN

(SELECT DateTime, COUNT(*) AS Withdrawal
FROM IndividualWithdrawal
GROUP BY DateTime)

using(DateTime)); 



-- Quais os cavaleiros que participaram numa prova de equipas mas nunca participaram numa prova individual?

SELECT DISTINCT RName
FROM (Rider NATURAL JOIN TeamParticipation) T
WHERE T.RiderID NOT IN (SELECT Rider.RiderID FROM Rider, IndividualParticipation 
    WHERE Rider.RiderID = IndividualParticipation.RiderID);


--Em que provas o cavaleiro 1 ficou classificado?-- o ID do cavaleiro pode ser alterado

SELECT DateTime, Place 
FROM IndividualParticipation
WHERE RiderID = 1 AND Place <= 3

UNION

SELECT DateTime, Place
FROM TeamParticipation P, Rider R
WHERE P.TeamID = R.TeamID AND RiderID = 1 AND Place <= 3;


-- Qual o melhor cavaleiro de cada clube?


SELECT Stable.CName AS ClubName, 
(SELECT RName
FROM Rider R1
WHERE NOT EXISTS (SELECT * FROM Rider R2 
    WHERE R1.TotalPoints < R2.TotalPoints  AND R1.StableID = R2.StableID) AND Stable.STID = R1.StableID) AS RiderName
FROM Stable
WHERE ClubName NOT NULL AND RiderName NOT NULL;


-- Qual foi o país com maior número de classificações?

SELECT Country, COUNT(RName) AS NumOfWinners
FROM (

SELECT RName, Country
FROM Rider, IndividualParticipation
WHERE Rider.RiderID = IndividualParticipation.RiderID AND Place <= 3

UNION ALL

SELECT RName, Country
FROM Rider, TeamParticipation
WHERE Rider.TeamID = TeamParticipation.TeamID AND Place <= 3

) C
GROUP BY Country
ORDER BY COUNT(RName) DESC;



-- Qual o top 3 de treinadores, isto é, treinadores com maior taxa de sucesso?--ver com dinheiro

SELECT Name, Country, AVG(TotalPoints) as AveragePoints
FROM(
SELECT TotalPoints, Coach.CName AS Name, Coach.Country AS Country, Coach.CID as ID
FROM Rider, Coach
WHERE Rider.CoachID = Coach.CID) C
GROUP BY ID
ORDER BY AveragePoints DESC
LIMIT 3;



-- Qual o número de participações por raça( se calhar qual as melhores raças em competição-- fazer as que realmente ganharam)?

SELECT Breed, NumIndividual, NumTeam, (NumIndividual + NumTeam) AS Total
FROM (
(SELECT Breed, COUNT(*) AS NumIndividual
FROM Horse, IndividualParticipation
WHERE Horse.HorseID = IndividualParticipation.HorseID
GROUP BY Breed
HAVING COUNT(*) > 0)

LEFT OUTER JOIN

(SELECT Breed, COUNT(*) AS NumTeam
FROM Horse, HorseParticipation
WHERE Horse.HorseID = HorseParticipation.HorseID
GROUP BY Breed
HAVING COUNT(*) > 0)

using(Breed));
