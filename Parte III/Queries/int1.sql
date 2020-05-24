.mode       columns
.headers    on
.nullvalue  NULL
.width 10 30 12

-- Qual o melhor cavaleiro em cada etapa, competindo individualmente? 
SELECT City, RName, max(Points)
FROM (
    SELECT City, RiderID, Points
    FROM (
        IndividualParticipation 
        JOIN Class USING(DateTime)
        JOIN Participation USING(DateTime, Place)
    )
    WHERE IndividualParticipation.Place = 1) AS BestRiders, Rider
WHERE BestRiders.RiderID = Rider.RiderID
GROUP BY City;



