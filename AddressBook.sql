CREATE DATABASE address_book_service;
USE address_book_service;

CREATE TABLE address_book (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    address VARCHAR(255),
    city VARCHAR(50),
    state VARCHAR(50),
    zip VARCHAR(10),
    phone VARCHAR(15),
    email VARCHAR(100)
);

INSERT INTO address_book 
(first_name, last_name, address, city, state, zip, phone, email)
VALUES
('John', 'Doe', 'Street 1', 'Chennai', 'TN', '600001', '9876543210', 'john@gmail.com'),
('Jane', 'Smith', 'Street 2', 'Bangalore', 'KA', '560001', '9876543211', 'jane@gmail.com');

UPDATE address_book
SET city = 'Hyderabad'
WHERE first_name = 'John';

DELETE FROM address_book
WHERE first_name = 'Jane';

SELECT * FROM address_book
WHERE city = 'Chennai' OR state = 'TN';

SELECT city, COUNT(*) 
FROM address_book
GROUP BY city;

SELECT state, COUNT(*) 
FROM address_book
GROUP BY state;

SELECT * FROM address_book
WHERE city = 'Chennai'
ORDER BY first_name ASC;

ALTER TABLE address_book
ADD book_name VARCHAR(50),
ADD type VARCHAR(50);

SELECT type, COUNT(*)
FROM address_book
GROUP BY type;

CREATE TABLE contact_type (
    contact_id INT,
    type VARCHAR(50),
    FOREIGN KEY (contact_id) REFERENCES address_book(id)
);

INSERT INTO contact_type VALUES (1, 'Friend');
INSERT INTO contact_type VALUES (1, 'Family');