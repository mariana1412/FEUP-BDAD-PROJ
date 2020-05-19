.mode       columns
.headers    on
.nullvalue  NULL
.width 10 30 10

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



