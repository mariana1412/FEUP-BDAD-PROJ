.mode       columns
.headers    on
.nullvalue  NULL

-- Qual o número de participações por raça( se calhar qual as melhores raças em competição-- fazer as que realmente ganharam)?

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

    using(Breed)
);
/*
SELECT Breed, avg(T.Points) AS AveragePoints
FROM (
    SELECT Breed, Points
    FROM Horse 
        JOIN IndividualParticipation USING(HorseID)
        JOIN Participation USING(DateTime, Place)

    UNION

    SELECT Breed, Points
    FROM Horse
        JOIN HorseParticipation USING(HorseID)
        JOIN Participation USING(DateTime, Place)
) AS T
GROUP BY Breed
ORDER BY AveragePoints DESC;
*/



