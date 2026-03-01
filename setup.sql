-- ================================================
-- Database Integration Project - Setup Script
-- MuleSoft Portfolio | Kamlikar Jashwanth
-- ================================================

-- Create Database
CREATE DATABASE IF NOT EXISTS mulesoft_portfolio;
USE mulesoft_portfolio;

-- Create Employees Table
CREATE TABLE IF NOT EXISTS employees (
    id          INT AUTO_INCREMENT PRIMARY KEY,
    name        VARCHAR(100) NOT NULL,
    department  VARCHAR(50)  NOT NULL,
    email       VARCHAR(100) UNIQUE NOT NULL,
    salary      DECIMAL(10, 2) NOT NULL,
    created_at  TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Sample Data
INSERT INTO employees (name, department, email, salary) VALUES
('Kamlikar Jashwanth', 'IT',      'jashwanth@example.com', 75000.00),
('Priya Sharma',       'HR',      'priya@example.com',     55000.00),
('Rahul Kumar',        'IT',      'rahul@example.com',     90000.00),
('Sneha Reddy',        'Finance', 'sneha@example.com',     65000.00),
('Arjun Mehta',        'IT',      'arjun@example.com',     82000.00);

-- Verify
SELECT * FROM employees;
