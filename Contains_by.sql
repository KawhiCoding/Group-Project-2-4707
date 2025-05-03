CREATE TABLE Contains_by (
    OrderID INT,
    OrderBookID INT,
    PRIMARY KEY (OrderID, OrderBookID),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (OrderBookID) REFERENCES Order_Book(OrderBookID)
);
