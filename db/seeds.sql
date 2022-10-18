USE myWorkers_db;

INSERT INTO department (name) VALUES ("Sales");

INSERT INTO department (name) VALUES ("Management");

INSERT INTO department (name) VALUES ("Finance");

INSERT INTO department (name) VALUES ("Service");

INSERT INTO
    roles (title, salary, department_id)
VALUES ("Sales Lead", 100000, 1);

INSERT INTO
    roles (title, salary, department_id)
VALUES ("Manager", 150000, 2);

INSERT INTO
    roles (title, salary, department_id)
VALUES ("Assistant Manager", 120000, 2);

INSERT INTO
    roles (title, salary, department_id)
VALUES ("Accountant", 125000, 3);

INSERT INTO
    roles (title, salary, department_id)
VALUES ("Service Lead", 250000, 4);

INSERT INTO
    employee (
        first_name,
        last_name,
        roles_id,
        manager_id
    )
VALUES ("Nico", "Sampson", 1, 3);

INSERT INTO
    employee (
        first_name,
        last_name,
        roles_id,
        manager_id
    )
VALUES ("Troy", "Brodt", 2, 1);

INSERT INTO
    employee (
        first_name,
        last_name,
        roles_id,
        manager_id
    )
VALUES ("Keegan", "Dunham", 3, null);

INSERT INTO
    employee (
        first_name,
        last_name,
        roles_id,
        manager_id
    )
VALUES ("Cameron", "Flood", 4, 3);

INSERT INTO
    employee (
        first_name,
        last_name,
        roles_id,
        manager_id
    )
VALUES ("Daniel", "Maier", 5, null);

INSERT INTO
    employee (
        first_name,
        last_name,
        roles_id,
        manager_id
    )
VALUES ("Sterling", "Jefferey", 2, null);

INSERT INTO
    employee (
        first_name,
        last_name,
        roles_id,
        manager_id
    )
VALUES ("Joe", "Bernales", 4, 7);

INSERT INTO
    employee (
        first_name,
        last_name,
        roles_id,
        manager_id
    )
VALUES ("Bill", "Schat", 1, 2);