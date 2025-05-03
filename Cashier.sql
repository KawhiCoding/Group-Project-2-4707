CREATE TABLE Cashier (
    RegisterNumber INT PRIMARY KEY,
    CashierID INT,
    FOREIGN KEY (CashierID) REFERENCES Employee(EmployeeID)
);