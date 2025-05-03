CREATE TABLE Handles_Order (
    CustomerID INT,
    OrderID INT,
    PRIMARY KEY (CustomerID, OrderID),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);
