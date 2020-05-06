.mode       columns
.headers    on
.nullvalue  NULL


--Em que estábulos treinam cavaleiros com pontuação superior 35?

SELECT DISTINCT Stable.STID AS StableID, Stable.CName AS ClubName
FROM Stable, Rider
WHERE Rider.StableID=Stable.STID 
HAVING TotalPoints > 35;
