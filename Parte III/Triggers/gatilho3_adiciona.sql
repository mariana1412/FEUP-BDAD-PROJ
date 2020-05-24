PRAGMA foreign_keys=ON;


-- Não é possível inserir uma participaçao de uma equipa que já está a participar naquela prova

CREATE TRIGGER InsertTeamParticipation
BEFORE INSERT ON TeamParticipation 
WHEN EXISTS (Select * 
            FROM TeamParticipation 
            WHERE TeamID = New.TeamID AND DateTime = New.DateTime)
BEGIN
    SELECT RAISE(ABORT, "Can't participate twice in the same class");
END;    


