PRAGMA foreign_keys = on;
/*Coach(CID, CName, Country, BirthDate)*/
insert into Coach values(1, 'Ines Silva', 'Portugal', strftime('%Y-%m-%d','1996-11-17'));
insert into Coach values(2, 'Yvonne Williams', 'USA', strftime('%Y-%m-%d', '1960-12-25'));
insert into Coach values(3, 'Gaye Nicholas', 'France', strftime('%Y-%m-%d', '1962-01-28'));
insert into Coach values(4, 'Elizabeth Winter', 'UK', strftime('%Y-%m-%d', '1965-05-26'));
insert into Coach values(5, 'Amanda Donaldson', 'UK', strftime('%Y-%m-%d', '1966-01-25'));
insert into Coach values(6, 'Jayne Patterson', 'Ireland', strftime('%Y-%m-%d', '1972-03-17'));
insert into Coach values(7, 'Jane Jedwab', 'Mexico', strftime('%Y-%m-%d', '1973-04-11'));
insert into Coach values(8, 'Laureen Wilson', 'Germany', strftime('%Y-%m-%d', '1978-07-22'));
insert into Coach values(9, 'Louise Abberley', 'France', strftime('%Y-%m-%d', '1983-04-01'));
insert into Coach values(10, 'Carly Adams', 'USA', strftime('%Y-%m-%d','1985-02-06'));

/*Groom(GID, GName, BirthDate)*/
insert into Groom values(1, 'Zackery Graham', strftime('%Y-%m-%d','1989-09-18'));
insert into Groom values(2, 'Bo Bush', strftime('%Y-%m-%d','1986-09-17'));
insert into Groom values(3, 'Aalia Pace', strftime('%Y-%m-%d','1976-06-15'));
insert into Groom values(4, 'Sanjeev Meza', strftime('%Y-%m-%d','1995-09-21'));
insert into Groom values(5, 'Izabela Meyers', strftime('%Y-%m-%d','1979-02-17'));
insert into Groom values(6, 'Taliah Davenport', strftime('%Y-%m-%d','1980-09-01'));
insert into Groom values(7, 'Nyla Grimes', strftime('%Y-%m-%d','1982-12-28'));
insert into Groom values(8, 'Ciaran Reilly', strftime('%Y-%m-%d','1987-04-12'));
insert into Groom values(9, 'Shuaib Bridges', strftime('%Y-%m-%d','1989-05-11'));
insert into Groom values(10, 'Kerys Mclean', strftime('%Y-%m-%d','1980-10-08'));
insert into Groom values(11, 'Laura Adams', strftime('%Y-%m-%d','1992-09-23'));

/*Sponsor(SID, Job, NIF)*/
INSERT INTO Sponsor VALUES(1, 'Art historian', 198467383);
INSERT INTO Sponsor VALUES(2, 'Heating engineer', 926483279);
INSERT INTO Sponsor VALUES(3, 'Electrician', 197835467);
INSERT INTO Sponsor VALUES(4, 'Genetic Counselor', 234967109);
INSERT INTO Sponsor VALUES(5, 'Professor', 268379089);
INSERT INTO Sponsor VALUES(6, 'Doctor', 752891287);
INSERT INTO Sponsor VALUES(7, 'Traffic Safety Administrator', 234987164);
INSERT INTO Sponsor VALUES(8, 'Gastroenterologist', 650192846);
INSERT INTO Sponsor VALUES(9, 'Industrial Safety and Health Specialist', 342754256);
INSERT INTO Sponsor VALUES(10, 'Stripper', 836896462);

/*Vet(VID, VName, PhoneNumber,AppointementCost)*/
INSERT INTO Vet VALUES(1, 'Fannie Shah', 912345645, 50.0);
INSERT INTO Vet VALUES(2, 'Bethaney Peters', 923867465, 50.0);
INSERT INTO Vet VALUES(3, 'Keavy Joyce', 919576142, 45.0);
INSERT INTO Vet VALUES(4, 'Dhruv Mayer', 962873923, 50.0);
INSERT INTO Vet VALUES(5, 'Uzma Huang', 917234123, 49.0);
INSERT INTO Vet VALUES(6, 'Zahrah Bouvet', 919872364, 50.0);
INSERT INTO Vet VALUES(7, 'Curtis Devine', 916354245, 52.0);
INSERT INTO Vet VALUES(8, 'Timur Guevara', 967342534, 50.0);
INSERT INTO Vet VALUES(9, 'Derren Manning', 914373453, 50.0);
INSERT INTO Vet VALUES(10, 'Marcos Monge', 964473453, 47.0);
INSERT INTO Vet VALUES(11, 'Pamela Gray', 925573153, 54.0);
INSERT INTO Vet VALUES(12, 'Rebecca Lane',929874669, 48.0);
INSERT INTO Vet VALUES(13, 'Ana Silva',918566585, 47.0);
INSERT INTO Vet VALUES(14, 'Mark Wilde',924498547, 49.0);
INSERT INTO Vet VALUES(15, 'Ivo Lopez',929855642, 55.0);
INSERT INTO Vet VALUES(16, 'Ivanka Lorde',968552102, 51.0);
INSERT INTO Vet VALUES(17, 'Johny Barros',968629743, 40.0);
INSERT INTO Vet VALUES(18, 'Anthony Clark',926060988, 52.0);
INSERT INTO Vet VALUES(19, 'Taylor Gomez',964853696, 50.0);
INSERT INTO Vet VALUES(20, 'Zack Wesley',913509050, 46.0);
INSERT INTO Vet VALUES(21, 'Shane Lime',962235398, 48.0);
INSERT INTO Vet VALUES(22, 'Patrick Sanders',913609057, 45.0);

/*Club(CName, CreationYear)*/
INSERT INTO Club VALUES('Border Counties', 1990);
INSERT INTO Club VALUES('Portmore Equestrian Centre', 1986);
INSERT INTO Club VALUES('Laurel View', 1955);
INSERT INTO Club VALUES('Mossvale', 1998);
INSERT INTO Club VALUES('Burnfield Foot', 2010);
INSERT INTO Club VALUES('Blackdown Hills', 2007);
INSERT INTO Club VALUES('Ebony Horse Club', 1967);
INSERT INTO Club VALUES('Riding Club London', 1953);
INSERT INTO Club VALUES('Georges Field', 1988);
INSERT INTO Club VALUES('Tedworth saddle Club', 1995);

/*Stable(STID, InaugurationYear,NoHorse,NoPractitioners,NoEmployees, Area,CName->Club)*/
INSERT INTO Stable VALUES (1,2002,30,64,12,200, 'Border Counties');
INSERT INTO Stable VALUES (2,1986,44,102,40,200, 'Portmore Equestrian Centre');
INSERT INTO Stable VALUES (3,1970,85,90,38, 200,'Laurel View');
INSERT INTO Stable VALUES (4,2000,18,34,7,200, 'Mossvale');
INSERT INTO Stable VALUES (5,2010,29,54,29,200, 'Burnfield Foot');
INSERT INTO Stable VALUES (6,2007,12,23,10,200, 'Blackdown Hills');
INSERT INTO Stable VALUES (7,1967,79,120,43,200, 'Ebony Horse Club');
INSERT INTO Stable VALUES (8,1953,69,113,56,200, 'Riding Club London');
INSERT INTO Stable VALUES (9,2004,93,143,54,200, 'Georges Field');
INSERT INTO Stable VALUES (10,1995,13,45,21,200, 'Tedworth saddle Club');
INSERT INTO Stable VALUES (11,2008,40,68,19,179, NULL);/* Sem Club associado */

/*Team(TeamID, TName, AmountGain, TotalPoints)*/
INSERT INTO Team VALUES(1, 'London Knights', 1600, 51);
INSERT INTO Team VALUES(2, 'Paris Panthers', 1800, 55);
INSERT INTO Team VALUES(3, 'Berlin Eagles', 1400, 46);
INSERT INTO Team VALUES(4, 'Miami Celtics', 1600, 51);
INSERT INTO Team VALUES(5, 'Monaco Aces', 800, 25);

/*Rider(RiderID,RName,Country,NoFederated,BirthDate,AmountGain,TotalPoints,CoachID->Coach,VetID->Vet, GroomID->Groom,StableID->Stable,TeamID->Team)*/
INSERT INTO Rider VALUES (1, 'Nicola Philippaerts','Belgium',10036018,strftime('1993-07-30'),75000,37,6,1,1,6,1);
INSERT INTO Rider VALUES (2, 'Olivier Philippaerts','Belgium',10000499,strftime('1993-07-30'),0,0,2,2,1,6,1);
INSERT INTO Rider VALUES (3, 'Edwina Tops-Alexander','Australia',10036019,strftime('1974-03-29'), 123750,40, NULL, 3,2,3,2);
INSERT INTO Rider VALUES (4, 'Marcus Ehning','Germany',10011403,strftime('1974-04-19'),0,33,4,4,3,4,2);
INSERT INTO Rider VALUES (5, 'Scott Brash','UK',10031085,strftime('1985-12-05'),0,32,5,5,5,5,1);
INSERT INTO Rider VALUES (6, 'Steve Guerdat','Switzerland',10011463,strftime('1982-06-10'),75000,37,1,6,6,6,3);
INSERT INTO Rider VALUES (7, 'Janika Sprunger','Switzerland',100006483,strftime('1987-05-29'),56250,35,1,7,7,6,3);
INSERT INTO Rider VALUES (8, 'Kevin Staut ','France',100001927,strftime('1980-11-15'),0,33, NULL,8,8,8,1);
INSERT INTO Rider VALUES (9, 'Emanuele Gaudiano','Italy',10005736,strftime('1986-06-30'),0,0, NULL,9,9,9,2);
INSERT INTO Rider VALUES (10, 'Christian Ahlmann','Germany',10000387,strftime('1974-12-17'),123750,40,8,10,4,10,2);
INSERT INTO Rider VALUES (11, 'Daniel Deusser','Germany',10008871,strftime('1981-08-13'),123750,40,8,11,4,10,3);
INSERT INTO Rider VALUES (12, 'Jerome Guery','Belgium',10001740,strftime('1980-07-24'),56250,35,10,12,11,7,3);
INSERT INTO Rider VALUES (13, 'Shaen Breen ','Ireland',10007458,strftime('1974-09-16'),75000,37,6,13,7,11,4);
INSERT INTO Rider VALUES (14, 'Penelope Leprevost','France',10016473,strftime('1980-08-01'),56250,35,9,14,8,11,4);
INSERT INTO Rider VALUES (15, 'Henrik von Eckermann','Sweden',10001601,strftime('1981-05-25'),0,33,7,15,5,11,4);
INSERT INTO Rider VALUES (16, 'Max Kühner','Austria',10002263,strftime('1974-01-15'),0,0,8,16,7,11,4);
INSERT INTO Rider VALUES (17, 'Jur Vrieling','Netherlands',10001858,strftime('1969-07-31'),0,0,6,17,10,2,5);
INSERT INTO Rider VALUES (18, 'Athina Onassis','Greece',10001958,strftime('1969-07-31'),0,0,2,18,6,2,5);
INSERT INTO Rider VALUES (19, 'Zoe Osterhoff','Germany',10089197,strftime('1999-07-09'),0,0,8,19,3,2,5);
INSERT INTO Rider VALUES (20, 'Eduardo Alvarez Aznar','Netherlands',10001859,strftime('1969-07-31'),0,0,6,20,4,2,5);
INSERT INTO Rider VALUES (21, 'Peder Fredricson','Sweden',10002504,strftime('1972-01-30'),0,0,4,21,2,5,NULL);
INSERT INTO Rider VALUES (22, 'Jos Verlooy','Belgium',10036186,strftime('1995-12-15'),0,0,9,22,8,4,NULL);

/*Sponsors(RiderID->Rider,SponsorID->Sponsor)*/
INSERT INTO Sponsors VALUES(1,1,200.0);
INSERT INTO Sponsors VALUES(2,2,1000.0);
INSERT INTO Sponsors VALUES(3,3,540.0);
INSERT INTO Sponsors VALUES(22,3,1200.0);
INSERT INTO Sponsors VALUES(12,3,2300.0);
INSERT INTO Sponsors VALUES(4,4,300.0);
INSERT INTO Sponsors VALUES(5,5,4000.0);
INSERT INTO Sponsors VALUES(6,6,230.0);
INSERT INTO Sponsors VALUES(19,6,1700.0);
INSERT INTO Sponsors VALUES(7,7,650.0);
INSERT INTO Sponsors VALUES(8,8,300.0);
INSERT INTO Sponsors VALUES(16,8,2300.0);
INSERT INTO Sponsors VALUES(19,8,480.0);
INSERT INTO Sponsors VALUES(9,9,1420.0);
INSERT INTO Sponsors VALUES(21,9,700.0);
INSERT INTO Sponsors VALUES(10,10,3720.0);

/*Horse(HorseID,BirthDate,Breed,Gender,CoatColor,RiderID->Rider)*/
INSERT INTO Horse VALUES(1,strftime('2008-06-26'),'HOLST','Male','Bay',1);
INSERT INTO Horse VALUES(2,strftime('2006-02-27'),'DSP','Female','Gray',2);
INSERT INTO Horse VALUES(3,strftime('2007-04-09'),'KWPN','Female','Bay',3);
INSERT INTO Horse VALUES(4,strftime('2005-12-26'),'WESTF','Female','Chestnut',4);
INSERT INTO Horse VALUES(5,strftime('2006-02-25'),'OLDBG', 'Male','Chestnut',5);
INSERT INTO Horse VALUES(6,strftime('2001-04-26'),'SF','Male','Bay',6); 
INSERT INTO Horse VALUES(7,strftime('2011-07-30'),'OLDBG','Female','Bay',7);
INSERT INTO Horse VALUES(8,strftime('2006-11-26'),'SBS','Female','Chestnut',8);
INSERT INTO Horse VALUES(9,strftime('2003-05-12'),'WESTF','Female','Bay',9);
INSERT INTO Horse VALUES(10,strftime('2005-01-08'),'KWPN','Male','Bay',8);
INSERT INTO Horse VALUES(11,strftime('2001-07-17'),'BRAND','Male','Gray',10);
INSERT INTO Horse VALUES(12,strftime('2008-12-06'),'BWP','Male','Chestnut',1);
INSERT INTO Horse VALUES(13,strftime('2009-09-28'),'OS','Male','Bay',9);
INSERT INTO Horse VALUES(14,strftime('2002-04-16'),'SBS','Male','Bay',5);
INSERT INTO Horse VALUES(15,strftime('2001-01-14'),'AES','Male','Bay',5);
INSERT INTO Horse VALUES(16,strftime('2008-01-14'),'ZANG','Male','Chestnut',11);
INSERT INTO Horse VALUES(17,strftime('2006-06-16'),'BWP','Male','Gray',12);
INSERT INTO Horse VALUES(18,strftime('2008-02-19'),'ISH','Female','Gray',13);
INSERT INTO Horse VALUES(19,strftime('2004-07-11'),'SWB','Female','Bay',14);
INSERT INTO Horse VALUES(20,strftime('2001-01-19'),'HANN','Female','Chestnut',15);
INSERT INTO Horse VALUES(21,strftime('2005-12-10'),'DSP','Male','Bay',16);
INSERT INTO Horse VALUES(22,strftime('2008-02-14'),'KWPN','Male','Bay',17);
INSERT INTO Horse VALUES(23,strftime('2006-08-29'),'ISH','Male','Bay',18);
INSERT INTO Horse VALUES(24,strftime('2007-02-18'),'OS','Female','Bay',19);
INSERT INTO Horse VALUES(25,strftime('2005-10-04'),'SF','Male','Bay',20);
INSERT INTO Horse VALUES(26,strftime('2006-05-27'),'SBS','Male','Bay',21);
INSERT INTO Horse VALUES(27,strftime('2005-05-03'),'BWP','Female','Chestnut',22);

/*Season(year)*/
INSERT INTO Season VALUES(2020);

/*Event(City, Year->Season, BeginDate,EndDate)*/
INSERT INTO Event VALUES('Doha', 2020, strftime('%Y-%m-%d', '2020-03-05'), strftime('%Y-%m-%d','2020-03-07'));
INSERT INTO Event VALUES('Madrid', 2020, strftime('%Y-%m-%d', '2020-05-15'), strftime('%Y-%m-%d', '2020-05-17'));
INSERT INTO Event VALUES('Hamburg', 2020, strftime('%Y-%m-%d', '2020-05-20'), strftime('%Y-%m-%d', '2020-05-24'));

/*Class(DateTime,{City, Year}->Event, MaxTime, NoObstacles)*/
INSERT INTO Class VALUES(strftime('%Y-%m-%d %H:%M', '2020-03-05 11:00') , 'Doha', 2020, 80.0, 10);
INSERT INTO Class VALUES( strftime('%Y-%m-%d %H:%M', '2020-03-05 17:00'), 'Doha', 2020, 78.2, 13);/*Team class*/
INSERT INTO Class VALUES( strftime('%Y-%m-%d %H:%M', '2020-05-15 13:00'), 'Madrid', 2020, 79.0, 12);
INSERT INTO Class VALUES( strftime('%Y-%m-%d %H:%M', '2020-05-16 17:00'), 'Madrid', 2020, 77.0, 15);/*Team class*/
INSERT INTO Class VALUES( strftime('%Y-%m-%d %H:%M', '2020-05-20 17:00'), 'Hamburg', 2020, 85.0, 16);
INSERT INTO Class VALUES( strftime('%Y-%m-%d %H:%M', '2020-05-24 17:00'), 'Hamburg', 2020, 75.0, 9);/*Team class*/

/*Prize(Place,ClassID->Class,Value)*/
INSERT INTO Prize VALUES(1, strftime('%Y-%m-%d %H:%M', '2020-03-05 11:00'), 123750);
INSERT INTO Prize VALUES(2, strftime('%Y-%m-%d %H:%M', '2020-03-05 11:00'), 75000);
INSERT INTO Prize VALUES(3, strftime('%Y-%m-%d %H:%M', '2020-03-05 11:00'), 56250);

INSERT INTO Prize VALUES(1, strftime('%Y-%m-%d %H:%M', '2020-03-05 17:00'), 1000);
INSERT INTO Prize VALUES(2, strftime('%Y-%m-%d %H:%M', '2020-03-05 17:00'), 800);
INSERT INTO Prize VALUES(3, strftime('%Y-%m-%d %H:%M', '2020-03-05 17:00'), 600);

INSERT INTO Prize VALUES(1, strftime('%Y-%m-%d %H:%M', '2020-05-15 13:00'), 123750);
INSERT INTO Prize VALUES(2, strftime('%Y-%m-%d %H:%M', '2020-05-15 13:00'), 75000);
INSERT INTO Prize VALUES(3, strftime('%Y-%m-%d %H:%M', '2020-05-15 13:00'), 56250);

INSERT INTO Prize VALUES(1, strftime('%Y-%m-%d %H:%M', '2020-05-16 17:00'), 1000);
INSERT INTO Prize VALUES(2, strftime('%Y-%m-%d %H:%M', '2020-05-16 17:00'), 800);
INSERT INTO Prize VALUES(3, strftime('%Y-%m-%d %H:%M', '2020-05-16 17:00'), 600);

INSERT INTO Prize VALUES(1, strftime('%Y-%m-%d %H:%M', '2020-05-20 17:00'), 123750);
INSERT INTO Prize VALUES(2, strftime('%Y-%m-%d %H:%M', '2020-05-20 17:00'), 75000);
INSERT INTO Prize VALUES(3, strftime('%Y-%m-%d %H:%M', '2020-05-20 17:00'), 56250);

INSERT INTO Prize VALUES(1, strftime('%Y-%m-%d %H:%M', '2020-05-24 17:00'), 1000);
INSERT INTO Prize VALUES(2, strftime('%Y-%m-%d %H:%M', '2020-05-24 17:00'), 800);
INSERT INTO Prize VALUES(3, strftime('%Y-%m-%d %H:%M', '2020-05-24 17:00'), 600);

/*Participation(DateTime->Class,Place,Points,PTime)*/
/*DOHA*/
INSERT INTO Participation VALUES(strftime('%Y-%m-%d %H:%M', '2020-03-05 11:00'),1,40,74.41);
INSERT INTO Participation VALUES(strftime('%Y-%m-%d %H:%M', '2020-03-05 11:00'),2,37,75.59);
INSERT INTO Participation VALUES(strftime('%Y-%m-%d %H:%M', '2020-03-05 11:00'),3,35,76.99);
INSERT INTO Participation VALUES(strftime('%Y-%m-%d %H:%M', '2020-03-05 11:00'),4,33,77.46);
INSERT INTO Participation VALUES(strftime('%Y-%m-%d %H:%M', '2020-03-05 11:00'),5,32,78.67);
/*equipas*/
INSERT INTO Participation VALUES(strftime('%Y-%m-%d %H:%M', '2020-03-05 17:00'),1,30,74.43);
INSERT INTO Participation VALUES(strftime('%Y-%m-%d %H:%M', '2020-03-05 17:00'),2,25,70.27);
INSERT INTO Participation VALUES(strftime('%Y-%m-%d %H:%M', '2020-03-05 17:00'),3,21,83.51);
INSERT INTO Participation VALUES(strftime('%Y-%m-%d %H:%M', '2020-03-05 17:00'),4,0,0.00);
INSERT INTO Participation VALUES(strftime('%Y-%m-%d %H:%M', '2020-03-05 17:00'),5,0,0.00);
/*MADRID*/
INSERT INTO Participation VALUES(strftime('%Y-%m-%d %H:%M', '2020-05-15 13:00'),1,40,74.41);
INSERT INTO Participation VALUES(strftime('%Y-%m-%d %H:%M', '2020-05-15 13:00'),2,37,75.59);
INSERT INTO Participation VALUES(strftime('%Y-%m-%d %H:%M', '2020-05-15 13:00'),3,35,76.99);
INSERT INTO Participation VALUES(strftime('%Y-%m-%d %H:%M', '2020-05-15 13:00'),4,33,77.46);
INSERT INTO Participation VALUES(strftime('%Y-%m-%d %H:%M', '2020-05-15 13:00'),5,0,0.00);
/*equipas*/
INSERT INTO Participation VALUES(strftime('%Y-%m-%d %H:%M', '2020-05-16 17:00'),1,30,70.27);
INSERT INTO Participation VALUES(strftime('%Y-%m-%d %H:%M', '2020-05-16 17:00'),2,25,73.43);
INSERT INTO Participation VALUES(strftime('%Y-%m-%d %H:%M', '2020-05-16 17:00'),3,21,73.51);
/*HAMBURG*/
INSERT INTO Participation VALUES(strftime('%Y-%m-%d %H:%M', '2020-05-20 17:00'),1,40,74.41);
INSERT INTO Participation VALUES(strftime('%Y-%m-%d %H:%M', '2020-05-20 17:00'),2,37,75.59);
INSERT INTO Participation VALUES(strftime('%Y-%m-%d %H:%M', '2020-05-20 17:00'),3,35,76.99);
INSERT INTO Participation VALUES(strftime('%Y-%m-%d %H:%M', '2020-05-20 17:00'),4,33,77.46);
INSERT INTO Participation VALUES(strftime('%Y-%m-%d %H:%M', '2020-05-20 17:00'),5,0,0.00);
/*equipas*/
INSERT INTO Participation VALUES(strftime('%Y-%m-%d %H:%M', '2020-05-24 17:00'),1,30,70.27);
INSERT INTO Participation VALUES(strftime('%Y-%m-%d %H:%M', '2020-05-24 17:00'),2,25,73.43);
INSERT INTO Participation VALUES(strftime('%Y-%m-%d %H:%M', '2020-05-24 17:00'),3,21,73.51);

/*IndividualParticipation([DateTime, Place]->Participation, RiderID,HorseId)*/
/*DOHA*/
INSERT INTO IndividualParticipation VALUES(strftime('%Y-%m-%d %H:%M', '2020-03-05 11:00'),1,11,16);
INSERT INTO IndividualParticipation VALUES(strftime('%Y-%m-%d %H:%M', '2020-03-05 11:00'),2,1,12);
INSERT INTO IndividualParticipation VALUES(strftime('%Y-%m-%d %H:%M', '2020-03-05 11:00'),3,12,17);
INSERT INTO IndividualParticipation VALUES(strftime('%Y-%m-%d %H:%M', '2020-03-05 11:00'),4,4,4);
INSERT INTO IndividualParticipation VALUES(strftime('%Y-%m-%d %H:%M', '2020-03-05 11:00'),5,5,14);
/*MADRID*/
INSERT INTO IndividualParticipation VALUES(strftime('%Y-%m-%d %H:%M', '2020-05-15 13:00'),1,3,3);
INSERT INTO IndividualParticipation VALUES(strftime('%Y-%m-%d %H:%M', '2020-05-15 13:00'),2,6,6);
INSERT INTO IndividualParticipation VALUES(strftime('%Y-%m-%d %H:%M', '2020-05-15 13:00'),3,7,7);
INSERT INTO IndividualParticipation VALUES(strftime('%Y-%m-%d %H:%M', '2020-05-15 13:00'),4,8,10);
/*HAMBURG*/
INSERT INTO IndividualParticipation VALUES(strftime('%Y-%m-%d %H:%M', '2020-05-20 17:00'),1,10,11);
INSERT INTO IndividualParticipation VALUES(strftime('%Y-%m-%d %H:%M', '2020-05-20 17:00'),2,13,18);
INSERT INTO IndividualParticipation VALUES(strftime('%Y-%m-%d %H:%M', '2020-05-20 17:00'),3,14,19);
INSERT INTO IndividualParticipation VALUES(strftime('%Y-%m-%d %H:%M', '2020-05-20 17:00'),4,15,20);

/*IndividualDisqualification([DateTime, Place]->Participation, RiderID)*/
INSERT INTO IndividualDisqualification VALUES(strftime('%Y-%m-%d %H:%M', '2020-05-15 13:00'),5,9);

/*IndividualWithdrawal([DateTime, Place]->Participation, RiderID)*/
INSERT INTO IndividualWithdrawal VALUES(strftime('%Y-%m-%d %H:%M', '2020-05-20 17:00'),5,16);

/*TeamParticipation([DateTime, Place]->Participation,TeamID)*/
/*DOHA*/
INSERT INTO TeamParticipation VALUES(strftime('%Y-%m-%d %H:%M', '2020-03-05 17:00'),1,1);
INSERT INTO TeamParticipation VALUES(strftime('%Y-%m-%d %H:%M', '2020-03-05 17:00'),2,2);
INSERT INTO TeamParticipation VALUES(strftime('%Y-%m-%d %H:%M', '2020-03-05 17:00'),3,3);
/*MADRID*/
INSERT INTO TeamParticipation VALUES(strftime('%Y-%m-%d %H:%M', '2020-05-16 17:00'),1,4);
INSERT INTO TeamParticipation VALUES(strftime('%Y-%m-%d %H:%M', '2020-05-16 17:00'),2,5);
INSERT INTO TeamParticipation VALUES(strftime('%Y-%m-%d %H:%M', '2020-05-16 17:00'),3,1);
/*HAMBURG*/
INSERT INTO TeamParticipation VALUES(strftime('%Y-%m-%d %H:%M', '2020-05-24 17:00'),1,2);
INSERT INTO TeamParticipation VALUES(strftime('%Y-%m-%d %H:%M', '2020-05-24 17:00'),2,3);
INSERT INTO TeamParticipation VALUES(strftime('%Y-%m-%d %H:%M', '2020-05-24 17:00'),3,4);

/*HorseParticipation([DateTime,Place]->TeamParticipation, HorseID->Horse)*/
/*DOHA*/
INSERT INTO HorseParticipation VALUES(strftime('%Y-%m-%d %H:%M', '2020-03-05 17:00'),1,1);
INSERT INTO HorseParticipation VALUES(strftime('%Y-%m-%d %H:%M', '2020-03-05 17:00'),1,2);
INSERT INTO HorseParticipation VALUES(strftime('%Y-%m-%d %H:%M', '2020-03-05 17:00'),1,5);
INSERT INTO HorseParticipation VALUES(strftime('%Y-%m-%d %H:%M', '2020-03-05 17:00'),1,8);

INSERT INTO HorseParticipation VALUES(strftime('%Y-%m-%d %H:%M', '2020-03-05 17:00'),2,3);
INSERT INTO HorseParticipation VALUES(strftime('%Y-%m-%d %H:%M', '2020-03-05 17:00'),2,4);
INSERT INTO HorseParticipation VALUES(strftime('%Y-%m-%d %H:%M', '2020-03-05 17:00'),2,9);
INSERT INTO HorseParticipation VALUES(strftime('%Y-%m-%d %H:%M', '2020-03-05 17:00'),2,11);

INSERT INTO HorseParticipation VALUES(strftime('%Y-%m-%d %H:%M', '2020-03-05 17:00'),3,6);
INSERT INTO HorseParticipation VALUES(strftime('%Y-%m-%d %H:%M', '2020-03-05 17:00'),3,7);
INSERT INTO HorseParticipation VALUES(strftime('%Y-%m-%d %H:%M', '2020-03-05 17:00'),3,11);
INSERT INTO HorseParticipation VALUES(strftime('%Y-%m-%d %H:%M', '2020-03-05 17:00'),3,12);

INSERT INTO HorseParticipation VALUES(strftime('%Y-%m-%d %H:%M', '2020-03-05 17:00'),4,18);
INSERT INTO HorseParticipation VALUES(strftime('%Y-%m-%d %H:%M', '2020-03-05 17:00'),4,19);
INSERT INTO HorseParticipation VALUES(strftime('%Y-%m-%d %H:%M', '2020-03-05 17:00'),4,20);
INSERT INTO HorseParticipation VALUES(strftime('%Y-%m-%d %H:%M', '2020-03-05 17:00'),4,21);

INSERT INTO HorseParticipation VALUES(strftime('%Y-%m-%d %H:%M', '2020-03-05 17:00'),5,22);
INSERT INTO HorseParticipation VALUES(strftime('%Y-%m-%d %H:%M', '2020-03-05 17:00'),5,23);
INSERT INTO HorseParticipation VALUES(strftime('%Y-%m-%d %H:%M', '2020-03-05 17:00'),5,24);
INSERT INTO HorseParticipation VALUES(strftime('%Y-%m-%d %H:%M', '2020-03-05 17:00'),5,25);

/*MADRID*/
INSERT INTO HorseParticipation VALUES(strftime('%Y-%m-%d %H:%M', '2020-05-16 17:00'),1,18);
INSERT INTO HorseParticipation VALUES(strftime('%Y-%m-%d %H:%M', '2020-05-16 17:00'),1,19);
INSERT INTO HorseParticipation VALUES(strftime('%Y-%m-%d %H:%M', '2020-05-16 17:00'),1,20);
INSERT INTO HorseParticipation VALUES(strftime('%Y-%m-%d %H:%M', '2020-05-16 17:00'),1,21);

INSERT INTO HorseParticipation VALUES(strftime('%Y-%m-%d %H:%M', '2020-05-16 17:00'),2,22);
INSERT INTO HorseParticipation VALUES(strftime('%Y-%m-%d %H:%M', '2020-05-16 17:00'),2,23);
INSERT INTO HorseParticipation VALUES(strftime('%Y-%m-%d %H:%M', '2020-05-16 17:00'),2,24);
INSERT INTO HorseParticipation VALUES(strftime('%Y-%m-%d %H:%M', '2020-05-16 17:00'),2,25);

INSERT INTO HorseParticipation VALUES(strftime('%Y-%m-%d %H:%M', '2020-05-16 17:00'),3,12);
INSERT INTO HorseParticipation VALUES(strftime('%Y-%m-%d %H:%M', '2020-05-16 17:00'),3,2);
INSERT INTO HorseParticipation VALUES(strftime('%Y-%m-%d %H:%M', '2020-05-16 17:00'),3,14);
INSERT INTO HorseParticipation VALUES(strftime('%Y-%m-%d %H:%M', '2020-05-16 17:00'),3,10);

/*HAMBURG*/
INSERT INTO HorseParticipation VALUES(strftime('%Y-%m-%d %H:%M', '2020-05-24 17:00'),1,3);
INSERT INTO HorseParticipation VALUES(strftime('%Y-%m-%d %H:%M', '2020-05-24 17:00'),1,4);
INSERT INTO HorseParticipation VALUES(strftime('%Y-%m-%d %H:%M', '2020-05-24 17:00'),1,13);
INSERT INTO HorseParticipation VALUES(strftime('%Y-%m-%d %H:%M', '2020-05-24 17:00'),1,11);

INSERT INTO HorseParticipation VALUES(strftime('%Y-%m-%d %H:%M', '2020-05-24 17:00'),2,6);
INSERT INTO HorseParticipation VALUES(strftime('%Y-%m-%d %H:%M', '2020-05-24 17:00'),2,7);
INSERT INTO HorseParticipation VALUES(strftime('%Y-%m-%d %H:%M', '2020-05-24 17:00'),2,16);
INSERT INTO HorseParticipation VALUES(strftime('%Y-%m-%d %H:%M', '2020-05-24 17:00'),2,17);

INSERT INTO HorseParticipation VALUES(strftime('%Y-%m-%d %H:%M', '2020-05-24 17:00'),3,18);
INSERT INTO HorseParticipation VALUES(strftime('%Y-%m-%d %H:%M', '2020-05-24 17:00'),3,19);
INSERT INTO HorseParticipation VALUES(strftime('%Y-%m-%d %H:%M', '2020-05-24 17:00'),3,20);
INSERT INTO HorseParticipation VALUES(strftime('%Y-%m-%d %H:%M', '2020-05-24 17:00'),3,21);

/*TeamDisqualification([DateTime,Place]->Participation,TeamID)*/
INSERT INTO TeamDisqualification VALUES(strftime('%Y-%m-%d %H:%M', '2020-03-05 17:00'),5,5);

/*TeamWithdrawal([DateTime,Place]->Participation,TeamID)*/
INSERT INTO TeamWithdrawal VALUES(strftime('%Y-%m-%d %H:%M', '2020-03-05 17:00'),4,4);


