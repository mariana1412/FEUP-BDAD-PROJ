PRAGMA foreign_keys=ON;

-- Atualiza pontuacoes e total ganho quando adicionadas novas participacoes individuais

CREATE TRIGGER updateRiderDerivatives
AFTER INSERT ON IndividualParticipation 
Begin
    Update Rider 
    set TotalPoints = TotalPoints + (select Points from Participation where DateTime = New.DateTime AND Place = New.Place)
    where RiderID = New.RiderID;

    Update Rider 
    set AmountGain = AmountGain + IFNULL((select  Value from Class, Prize where class.DateTime = new.DateTime AND Prize.ClassID = New.DateTime AND Prize.Place = New.Place), 0) 
    where RiderID = New.RiderID;
End;
