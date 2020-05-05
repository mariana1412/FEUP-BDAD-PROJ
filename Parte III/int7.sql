.mode       columns
.headers    on
.nullvalue  NULL


--estabulos onde treinam riders com pontuacao > 35
SELECT DISTINCT Stable.STID AS StableID, Stable.CName AS ClubName
FROM Stable, Rider
WHERE Rider.StableID=Stable.STID AND TotalPoints > 35;