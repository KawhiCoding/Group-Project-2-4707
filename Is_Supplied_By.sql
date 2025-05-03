CREATE TABLE Is_Supplied_By (
    BookID INT,
    SupplierID INT,
    PRIMARY KEY (BookID, SupplierID),
    FOREIGN KEY (BookID) REFERENCES Books(BookID),
    FOREIGN KEY (SupplierID) REFERENCES Suppliers(SupplierID)
);
