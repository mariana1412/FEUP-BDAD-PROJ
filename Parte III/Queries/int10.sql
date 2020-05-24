.mode       columns
.headers    on
.nullvalue  NULL

-- Qual o número de participações por raça?

SELECT Breed, NumIndividual, NumTeam, (NumIndividual + NumTeam) AS Total
FROM (
    (SELECT Breed, COUNT(*) AS NumIndividual
    FROM Horse, IndividualParticipation
    WHERE Horse.HorseID = IndividualParticipation.HorseID
    GROUP BY Breed
    HAVING NumIndividual > 0)

    LEFT OUTER JOIN

    (SELECT Breed, COUNT(*) AS NumTeam
    FROM Horse, HorseParticipation
    WHERE Horse.HorseID = HorseParticipation.HorseID
    GROUP BY Breed
    HAVING NumTeam > 0)

    using(Breed)
);



