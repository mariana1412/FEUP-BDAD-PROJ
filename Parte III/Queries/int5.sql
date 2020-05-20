.mode       columns
.headers    on
.nullvalue  NULL

-- Quais os cavaleiros que participaram numa prova de equipas mas nunca participaram numa prova individual?

SELECT DISTINCT RName
FROM (Rider NATURAL JOIN TeamParticipation) T
WHERE T.RiderID NOT IN (
    SELECT Rider.RiderID 
    FROM Rider, IndividualParticipation 
    WHERE Rider.RiderID = IndividualParticipation.RiderID
);