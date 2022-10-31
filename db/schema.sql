CREATE DATABASE myWorkers_db;

DROP DATABASE IF EXISTS myWorkers_db;

CREATE DATABASE myWorkers_db;

USE myWorkers_db;

CREATE TABLE
    department(
        id INTEGER NOT NULL AUTO_INCREMENT,
        name VARCHAR(30) NULL,
        PRIMARY KEY (id)
    );

CREATE TABLE
    role (
        id INTEGER NOT NULL AUTO_INCREMENT,
        title VARCHAR(30) NULL,
        salary DECIMAL(10.3) NULL,
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