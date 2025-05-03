CREATE TABLE Customer (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Phone VARCHAR(15) UNIQUE,
    Email VARCHAR(100) UNIQUE,
    Street VARCHAR(100),
    City VARCHAR(50),
    ZipCode VARCHAR(10),
    BillingAddress VARCHAR(150)
);