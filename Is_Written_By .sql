CREATE TABLE Is_Written_By (
    BookID INT,
    AuthorID INT,
    PRIMARY KEY (BookID, AuthorID),
    FOREIGN KEY (BookID) REFERENCES Book(BookID)
    FOREIGN KEY (AuthorID) REFERENCES Author(AuthorID)
);
