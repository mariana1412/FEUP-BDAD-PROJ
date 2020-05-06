.mode       columns
.headers    on
.nullvalue  NULL

-- Qual o número de participações por raça( se calhar qual as melhores raças em competição-- fazer as que realemente ganharam)

SELECT Breed, NumIndividual, NumTeam, (NumIndividual + NumTeam) AS Total
FROM (
(SELECT Breed, COUNT(*) AS NumIndividual
FROM Horse, IndividualParticipation
WHERE Horse.HorseID = IndividualParticipation.HorseID
GROUP BY Breed
HAVING COUNT(*) > 0)

LEFT OUTER JOIN

(SELECT Breed, COUNT(*) AS NumTeam
FROM Horse, HorseParticipation
WHERE Horse.HorseID = HorseParticipation.HorseID
GROUP BY Breed
HAVING COUNT(*) > 0)

using(Breed));
