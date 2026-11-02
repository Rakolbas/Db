CREATE DATABASE laba2;

CREATE TABLE Reader (
    id_reader INT PRIMARY KEY,
    FIO VARCHAR(255) NOT NULL,
    Phone VARCHAR(11)
);

CREATE TABLE Book (
    isbn_Book INT PRIMARY KEY,
    name_book VARCHAR(255),
    date_book DATE
)
;
CREATE TABLE Author (
    id_author INT PRIMARY KEY,
    FIO_A VARCHAR(255)
);
CREATE TABLE AuthorSHIP (
    id_author INT,
    isbn_Book INT,
    PRIMARY KEY(id_author, isbn_Book),
    FOREIGN KEY (id_author) REFERENCES Author(id_author),
    FOREIGN KEY (isbn_Book) REFERENCES Book(isbn_Book)
);
CREATE TABLE LOAN(
    id_loan INT PRIMARY KEY,
    id_reader INT,
    isbn_Book INT,
    FOREIGN KEY (id_reader) REFERENCES Reader(id_reader),
    FOREIGN KEY (isbn_Book) REFERENCES Book(isbn_Book),
    date_loan DATE NOT NULL,
    date_return DATE NOT NULL,
    date_fact_return DATE
);
UPDATE Reader 
SET Phone = '89991112233' 
WHERE id_reader = 1;

UPDATE LOAN 
SET date_fact_return = '2026-11-02' 
WHERE id_loan = 2;
INSERT INTO Reader (id_reader, FIO, Phone) 
VALUES (5, 'Тестов Тест Тестович', '80000000000');

DELETE FROM Reader 
WHERE id_reader = 5;