CREATE TABLE `Order` (
    OrderID INT PRIMARY KEY,
    OrderDate DATE,
    ShippingDate DATE,
    PaymentDate DATE,
    PaymentID INT,
    CustomerID INT,
    FOREIGN KEY (PaymentID) REFERENCES Payment(PaymentID),
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)
);