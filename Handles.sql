CREATE TABLE Handles (
    EmployeeID INT,
    OrderID INT,
    PRIMARY KEY (EmployeeID, OrderID),
    FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID)
    FOREIGN KEY (OrderID) REFERENCES `Order`(OrderID)

);
