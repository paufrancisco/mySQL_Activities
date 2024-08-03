
CREATE DATABASE DB_FRANCISCOPAULO

CREATE TABLE Users (
    UserID INT PRIMARY KEY,
    Username VARCHAR(50),
    Password VARCHAR(50),
    DateCreated DATE
	)

	INSERT INTO Users (UserID, Username, Password, DateCreated)
VALUES
(1, 'sparsley0', 'ilyLunox2013', '2019-02-19'),
(2, 'dsumshon1', 'ZACstrong19', '2018-12-24'),
(3, 'hpointing2', 'ramramos11', '2018-12-11'),
(4, 'smannagh3', 'asheArrow01', '2018-08-05'),
(5, 'gstarsmore4', 'miyaArrow10', '2018-07-09'),
(6, 'dzuann5', 'ekkoSystem32', '2019-01-09');

CREATE TABLE Pictures (
    PictureID INT PRIMARY KEY,
    Filename VARCHAR(100),
    UserID INT,
    LocationID INT,
    DateCreated DATE,
    FOREIGN KEY (UserID) REFERENCES Users(UserID),


    FOREIGN KEY (LocationID) REFERENCES Locations(LocationID)
)

INSERT INTO Pictures (PictureID, Filename, UserID, LocationID, DateCreated)
VALUES
(1, 'laptop.jpeg', 3, 1, '2019-02-07'),
(2, 'myschool.jpeg', 6, 1, '2019-02-05'),
(3, 'sti_orca.jpeg', 4, 1, '2019-09-04'),
(4, 'home.jpeg', 2, 6, '2019-02-16'),
(5, 'bsit.jpeg', 1, 6, '2019-10-19'),
(6, 'database.jpeg', 2, 1, '2019-02-02'),
(7, 'cute.jpeg', 5, 6, '2019-06-09');

CREATE TABLE Locations (
    LocationID INT PRIMARY KEY,
    City VARCHAR(50),
    CountryAbbrev CHAR(2),
    Country VARCHAR(50)
)

INSERT INTO Locations (LocationID, City, CountryAbbrev, Country)
VALUES
(1, 'Venice', 'IT', 'Italy'),
(2, 'Arboga', 'SE', 'Sweden'),
(3, 'Angers', 'FR', 'France'),
(4, 'Manila', 'PH', 'Philippines'),
(5, 'Cebu', 'PH', 'Philippines'),
(6, 'Dunhou', 'CH', 'China');