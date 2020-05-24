PRAGMA foreign_keys=ON;

-- Para desistir tem que participar

CREATE TRIGGER checkParticipation
BEFORE INSERT ON IndividualWithdrawal
WHEN NOT EXISTS (
    SELECT * 
    FROM Participation 
    WHERE DateTime = New.DateTime AND Place = new.Place
)
BEGIN
    SELECT RAISE(IGNORE);
END;
