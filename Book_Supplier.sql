CREATE TABLE Book_Supplier (
    BookID INT,
    SupplierID INT,
    OrderID INT,
    SupplyDate DATE,
    PRIMARY KEY (BookID, SupplierID),
    FOREIGN KEY (BookID) REFERENCES Book(BookID),
    FOREIGN KEY (SupplierID) REFERENCES Supplier(SupplierID),
    FOREIGN KEY (OrderID) REFERENCES `Order`(OrderID)
);