CREATE TABLE Supervises (
    ManagerID INT,
    EmployeeID INT,
    PRIMARY KEY (ManagerID, EmployeeID),
    FOREIGN KEY (ManagerID) REFERENCES Managers(ManagerID),
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);
