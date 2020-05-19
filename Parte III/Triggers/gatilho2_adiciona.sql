PRAGMA foreign_keys=ON;

--Atualiza pontuacoes e total ganho quando removidas participacoes

CREATE TRIGGER removeRiderDerivatives
After DELETE ON IndividualParticipation
BEGIN
    Update Rider set TotalPoints = TotalPoints - (select Points from Participation where DateTime = Old.DateTime AND Place = Old.Place) where RiderID = Old.RiderID;
    Update Rider set AmountGain = AmountGain - IFNULL((select IFNULL(Value, 0) Value from Class, Prize where class.DateTime = Old.DateTime AND Prize.ClassID = Old.DateTime AND Prize.Place = Old.Place),0) where RiderID = Old.RiderID;
END;