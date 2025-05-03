CREATE TABLE Supplied_By (
    BookSupplierID INT,
    SupplierID INT,
    PRIMARY KEY (BookSupplierID, SupplierID),
    FOREIGN KEY (BookSupplierID) REFERENCES Book_Supplier(BookSupplierID),
    FOREIGN KEY (SupplierID) REFERENCES Suppliers(SupplierID)
);
