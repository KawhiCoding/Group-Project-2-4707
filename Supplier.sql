CREATE TABLE Supplier (
    SupplierID INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    ContactInfo TEXT,
    Email VARCHAR(100) UNIQUE
);