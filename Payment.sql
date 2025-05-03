CREATE TABLE Payment (
    PaymentID INT PRIMARY KEY,
    Amount DECIMAL(10,2) NOT NULL,
    Method VARCHAR(50),
    Email VARCHAR(100)
);