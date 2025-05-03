CREATE TABLE Inventory (
    InventoryID INT PRIMARY KEY,
    BookID INT,
    StockQuantity INT NOT NULL,
    RestockThreshold INT,
    FOREIGN KEY (BookID) REFERENCES Book(BookID)
        ON DELETE CASCADE ON UPDATE CASCADE
);