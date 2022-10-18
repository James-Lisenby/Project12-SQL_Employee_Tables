CREATE DATABASE myWorkers.db;

DROP DATABASE IF EXISTS myWorkers.db;

CREATE DATABASE myWorkers.db;

USE myWorkers.db;

SELECT DATABASE();

CREATE TABLE
    departments(
        id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
        name VARCHAR(30) NULL,
        PRIMARY KEY (id)
    );

CREATE TABLE
    role(
        id NOT NULL AUTO_INCREMENT,
        title VARCHAR(30) NULL,
        salary DECIMAL NULL,
        department_id INT NULL,
        PRIMARY KEY(id)
    );

CREATE TABLE
    employee(
        id INT NOT NULL AUTO_INCREMENT,
        first_name VARCHAR(30) NULL,
        last_name VARCHAR(30) NULL,
        role_id INT NULL,
        manager_id INT NULL,
        PRIMARY KEY(id)
    );