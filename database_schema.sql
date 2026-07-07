CREATE TABLE Suppliers (
    supplierID INT PRIMARY KEY,
    supplier_name VARCHAR(100),
    supplier_contact_details VARCHAR(100)
);


CREATE TABLE Inventory (
    productID INT PRIMARY KEY,
    product_name VARCHAR(100),
    product_category VARCHAR(50),
    price DECIMAL(10,2),
    stock_count INT,
    supplierID INT,
    point_value INT,
    FOREIGN KEY (supplierID) REFERENCES Suppliers(supplierID)
);


CREATE TABLE Loyalty (
    membership_no INT PRIMARY KEY,
    membership_status VARCHAR(20),
    points_total INT,
    date_joined DATE
);


CREATE TABLE Customer (
    customerID INT PRIMARY KEY,
    customer_name VARCHAR(100),
    phone_number VARCHAR(20),
    email VARCHAR(100),
    membership_no INT,
    FOREIGN KEY (membership_no) REFERENCES Loyalty(membership_no)
);


CREATE TABLE Sales (
    transactionID INT PRIMARY KEY,
    transaction_date DATE,
    productID INT,
    customerID INT,
    qty INT,
    total_value DECIMAL(10,2),
    points_earned INT,
    FOREIGN KEY (productID) REFERENCES Inventory(productID),
    FOREIGN KEY (customerID) REFERENCES Customer(customerID)
);
