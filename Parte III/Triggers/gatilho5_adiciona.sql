PRAGMA foreign_keys=ON;

--Atualiza pontuacoes e total ganho quando removidas TeamParticipations

CREATE TRIGGER removeTeamDerivatives
After DELETE ON TeamParticipation
BEGIN
    Update Team set TotalPoints = TotalPoints - (select Points from Participation where DateTime = Old.DateTime AND Place = Old.Place) where TeamID = Old.TeamID;
    Update Team set AmountGain = AmountGain - IFNULL((select IFNULL(Value, 0) Value from Class, Prize where class.DateTime = Old.DateTime AND Prize.ClassID = Old.DateTime AND Prize.Place = Old.Place), 0) where TeamID = Old.TeamID;
END;    