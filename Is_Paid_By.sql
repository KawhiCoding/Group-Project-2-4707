CREATE TABLE Is_Paid_By (
    OrderID INT,
    PaymentID INT,
    PRIMARY KEY (OrderID, PaymentID),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (PaymentID) REFERENCES Payments(PaymentID)
);
