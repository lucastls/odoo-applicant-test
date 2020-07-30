CERATE DATABASE casai_test_db;

CREATE TABLE employee (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR (50),
    last_name VARCHAR (50),
    FOREIGN KEY (department_id) REFERENCES employee_department (id)
);

CREATE TABLE employee_department (
    id SERIAL PRIMARY KEY,
    name VARCHAR (50),
    description VARCHAR (500),
);

INSERT INTO employee_department ('IT', 'IT Department of Casai');
INSERT INTO employee_department ('Department 1', 'Department 1 of Casai');
INSERT INTO employee_department ('Department 2', 'Department 2 of Casai');
INSERT INTO employee_department ('Department 3', 'Department 3 of Casai');
INSERT INTO employee_department ('Department 4', 'Department 4 of Casai');
INSERT INTO employee_department ('Department 5', 'Department 5 of Casai');
INSERT INTO employee_department ('Department 6', 'Department 6 of Casai');
INSERT INTO employee_department ('Department 7', 'Department 7 of Casai');

INSERT INTO employee ('Lucas', 'Santos', 1);
INSERT INTO employee ('João', 'Silva', 2);
INSERT INTO employee ('Maria', 'Silva', 3);
INSERT INTO employee ('Marina', 'Silva', 4);
INSERT INTO employee ('Gabriel', 'Silva', 5);