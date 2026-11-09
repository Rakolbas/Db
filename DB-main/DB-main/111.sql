CREATE DATABASE laba2;

CREATE TABLE Reader (
    id_reader INT PRIMARY KEY,
    FIO VARCHAR(255) NOT NULL,
    Phone VARCHAR(11)
);
INSERT INTO Reader (id_reader, fio, Phone) VALUES
(1, 'Анна Петрова', '89991112233')
(2, 'Иван Соколов', '89002223344'),
(3, 'Мария Ким', '89003334455'),
(4, 'Олег Васильев', '89004445566');

CREATE TABLE Book (
    isbn_Book INT PRIMARY KEY,
    name_book VARCHAR(255),
    date_book DATE
);
INSERT INTO Book (isbn_book, name_book, date_book) VALUES
(1, 'Мастер и Маргарита', '1967-01-01'),
(2, 'Преступление и наказание', '1866-01-01'),
(3, 'Война и мир', '1869-01-01'),
(4, 'Золотой теленок', '1931-01-01'),
(5, 'Пикник на обочине', '1972-01-01');
CREATE TABLE Author (
    id_author INT PRIMARY KEY,
    FIO_A VARCHAR(255)
);
INSERT INTO Author (id_author, fio_a) VALUES
(1, 'Михаил Булгаков'),
(2, 'Федор Достоевский'),
(3, 'Лев Толстой'),
(4, 'Илья Ильф'),
(5, 'Евгений Петров'),
(6, 'Аркадий Стругацкий'),
(7, 'Борис Стругацкий');
CREATE TABLE AuthorSHIP (
    id_author INT,
    isbn_Book INT,
    PRIMARY KEY(id_author, isbn_Book),
    FOREIGN KEY (id_author) REFERENCES Author(id_author),
    FOREIGN KEY (isbn_Book) REFERENCES Book(isbn_Book)
);
INSERT INTO Authorship (id_author, isbn_book) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 4),
(6, 5),
(7, 5);
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
INSERT INTO LOAN (id_loan, id_reader, isbn_book, date_loan, date_return, data_fact_return) VALUES
(3, 2, 3, '2026-01-02', '2026-02-02', '2026-01-10'),
(4, 3, 4, '2026-01-03', '2026-02-03', '2026-01-15'),
(5, 2, 4, '2026-01-16', '2026-02-16', '2026-01-25'),
(6, 3, 3, '2026-01-11', '2026-02-11', '2026-01-20'),
(1, 1, 1, '2026-01-01', '2026-02-01', '2026-02-15'),
(2, 1, 2, '2026-01-01', '2026-02-01', '2026-11-02');
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



"7 лаба"

SELECT * FROM Reader;

SELECT name_book, date_book FROM Book;

SELECT name_book, date_book 
FROM Book 
WHERE date_book BETWEEN '1801-01-01' AND '1900-12-31';

SELECT * 
FROM Book 
WHERE date_book BETWEEN '1917-01-01' AND '1991-12-31';

SELECT * 
FROM Reader 
WHERE fio LIKE '%ов%';

SELECT * 
FROM LOAN 
WHERE data_fact_return IS NULL;

SELECT name_book, date_book 
FROM Book 
ORDER BY name_book ASC;

SELECT * 
FROM LOAN 
WHERE data_fact_return IS NULL 
ORDER BY date_return ASC;

SELECT * 
FROM Book 
ORDER BY date_book DESC 
LIMIT 3;