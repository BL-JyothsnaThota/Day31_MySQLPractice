//
CREATE DATABASE payroll_service;
SHOW DATABASES;
USE payroll_service;

CREATE TABLE employee_payroll (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    salary DOUBLE,
    start DATE
);

INSERT INTO employee_payroll (name, salary, start) VALUES
('Bill', 100000, '2018-01-03'),
('Charlie', 120000, '2019-11-13'),
('Terisa', 90000, '2020-05-21');

SELECT * FROM employee_payroll;