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