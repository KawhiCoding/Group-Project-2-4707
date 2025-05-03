CREATE TABLE Has_Inventory_Entry (
    InventoryID INT,
    BookID INT,
    PRIMARY KEY (InventoryID, BookID),
    FOREIGN KEY (InventoryID) REFERENCES Inventory(InventoryID)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (BookID) REFERENCES Book(BookID)
        ON DELETE CASCADE ON UPDATE CASCADE
);
