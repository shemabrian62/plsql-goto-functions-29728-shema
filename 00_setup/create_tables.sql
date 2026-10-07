DROP TABLE employees;
DROP TABLE departments;

CREATE TABLE employees (
    employee_id NUMBER PRIMARY KEY,
    first_name VARCHAR2(50),
    last_name VARCHAR2(50),
    department_id NUMBER,
    salary NUMBER(10,2),
    hire_date DATE
);

CREATE TABLE departments (
    department_id NUMBER PRIMARY KEY,
    department_name VARCHAR2(100)
);

INSERT INTO departments VALUES (10, 'IT');
INSERT INTO departments VALUES (20, 'Finance');
INSERT INTO departments VALUES (30, 'Human Resources');
INSERT INTO departments VALUES (40, 'Marketing');

INSERT INTO employees VALUES (1, 'Ben', 'Mugisha', 10, 500000, DATE '2023-01-15');
INSERT INTO employees VALUES (2, 'John', 'Musa', 20, 700000, DATE '2021-06-10');
INSERT INTO employees VALUES (3, 'Alice', 'Uwase', 30, 450000, DATE '2024-02-20');
INSERT INTO employees VALUES (4, 'David', 'Niyonzima', 40, 900000, DATE '2019-09-05');

COMMIT;

SELECT * FROM departments;
SELECT * FROM employees;