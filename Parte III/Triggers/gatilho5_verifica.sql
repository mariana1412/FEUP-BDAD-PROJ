.mode columns
.headers on

DELETE FROM TeamParticipation
WHERE TeamID = 1;

SELECT TeamID, AmountGain, TotalPoints FROM TeamParticipation WHERE TeamID = 1;