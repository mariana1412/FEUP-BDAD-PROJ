.mode       columns
.headers    on
.nullvalue  NULL

-- Ordenar os países por número de classificações

SELECT Country, COUNT(RiderID) AS NumOfWins
FROM (
    SELECT Rider.RiderID, Country
    FROM Rider, IndividualParticipation
    WHERE Rider.RiderID = IndividualParticipation.RiderID AND Place <= 3

    UNION ALL

    SELECT Rider.RiderID, Country
    FROM Rider, TeamParticipation
    WHERE Rider.TeamID = TeamParticipation.TeamID AND Place <= 3
) C
GROUP BY Country
ORDER BY NumOfWins DESC;