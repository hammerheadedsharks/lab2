-- 1. Create 'department' and 'employees' tables
CREATE TABLE department (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(20),
    dep_location VARCHAR(15)
);

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(15),
    job_name VARCHAR(10),
    manager_id INT,
    hire_date DATE,
    salary DECIMAL(10, 2),
    commission DECIMAL(7, 2),
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES department(dept_id), -- Establish relationship
    FOREIGN KEY (manager_id) REFERENCES employees(emp_id) -- For self-referencing
);

-- 2. Insert 4 records into 'department' table
INSERT INTO department (dept_id, dept_name, dep_location)
VALUES (10, 'Accounting', 'New York'),
       (20, 'Research', 'Dallas'),
       (30, 'Sales', 'Chicago'),
       (40, 'Operations', 'Boston');

-- 3. Insert 14 records into 'employees' table (Data not provided in image, using placeholders)
INSERT INTO employees (emp_id, emp_name, job_name, manager_id, hire_date, salary, commission, dept_id)
VALUES (7369, 'SMITH', 'CLERK', 7902, '1980-12-17', 800.00, NULL, 20),
       (7499, 'ALLEN', 'SALESMAN', 7698, '1981-02-20', 1600.00, 300.00, 30),
        -- ... (Add 12 more employee records with your data)
