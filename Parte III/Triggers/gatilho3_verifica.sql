.mode columns
.headers on


Select * from TeamParticipation where DateTime = strftime('%Y-%m-%d %H:%M', '2020-03-05 17:00');

INSERT INTO TeamParticipation VALUES(strftime('%Y-%m-%d %H:%M', '2020-03-05 17:00'),5,3); 


Select * from TeamParticipation where DateTime = strftime('%Y-%m-%d %H:%M', '2020-03-05 17:00');
