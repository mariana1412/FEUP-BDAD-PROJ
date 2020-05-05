.mode       columns
.headers    on
.nullvalue  NULL

--Quem foi o melhor cavaleiro da epoca? 
-- top 3 dos cavaleiros em competição(ordenar por pontuação/dinheiro) *
SELECT RName
FROM Rider R1
--WHERE not exists (SELECT * FROM Rider R2 WHERE R1.TotalPoints < R2.TotalPoints)
ORDER BY TotalPoints DESC, AmountGain DESC
LIMIT 3;

