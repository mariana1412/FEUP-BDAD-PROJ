PRAGMA foreign_keys=ON;
/*BEGIN TRANSACTION;*/

DROP TABLE IF EXISTS Coach;
CREATE TABLE Coach(
	CID INTEGER PRIMARY KEY,
	CName TEXT NOT NULL,
	Country TEXT NOT NULL,
	BirthDate TEXT
);
DROP TABLE IF EXISTS Groom;
CREATE TABLE Groom(
	GID INTEGER PRIMARY KEY,
	GName TEXT NOT NULL,
	BirthDate TEXT
);
DROP TABLE IF EXISTS Sponsor;
CREATE TABLE Sponsor(
	SID INTEGER PRIMARY KEY,
	Job TEXT NOT NULL,
	NIF INTEGER UNIQUE NOT NULL CHECK (length(NIF) = 9)
);
DROP TABLE IF EXISTS Vet;
CREATE TABLE Vet(
	VID INTEGER PRIMARY KEY,
	VName TEXT NOT NULL,
	PhoneNumber INTEGER UNIQUE NOT NULL CHECK (length(PhoneNumber) = 9),
	AppointementCost REAL NOT NULL CHECK (AppointementCost >= 0)
);
DROP TABLE IF EXISTS Club;
CREATE TABLE Club(
	CName TEXT PRIMARY KEY,
	CreationYear INTEGER NOT NULL CHECK (CreationYear > 0)
);
DROP TABLE IF EXISTS Stable;
CREATE TABLE Stable(
	STID INTEGER PRIMARY KEY,
	InaugurationYear INTEGER NOT NULL CHECK (InaugurationYear > 0),
	NoHorses INTEGER NOT NULL CHECK (NoHorses >= 0),
	NoPractitioners INTEGER NOT NULL CHECK (NoPractitioners >= 0),
	NoEmployees INTEGER NOT NULL CHECK (NoEmployees >= 0),
	Area REAL NOT NULL CHECK (Area > 0), 
	CName TEXT REFERENCES Club
);

DROP TABLE IF EXISTS Team;
CREATE TABLE Team(
	TeamID INTEGER PRIMARY KEY,
	TName TEXT UNIQUE NOT NULL, 
	AmountGain INTEGER NOT NULL CHECK (AmountGain >= 0),
	TotalPoints INTEGER NOT NULL CHECK (TotalPoints >= 0)
);

DROP TABLE IF EXISTS Rider;
CREATE TABLE Rider(
	RiderID INTEGER PRIMARY KEY,
	RName TEXT NOT NULL,
	Country TEXT NOT NULL, 
	NoFederated INTEGER UNIQUE NOT NULL CHECK (NoFederated > 0),
	BirthDate TEXT NOT NULL,
	AmountGain INTEGER NOT NULL CHECK(AmountGain >= 0),
	TotalPoints INTEGER NOT NULL CHECK (TotalPoints >= 0),
	CoachID INTEGER REFERENCES Coach,
	VetID INTEGER NOT NULL REFERENCES Vet ON DELETE CASCADE ON UPDATE CASCADE,
	GroomID INTEGER NOT NULL REFERENCES Groom  ON DELETE CASCADE  ON UPDATE CASCADE,
	StableID INTEGER NOT NULL REFERENCES Stable  ON DELETE CASCADE ON UPDATE CASCADE, 
	TeamID INTEGER REFERENCES Team ON DELETE CASCADE ON UPDATE CASCADE
);

DROP TABLE IF EXISTS Sponsors;
CREATE TABLE Sponsors(
	RiderID INTEGER REFERENCES Rider ON DELETE CASCADE ON UPDATE CASCADE,
	SponsorID INTEGER REFERENCES Sponsor ON DELETE CASCADE ON UPDATE CASCADE,
	PRIMARY KEY(RiderID, SponsorID)
);

DROP TABLE IF EXISTS Horse;
CREATE TABLE Horse(
	HorseID INTEGER PRIMARY KEY,
	BirthDate TEXT NOT NULL,
	Breed TEXT NOT NULL,
	Gender TEXT NOT NULL CHECK (Gender = "Male" OR Gender = "Female"), 
	CoatColor TEXT NOT NULL CHECK (CoatColor = "Gray" OR CoatColor = "Bay" OR CoatColor = "Buckskin" OR CoatColor = "Brown" OR CoatColor = "Black" OR CoatColor = "Dun" OR CoatColor = "Roan" OR CoatColor = "Palomino" OR CoatColor = "Chestnut" OR CoatColor = "Pinto" OR CoatColor = "Paint"),
	RiderID INTEGER NOT NULL REFERENCES Rider ON DELETE CASCADE ON UPDATE CASCADE
);

DROP TABLE IF EXISTS Participation;
CREATE TABLE Participation(
	DateTime TEXT REFERENCES Class,
	Place INTEGER CHECK (Place > 0),
	Points INTEGER NOT NULL CHECK(Points >= 0), 
	PTime REAL CHECK(PTime >= 0),
	PRIMARY KEY(DateTime, Place)
);

DROP TABLE IF EXISTS IndividualParticipation;
CREATE TABLE IndividualParticipation(
	DateTime TEXT,
	Place INTEGER CHECK (Place > 0),
	RiderID INTEGER NOT NULL REFERENCES Rider ON DELETE CASCADE ON UPDATE CASCADE,
	HorseID INTEGER NOT NULL REFERENCES Horse ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY(DateTime, Place) REFERENCES Participation,
	PRIMARY KEY(DateTime, Place)
);

DROP TABLE IF EXISTS IndividualWithdrawal;
CREATE TABLE IndividualWithdrawal(
	DateTime TEXT,
	Place INTEGER CHECK (Place > 0),
	RiderID INTEGER NOT NULL REFERENCES Rider ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY(DateTime, Place) REFERENCES Participation,
	PRIMARY KEY(DateTime, Place)
);

DROP TABLE IF EXISTS IndividualDisqualification;
CREATE TABLE IndividualDisqualification(
	DateTime TEXT,
	Place INTEGER CHECK (Place > 0),
	RiderID INTEGER NOT NULL REFERENCES Rider ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY(DateTime, Place) REFERENCES Participation,
	PRIMARY KEY(DateTime, Place)
);

DROP TABLE IF EXISTS TeamParticipation;
CREATE TABLE TeamParticipation(
	DateTime TEXT,
	Place INTEGER CHECK (Place > 0),
	TeamID INTEGER NOT NULL REFERENCES Team ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY(DateTime, Place) REFERENCES Participation,
	PRIMARY KEY(DateTime, Place)
);

drop table if exists HorseParticipation;
CREATE TABLE HorseParticipation(
	DateTime TEXT,
	Place INTEGER CHECK (Place > 0),
	HorseID INTEGER REFERENCES Horse,
	PRIMARY KEY (DateTime, Place, HorseID),
	FOREIGN KEY (DateTime, Place) REFERENCES Participation
);

drop table if exists TeamDisqualification;
CREATE TABLE TeamDisqualification (
	DateTime TEXT,
	Place INTEGER CHECK (Place > 0),
	TeamID INTEGER NOT NULL REFERENCES Team ON DELETE CASCADE ON UPDATE CASCADE,
	PRIMARY KEY (DateTime, Place),
	FOREIGN KEY (DateTime, Place) REFERENCES Participation
);

drop table if exists TeamWithdrawal;
CREATE TABLE TeamWithdrawal(
	DateTime TEXT,
	Place INTEGER CHECK (Place > 0),
	TeamID INTEGER NOT NULL REFERENCES Team ON DELETE CASCADE ON UPDATE CASCADE,
	PRIMARY KEY (DateTime, Place),
	FOREIGN KEY (DateTime, Place) REFERENCES Participation
);

drop table if exists Season;
CREATE TABLE Season(
	Year INTEGER PRIMARY KEY CHECK (Year > 0)
);

drop table if exists Event;
CREATE TABLE Event(
	City TEXT,
	Year INTEGER REFERENCES Season,
	BeginDate TEXT NOT NULL,
	EndDate TEXT NOT NULL,
	PRIMARY KEY (City, Year),
	CHECK(EndDate > BeginDate)
);

drop table if exists Class;
CREATE TABLE Class(
	DateTime TEXT PRIMARY KEY,
	City TEXT,
	Year INTEGER CHECK(Year > 0),
	MaxTime REAL NOT NULL CHECK (MaxTime > 0),
	NoObstacles INTEGER NOT NULL CHECK (NoObstacles > 0),
	FOREIGN KEY (City, Year) REFERENCES Event
);

drop table if exists Prize;
CREATE TABLE Prize(
	Place INTEGER CHECK(Place = 1 OR Place = 2 OR Place = 3),
	ClassID TEXT REFERENCES Class, 
	Value INTEGER NOT NULL CHECK(Value >=0),
	PRIMARY KEY(ClassID, Place)
);

