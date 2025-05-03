CREATE TABLE Inventory (
    InventoryID INT PRIMARY KEY,
    BookID INT,
    StockQuantity INT,
    RestockThreshold INT,
    FOREIGN KEY (BookID) REFERENCES Book(BookID)
);