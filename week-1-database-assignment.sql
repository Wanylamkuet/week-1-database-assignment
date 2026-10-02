
CREATE DATABASE  hospital_db;

USE hospital_db;

CREATE TABLE  departments (
    department_id INT AUTO_INCREMENT PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL,
    location VARCHAR(50) NOT NULL
);

CREATE TABLE  doctors (
    doctor_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    specialty VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES departments(department_id) ON DELETE SET NULL
);

INSERT INTO departments (department_name, location) 
VALUES 
    ('Cardiology', 'Building A, Floor 2'),
    ('Pediatrics', 'Building B, Floor 1'),
    ('Neurology', 'Building A, Floor 3');

INSERT INTO doctors (first_name, last_name, specialty, email, department_id) 
VALUES 
    ('Sarah', 'Connor', 'Cardiologist', 's.connor@hospital.com', 1),
    ('John', 'Smith', 'Pediatrician', 'j.smith@hospital.com', 2),
    ('Emily', 'Watson', 'Neurologist', 'e.watson@hospital.com', 3);
    
SELECT * FROM departments;
SELECT * FROM doctors;