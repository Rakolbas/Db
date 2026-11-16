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
