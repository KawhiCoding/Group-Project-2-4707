CREATE TABLE `Order` (
    OrderID INT PRIMARY KEY,
    OrderDate DATE NOT NULL,
    ShippingDate DATE,
    PaymentDate DATE,
    PaymentID INT,
    CustomerID INT,
    FOREIGN KEY (PaymentID) REFERENCES Payment(PaymentID)
        ON DELETE SET NULL ON UPDATE CASCADE,
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)
        ON DELETE CASCADE ON UPDATE CASCADE
);