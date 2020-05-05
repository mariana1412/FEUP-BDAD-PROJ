.mode       columns
.headers    on
.nullvalue  NULL

--obter todas as pessoas da base de dados de uma certa nacionalidade

SELECT RName AS Name
FROM Rider
WHERE Country = "UK"

UNION

SELECT CName AS Name
FROM Coach
WHERE Country = "UK"