CREATE DATABASE Gallery;
USE GALLERY;
DROP TABLE USERS;
DROP TABLE PICTURES;
-- Create  
CREATE TABLE Users (
    UserID INT PRIMARY KEY,
    Username NVARCHAR(50),
    DateCreated DATE
);

-- Insert 
INSERT INTO Users (UserID, Username, DateCreated)
VALUES
    (001, 'sparsley0', '2019-02-19'),
    (002, 'dsumshon1', '2018-12-24'),
    (003, 'hpointing2', '2018-12-11'),
    (004, 'smannagh3', '2018-08-05'),
    (005, 'gstarsmore4', '2018-07-09'),
    (006, 'dzuann5', '2019-01-09');
	 

-- Create 
CREATE TABLE Pictures (
    PictureID INT PRIMARY KEY,
    FileName NVARCHAR(100),
    UserID INT,
    DateCreated DATE,
    FOREIGN KEY (UserID) REFERENCES Users(UserID)
);

-- Insert  
INSERT INTO Pictures (PictureID, FileName, UserID, DateCreated)
VALUES
    (1001, 'laptop.jpeg', 003, '2019-02-07'),
    (1002, 'sti_orca.jpeg', NULL, '2019-09-04'),
    (1003, 'home.jpeg', 005, '2019-02-16'),
    (1004, 'bsit.jpeg', 001, '2019-10-19');


--. Perform the four (4) types of join. Display only the usernames and file names.

-- 1. Inner Join
SELECT u.Username, p.FileName
FROM Users u
INNER JOIN Pictures p ON u.UserID = p.UserID;

-- 2. Left Join
SELECT u.Username, p.FileName
FROM Users u
LEFT JOIN Pictures p ON u.UserID = p.UserID;

-- 3. Right Join
SELECT u.Username, p.FileName
FROM Users u
RIGHT JOIN Pictures p ON u.UserID = p.UserID;

-- 4. Full Outer Join
SELECT u.Username, p.FileName
FROM Users u
FULL OUTER JOIN Pictures p ON u.UserID = p.UserID;