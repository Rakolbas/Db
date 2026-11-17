10 лаба
1
CREATE TABLE Projects (
    project_id INT PRIMARY KEY,
    project_name VARCHAR(255) NOT NULL
);
CREATE TABLE ProjectMembers (
    member_id INT PRIMARY KEY,
    project_id INT NOT NULL,
    member_name VARCHAR(255) NOT NULL,
    FOREIGN KEY (project_id) REFERENCES Projects(project_id)
);
2
CREATE TABLE Clients (
    client_id INT PRIMARY KEY,
    client_name VARCHAR(255) NOT NULL,
    client_email VARCHAR(255) NOT NULL
);

CREATE TABLE Equipment (
    equipment_id INT PRIMARY KEY,
    equipment_name VARCHAR(255) NOT NULL
);

CREATE TABLE EquipmentRentals (
    client_id INT,
    equipment_id INT,
    rental_date DATE NOT NULL,
    PRIMARY KEY (client_id, equipment_id),
    FOREIGN KEY (client_id) REFERENCES Clients(client_id),
    FOREIGN KEY (equipment_id) REFERENCES Equipment(equipment_id)
);


11 лаба
1
CREATE TABLE Publishers (
    publisher_id INT PRIMARY KEY,
    publisher_name VARCHAR(255) NOT NULL,
    publisher_city VARCHAR(100) NOT NULL
);


CREATE TABLE Books (
    book_id INT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    author_name VARCHAR(255) NOT NULL,
    publisher_id INT,
    FOREIGN KEY (publisher_id) REFERENCES Publishers(publisher_id)
);
2

CREATE TABLE Cars (
    car_model VARCHAR(100) PRIMARY KEY,
    car_manufacturer VARCHAR(100) NOT NULL
);

-- Таблица результатов заездов
CREATE TABLE RaceResults (
    race_id INT,
    driver_id INT,
    car_model VARCHAR(100) NOT NULL,
    finish_time TIME NOT NULL,
    PRIMARY KEY (race_id, driver_id),
    FOREIGN KEY (car_model) REFERENCES Cars(car_model)
);
