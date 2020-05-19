PRAGMA foreign_keys=ON;

--Atualiza pontuacoes e total ganho quando adicionadas novas Teamparticipation

CREATE TRIGGER updateTeamDerivatives
AFTER INSERT ON TeamParticipation 
Begin
Update Team set TotalPoints = TotalPoints + (select Points from Participation where DateTime = New.DateTime AND Place = New.Place) where TeamID = New.TeamID;
Update Team  set AmountGain = AmountGain + IFNULL((select IFNULL(Value, 0) Value from Class, Prize where class.DateTime = new.DateTime AND Prize.ClassID = New.DateTime AND Prize.Place = New.Place), 0) where TeamID = New.TeamID;
End;