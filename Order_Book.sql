CREATE TABLE Order_Book (
    BookID INT,
    OrderID INT,
    Quantity INT,
    PricePerOrder DECIMAL(10,2),
    PRIMARY KEY (BookID, OrderID),
    FOREIGN KEY (BookID) REFERENCES Book(BookID),
    FOREIGN KEY (OrderID) REFERENCES `Order`(OrderID)
);