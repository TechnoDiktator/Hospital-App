-- Create the database if not exists
CREATE DATABASE IF NOT EXISTS hospitaldb;
USE hospitaldb;

-- Create user_dtls table for patients/users
CREATE TABLE user_dtls (
    id INT PRIMARY KEY AUTO_INCREMENT,
    full_name VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL
);

-- Create doctor table
CREATE TABLE doctor (
    id INT PRIMARY KEY AUTO_INCREMENT,
    full_name VARCHAR(255) NOT NULL,
    dob VARCHAR(255),
    qualification VARCHAR(255),
    specialist VARCHAR(255),
    email VARCHAR(255) UNIQUE NOT NULL,
    mobno VARCHAR(20),
    password VARCHAR(255)
);

-- Create specialist table
CREATE TABLE specialist (
    id INT PRIMARY KEY AUTO_INCREMENT,
    spec_name VARCHAR(255)
);

-- Create appointment table
CREATE TABLE appointment (
    id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    full_name VARCHAR(255),
    gender VARCHAR(10),
    age VARCHAR(10),
    appoint_date VARCHAR(255),
    email VARCHAR(255),
    phno VARCHAR(20),
    diseases VARCHAR(255),
    doctor_id INT,
    address VARCHAR(255),
    status VARCHAR(50),
    FOREIGN KEY (user_id) REFERENCES user_dtls(id),
    FOREIGN KEY (doctor_id) REFERENCES doctor(id)
);

-- Insert some initial specialist categories
INSERT INTO specialist (spec_name) VALUES 
('Cardiologist'),
('Dermatologist'),
('General Physician'),
('Orthopedist'),
('Pediatrician');

-- Create admin credentials (if needed)
CREATE TABLE admin (
    id INT PRIMARY KEY AUTO_INCREMENT,
    email VARCHAR(255) UNIQUE,
    password VARCHAR(255)
);

-- Insert default admin
INSERT INTO admin (email, password) VALUES ('admin@hospital.com', 'admin123');