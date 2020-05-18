PRAGMA foreign_keys=ON;

--Atualiza pontuacoes e total ganho quando adicionadas novas participacoes

CREATE TRIGGER updateRiderDerivatives
AFTER INSERT ON IndividualParticipation 
Begin
Update Rider set TotalPoints = TotalPoints + (select Points from Participation where DateTime = New.DateTime AND Place = New.Place);
Update Rider set AmountGain = AmountGain + (select IFNULL(Value, 0) Value from Class, Prize where class.DateTime = new.DateTime AND Prize.DateTime = New.DateTime AND Prize.Place = New.Place);
End;
