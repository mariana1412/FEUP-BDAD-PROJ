.mode       columns
.headers    on
.nullvalue  NULL

-- Qual é o top 3 de cavaleiros em competição (ordenado por pontuação/dinheiro)?
SELECT RName
FROM Rider R1
--WHERE not exists (SELECT * FROM Rider R2 WHERE R1.TotalPoints < R2.TotalPoints)
ORDER BY TotalPoints DESC, AmountGain DESC
LIMIT 3;

