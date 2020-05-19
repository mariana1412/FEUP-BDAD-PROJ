.mode columns
.headers on

SELECT RiderID, AmountGain, TotalPoints FROM Rider WHERE RiderID = 3;

DELETE FROM IndividualParticipation
WHERE RiderID = 3;

SELECT RiderID, AmountGain, TotalPoints FROM Rider WHERE RiderID = 3;

