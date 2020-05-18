.mode       columns
.headers    on
.nullvalue  NULL

-- Qual é o top 3 de cavaleiros em competição (ordenado por pontuação/dinheiro)?
SELECT RName
FROM Rider R1
--WHERE not exists (SELECT * FROM Rider R2 WHERE R1.TotalPoints < R2.TotalPoints)
ORDER BY TotalPoints DESC, AmountGain DESC
LIMIT 3;

/*--Quais os pares de cavalos que participaram juntos em provas de equipa?

SELECT P1.DateTime AS TeamClass, P1.HorseID AS Horse1, P2.HorseID AS Horse2
FROM HorseParticipation P1, HorseParticipation P2
WHERE P1.DateTime = P2.DateTime AND P1.Place = P2.Place AND P1.HorseID <> P2.HorseID;
*/
