.mode columns
.headers on

Select  RiderID, AmountGain, TotalPoints FROM Rider WHERE RiderID = 2;

INSERT INTO Participation VALUES(strftime('%Y-%m-%d %H:%M', '2020-03-05 11:00'),6,30,78.75);
INSERT INTO IndividualParticipation VALUES(strftime('%Y-%m-%d %H:%M', '2020-03-05 11:00'), 6, 2, 2);

Select  RiderID, AmountGain, TotalPoints FROM Rider WHERE RiderID = 2;