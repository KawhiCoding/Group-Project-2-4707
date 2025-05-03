CREATE TABLE Contains_Books (
    InventoryID INT,
    BookID INT,
    PRIMARY KEY (InventoryID, BookID),
    FOREIGN KEY (InventoryID) REFERENCES Inventory(InventoryID),
    FOREIGN KEY (BookID) REFERENCES Books(BookID)
);
