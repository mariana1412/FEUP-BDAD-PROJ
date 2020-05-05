.mode       columns
.headers    on
.nullvalue  NULL

--Em que provas o caveleiro X ficou classificado

SELECT DateTime, Place 
FROM IndividualParticipation
WHERE RiderID = 1 AND Place <= 3

UNION

SELECT DateTime, Place
FROM TeamParticipation, Rider
WHERE TeamParticipation.TeamID = Rider.TeamID AND RiderID = 1 AND Place <= 3;