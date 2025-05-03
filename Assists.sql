CREATE TABLE Assists (
    EmployeeID INT,
    CustomerID INT,
    PRIMARY KEY (EmployeeID, CustomerID),
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);
