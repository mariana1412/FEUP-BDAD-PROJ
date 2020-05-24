.mode       columns
.headers    on
.nullvalue  NULL
.width 10 40

-- Quais os cavaleiros que participaram numa prova de equipas mas nunca participaram numa prova individual?

SELECT DISTINCT RiderID, RName
FROM (Rider NATURAL JOIN TeamParticipation) T
WHERE T.RiderID NOT IN (
    SELECT Rider.RiderID 
    FROM Rider, IndividualParticipation 
    WHERE Rider.RiderID = IndividualParticipation.RiderID
);