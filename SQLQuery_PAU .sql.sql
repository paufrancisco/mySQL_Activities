create database mydB
use mydB

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Email VARCHAR(100) NOT NULL,
    Gender CHAR(1),
    Birthdate DATE
);
CREATE TABLE Vendors (
    VendorID INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    ContactNum VARCHAR(20),
    CityAddress VARCHAR(100)
);

CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    Description VARCHAR(255) NOT NULL,
    Quantity INT,
    Price FLOAT,
    VendorID INT,
    FOREIGN KEY (VendorID) REFERENCES Vendors(VendorID)
);
SELECT * FROM Customers
SELECT * FROM Vendors
SELECT * FROM Products

