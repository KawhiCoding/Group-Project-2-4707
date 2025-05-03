CREATE TABLE Serves_As (
    CashierID INT PRIMARY KEY,
    EmployeeID INT UNIQUE,
    FOREIGN KEY (CashierID) REFERENCES Cashiers(CashierID),
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);
