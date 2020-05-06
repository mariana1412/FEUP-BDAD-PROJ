.mode       columns
.headers    on
.nullvalue  NULL


/*--cavaleiros que não estão em equipas (não sei se isto é possivel) 
SELECT Rname, NoFederated 
FROM Rider 
WHERE TeamID IS NULL;*/

--Quais as pessoas de “UK”?

SELECT RName AS Name
FROM Rider
WHERE Country = "UK"

UNION

SELECT CName AS Name
FROM Coach
WHERE Country = "UK"

