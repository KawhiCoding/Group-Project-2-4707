CREATE TABLE Managed_By (
    EmployeeID INT PRIMARY KEY,
    ManagerID INT,
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID),
    FOREIGN KEY (ManagerID) REFERENCES Managers(ManagerID)
);
