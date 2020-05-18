.mode       columns
.headers    on
.nullvalue  NULL

--Em que provas o cavaleiro 1 ficou classificado?-- o ID do cavaleiro pode ser alterado

SELECT DateTime, Place 
FROM IndividualParticipation
WHERE RiderID = 1 AND Place <= 3

UNION

SELECT DateTime, Place
FROM TeamParticipation P, Rider R
WHERE P.TeamID = R.TeamID AND RiderID = 1 AND Place <= 3;