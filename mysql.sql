CREATE DATABASE online_banking;
USE online_banking;

CREATE TABLE customers (
    account_no BIGINT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    mobile VARCHAR(15),
    email VARCHAR(100),
    address VARCHAR(255),
    account_type VARCHAR(30),
    pin VARCHAR(10) NOT NULL,
    balance DECIMAL(12,2) DEFAULT 0.00
);

CREATE TABLE transactions (
    transaction_id INT AUTO_INCREMENT PRIMARY KEY,
    account_no BIGINT,
    transaction_type VARCHAR(30),
    amount DECIMAL(12,2),
    balance_after DECIMAL(12,2),
    description VARCHAR(255),
    transaction_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (account_no) REFERENCES customers(account_no)
);