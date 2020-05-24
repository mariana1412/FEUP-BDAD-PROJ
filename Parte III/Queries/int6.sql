.mode       columns
.headers    on
.nullvalue  NULL

-- Quais os cavaleiros que participaram em todas as etapas?

SELECT T.RiderID, T.RName
FROM (
    SELECT RiderID, RName , Count(*) as NumCities
    FROM(
        SELECT DISTINCT RiderID, RName, City
        FROM Rider 
            JOIN IndividualParticipation USING(RiderID)
            JOIN Class USING(DateTime)
        UNION
        SELECT DISTINCT RiderID, RName,City
        FROM Rider 
            JOIN TeamParticipation USING(TeamID) 
            JOIN Class USING(DateTime)
    )
    GROUP BY(RiderID)
) AS T
WHERE T.NumCities = (SELECT count(*) FROM EVENT);

