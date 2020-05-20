.mode       columns
.headers    on
.nullvalue  NULL
.width      40 40


-- Qual o melhor cavaleiro de cada clube?


SELECT Stable.CName AS ClubName, 
    (SELECT RName
    FROM Rider R1
    WHERE NOT EXISTS ( 
        SELECT * 
        FROM Rider R2 
        WHERE R1.TotalPoints < R2.TotalPoints  AND R1.StableID = R2.StableID) 
    AND Stable.STID = R1.StableID) AS RiderName
FROM Stable
WHERE ClubName NOT NULL AND RiderName NOT NULL;



