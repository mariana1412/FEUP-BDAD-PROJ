.mode columns
.headers on

Select * from Participation where DateTime = strftime('%Y-%m-%d %H:%M', '2020-03-05 11:00');
Select * from IndividualParticipation where DateTime = strftime('%Y-%m-%d %H:%M', '2020-03-05 11:00');

Update Participation set Points = 0.0 WHERE DateTime = strftime('%Y-%m-%d %H:%M', '2020-03-05 11:00');

Select * from Participation where DateTime = strftime('%Y-%m-%d %H:%M', '2020-03-05 11:00');
Select * from IndividualParticipation where DateTime = strftime('%Y-%m-%d %H:%M', '2020-03-05 11:00');
