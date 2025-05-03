CREATE TABLE Book (
    BookID INT PRIMARY KEY,
    Title VARCHAR(100) NOT NULL,
    Genre VARCHAR(50),
    PublicationYear YEAR,
    Price DECIMAL(10,2) NOT NULL,
    StockQuantity INT NOT NULL,
    PublisherName VARCHAR(100),
    PublisherEmail VARCHAR(100),
    PublisherPhone VARCHAR(15)
);