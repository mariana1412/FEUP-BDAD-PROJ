PRAGMA foreign_keys=ON;

--On update

-- COmo vejo que  tipo de generalizaçao foi feita?

CREATE TRIGGER updateParticipationDerivatives;
AFTER Update Of Place, Points on Participation
BEGIN
    Update Rider set TotalPoints = TotalPoints - (select Points from Participation where DateTime = Old.DateTime AND Place = Old.Place) + (select Points from Participation where DateTime = New.DateTime AND Place = New.Place) ;
    Update Rider set AmountGain = 
END;