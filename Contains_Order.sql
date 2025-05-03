CREATE TABLE Contain_Order (
    BookID INT,
    OrderID INT,
    PRIMARY KEY (BookID, OrderID),
    FOREIGN KEY (BookID) REFERENCES Books(BookID),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);
