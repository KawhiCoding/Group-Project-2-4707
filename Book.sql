CREATE TABLE Book (
    BookID INT PRIMARY KEY,
    Title VARCHAR(100),
    Genre VARCHAR(50),
    PublicationYear YEAR,
    Price DECIMAL(10,2),
    StockQuantity INT,
    PublisherName VARCHAR(100),
    PublisherEmail VARCHAR(100),
    PublisherPhone VARCHAR(15)
);