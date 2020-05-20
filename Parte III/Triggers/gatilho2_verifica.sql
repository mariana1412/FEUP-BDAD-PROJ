.mode columns
.headers on

SELECT * FROM Participation WHERE DateTime = strftime('%Y-%m-%d %H:%M', '2020-05-20 17:00');
SELECT  * FROM IndividualWithdrawal;


INSERT INTO IndividualWithdrawal VALUES(strftime('%Y-%m-%d %H:%M', '2020-05-20 17:00'),6,11);

SELECT * FROM IndividualWithdrawal;

/*
SELECT RiderID, AmountGain, TotalPoints FROM Rider WHERE RiderID = 3;

DELETE FROM IndividualParticipation
WHERE RiderID = 3;

SELECT RiderID, AmountGain, TotalPoints FROM Rider WHERE RiderID = 3;

*/