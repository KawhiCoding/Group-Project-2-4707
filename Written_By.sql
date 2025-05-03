CREATE TABLE Written_By (
    BookAuthorID INT,
    AuthorID INT,
    PRIMARY KEY (BookAuthorID, AuthorID),
    FOREIGN KEY (BookAuthorID) REFERENCES Book_Author(BookAuthorID),
    FOREIGN KEY (AuthorID) REFERENCES Authors(AuthorID)
);
