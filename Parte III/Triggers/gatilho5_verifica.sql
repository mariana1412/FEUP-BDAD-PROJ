.mode columns
.headers on

SELECT TeamID, AmountGain, TotalPoints FROM Team WHERE TeamID = 1;

DELETE FROM TeamParticipation
WHERE DateTime = strftime('%Y-%m-%d %H:%M', '2020-03-05 17:00') AND Place = 1;


SELECT TeamID, AmountGain, TotalPoints FROM Team WHERE TeamID = 1;