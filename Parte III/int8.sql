.mode       columns
.headers    on
.nullvalue  NULL

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