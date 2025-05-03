-- Contains all relationship tables with corrected foreign key references
CREATE TABLE Is_Paid_By (
    OrderID INT,
    PaymentID INT,
    PRIMARY KEY (OrderID, PaymentID),
    FOREIGN KEY (OrderID) REFERENCES `Order`(OrderID),
    FOREIGN KEY (PaymentID) REFERENCES Payment(PaymentID)
);

CREATE TABLE Handles (
    EmployeeID INT,
    OrderID INT,
    PRIMARY KEY (EmployeeID, OrderID),
    FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID),
    FOREIGN KEY (OrderID) REFERENCES `Order`(OrderID)
);

CREATE TABLE Serves_As (
    CashierID INT PRIMARY KEY,
    EmployeeID INT UNIQUE,
    FOREIGN KEY (CashierID) REFERENCES Cashier(CashierID),
    FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID)
);

CREATE TABLE Managed_By (
    EmployeeID INT PRIMARY KEY,
    ManagerID INT,
    FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID),
    FOREIGN KEY (ManagerID) REFERENCES Manager(ManagerID)
);

CREATE TABLE Supervises (
    ManagerID INT,
    EmployeeID INT,
    PRIMARY KEY (ManagerID, EmployeeID),
    FOREIGN KEY (ManagerID) REFERENCES Manager(ManagerID),
    FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID)
);

CREATE TABLE Contains_by (
    OrderID INT,
    OrderBookID INT,
    PRIMARY KEY (OrderID, OrderBookID),
    FOREIGN KEY (OrderID) REFERENCES `Order`(OrderID),
    FOREIGN KEY (OrderBookID) REFERENCES Order_Book(OrderID)
);

CREATE TABLE Handles_Order (
    CustomerID INT,
    OrderID INT,
    PRIMARY KEY (CustomerID, OrderID),
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID),
    FOREIGN KEY (OrderID) REFERENCES `Order`(OrderID)
);

CREATE TABLE Contains_Books (
    InventoryID INT,
    BookID INT,
    PRIMARY KEY (InventoryID, BookID),
    FOREIGN KEY (InventoryID) REFERENCES Inventory(InventoryID),
    FOREIGN KEY (BookID) REFERENCES Book(BookID)
);

CREATE TABLE Has_Inventory_Entry (
    InventoryID INT,
    BookID INT,
    PRIMARY KEY (InventoryID, BookID),
    FOREIGN KEY (InventoryID) REFERENCES Inventory(InventoryID),
    FOREIGN KEY (BookID) REFERENCES Book(BookID)
);

CREATE TABLE Is_Written_By (
    BookID INT,
    AuthorID INT,
    PRIMARY KEY (BookID, AuthorID),
    FOREIGN KEY (BookID) REFERENCES Book(BookID),
    FOREIGN KEY (AuthorID) REFERENCES Author(AuthorID)
);

CREATE TABLE Is_Supplied_By (
    BookID INT,
    SupplierID INT,
    PRIMARY KEY (BookID, SupplierID),
    FOREIGN KEY (BookID) REFERENCES Book(BookID),
    FOREIGN KEY (SupplierID) REFERENCES Supplier(SupplierID)
);

CREATE TABLE Supplied_By (
    BookSupplierID INT,
    SupplierID INT,
    PRIMARY KEY (BookSupplierID, SupplierID),
    FOREIGN KEY (BookSupplierID) REFERENCES Book_Supplier(BookID),
    FOREIGN KEY (SupplierID) REFERENCES Supplier(SupplierID)
);

CREATE TABLE Written_By (
    BookAuthorID INT,
    AuthorID INT,
    PRIMARY KEY (BookAuthorID, AuthorID),
    FOREIGN KEY (BookAuthorID) REFERENCES Book_Author(BookID),
    FOREIGN KEY (AuthorID) REFERENCES Author(AuthorID)
);

CREATE TABLE Assists (
    EmployeeID INT,
    CustomerID INT,
    PRIMARY KEY (EmployeeID, CustomerID),
    FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID),
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)
);

CREATE TABLE Write (
    BookID INT,
    AuthorID INT,
    PRIMARY KEY (BookID, AuthorID),
    FOREIGN KEY (BookID) REFERENCES Book(BookID),
    FOREIGN KEY (AuthorID) REFERENCES Author(AuthorID)
);

CREATE TABLE Contain_Order (
    BookID INT,
    OrderID INT,
    PRIMARY KEY (BookID, OrderID),
    FOREIGN KEY (BookID) REFERENCES Book(BookID),
    FOREIGN KEY (OrderID) REFERENCES `Order`(OrderID)
);