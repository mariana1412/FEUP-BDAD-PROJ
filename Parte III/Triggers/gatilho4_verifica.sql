.mode columns 
.headers on

SELECT TeamID, AmountGain, TotalPoints FROM Team WHERE TeamID = 2;

INSERT INTO Participation VALUES(strftime('%Y-%m-%d %H:%M', '2020-05-16 17:00'),4,20,73.71);
INSERT INTO TeamParticipation VALUES(strftime('%Y-%m-%d %H:%M', '2020-05-16 17:00'), 4, 2);

SELECT TeamID, AmountGain, TotalPoints FROM Team WHERE TeamID = 2;