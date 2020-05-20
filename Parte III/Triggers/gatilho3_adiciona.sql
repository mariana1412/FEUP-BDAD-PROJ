PRAGMA foreign_keys=ON;

--On update

-- COmo vejo que  tipo de generalizaçao foi feita?-- ou seja, isto é uma alteraçao na participaçao que nao tem acesso ao rider/team que é o que 
-- precisa de mudar
--Individual DIsq

CREATE TRIGGER updateParticipationToDisqualification
AFTER Update Of Points on Participation
WHEN (New.Points = 0 AND Old.Points>0)
BEGIN
    Update Participation  
    set Place = (select count(*) FROM Participation WHERE DateTime = New.DateTime) + 1
    Where DateTime = New.DateTime AND Place = New.Place;
END
BEGIN 
    Update Participation
    set Place = (select Place FROM Participation WHERE DateTime = New.DateTime)-1
    Where Place <  Old.Place;

    Update Participation  
    set Place = (select count(*) FROM Participation WHERE DateTime = New.DateTime)
    Where DateTime = New.DateTime AND Place = New.Place;
    --mudar de tabelas
END;    