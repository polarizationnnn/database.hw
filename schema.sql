-- 創建數據庫
CREATE DATABASE CarCompany;
USE CarCompany;

-- 創建品牌表
CREATE TABLE Brand (
    Brand_ID INT PRIMARY KEY AUTO_INCREMENT,
    Brand_Name VARCHAR(50) NOT NULL
);

-- 創建車型表
CREATE TABLE Model (
    Model_ID INT PRIMARY KEY AUTO_INCREMENT,
    Brand_ID INT,
    Model_Name VARCHAR(50) NOT NULL,
    Body_Style VARCHAR(50),
    FOREIGN KEY (Brand_ID) REFERENCES Brand(Brand_ID)
);

-- 創建經銷商表
CREATE TABLE Dealer (
    Dealer_ID INT PRIMARY KEY AUTO_INCREMENT,
    Dealer_Name VARCHAR(50) NOT NULL,
    Address VARCHAR(100),
    Phone VARCHAR(20)
);

-- 創建客戶表
CREATE TABLE Customer (
    Customer_ID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(50) NOT NULL,
    Address VARCHAR(100),
    Phone VARCHAR(20),
    Gender CHAR(1),
    Annual_Income DECIMAL(10, 2)
);

-- 創建供應商表
CREATE TABLE Supplier (
    Supplier_ID INT PRIMARY KEY AUTO_INCREMENT,
    Supplier_Name VARCHAR(50) NOT NULL,
    Address VARCHAR(100),
    Phone VARCHAR(20)
);

-- 創建工廠表
CREATE TABLE Plant (
    Plant_ID INT PRIMARY KEY AUTO_INCREMENT,
    Plant_Name VARCHAR(50) NOT NULL,
    Location VARCHAR(50)
);

-- 創建車輛表
CREATE TABLE Vehicle (
    VIN VARCHAR(17) PRIMARY KEY,
    Model_ID INT,
    Color VARCHAR(20),
    Engine VARCHAR(50),
    Transmission VARCHAR(50),
    Dealer_ID INT,
    Customer_ID INT,
    Sale_Date DATE,
    FOREIGN KEY (Model_ID) REFERENCES Model(Model_ID),
    FOREIGN KEY (Dealer_ID) REFERENCES Dealer(Dealer_ID),
    FOREIGN KEY (Customer_ID) REFERENCES Customer(Customer_ID)
);

-- 創建供應表
CREATE TABLE Supplies (
    Supplier_ID INT,
    Model_ID INT,
    Part_Type VARCHAR(50),
    PRIMARY KEY (Supplier_ID, Model_ID),
    FOREIGN KEY (Supplier_ID) REFERENCES Supplier(Supplier_ID),
    FOREIGN KEY (Model_ID) REFERENCES Model(Model_ID)
);

-- 創建庫存表
CREATE TABLE Inventory (
    Dealer_ID INT,
    VIN VARCHAR(17),
    In_Stock_Date DATE,
    PRIMARY KEY (Dealer_ID, VIN),
    FOREIGN KEY (Dealer_ID) REFERENCES Dealer(Dealer_ID),
    FOREIGN KEY (VIN) REFERENCES Vehicle(VIN)
);
