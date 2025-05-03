CREATE TABLE Assists (
    EmployeeID INT,
    CustomerID INT,
    PRIMARY KEY (EmployeeID, CustomerID),
    FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)
        ON DELETE CASCADE ON UPDATE CASCADE
);
