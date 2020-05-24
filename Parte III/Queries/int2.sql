.mode       columns
.headers    on
.nullvalue  NULL
.width      50 10

-- Quais os pares de cavaleiros que participaram na mesma prova e a sua frequência?

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