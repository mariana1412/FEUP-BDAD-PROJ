PRAGMA foreign_keys=ON;

--On update

-- COmo vejo que  tipo de generalizaçao foi feita?-- ou seja, isto é uma alteraçao na participaçao que nao tem acesso ao rider/team que é o que 
-- precisa de mudar

CREATE TRIGGER updateParticipationDerivatives;
AFTER Update Of Place, Points on Participation
BEGIN
    Update Rider set TotalPoints = TotalPoints - (select Points from Participation where DateTime = Old.DateTime AND Place = Old.Place) + (select Points from Participation where DateTime = New.DateTime AND Place = New.Place) ;
    Update Rider set AmountGain = 
END;    