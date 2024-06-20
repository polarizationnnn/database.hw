USE CarCompany;

-- 插入品牌
INSERT INTO Brand (Brand_Name) VALUES ('Volkswagen'), ('Audi');

-- 插入車型
INSERT INTO Model (Brand_ID, Model_Name, Body_Style) VALUES 
(1, 'Golf', 'Hatchback'), 
(1, 'Passat', 'Sedan'),
(2, 'A4', 'Sedan'),
(2, 'Q7', 'SUV');

-- 插入經銷商
INSERT INTO Dealer (Dealer_Name, Address, Phone) VALUES 
('BestCars', '123 Main St', '555-1234'),
('AutoHub', '456 Side St', '555-5678');

-- 插入客戶
INSERT INTO Customer (Name, Address, Phone, Gender, Annual_Income) VALUES 
('John Doe', '456 Elm St', '555-5678', 'M', 50000),
('Jane Smith', '789 Pine St', '555-8765', 'F', 60000);

-- 插入車輛
INSERT INTO Vehicle (VIN, Model_ID, Color, Engine, Transmission, Dealer_ID, Customer_ID, Sale_Date) VALUES 
('1HGBH41JXMN109186', 1, 'Red', '2.0L', 'Manual', 1, 1, '2023-05-20'),
('2HGBH41JXMN109187', 2, 'Blue', '2.0L', 'Automatic', 2, 2, '2023-06-15');

-- 插入供應商
INSERT INTO Supplier (Supplier_Name, Address, Phone) VALUES 
('Getrag', '789 Industrial Rd', '555-1111'),
('Bosch', '456 Manufacturing Ave', '555-2222');

-- 插入工廠
INSERT INTO Plant (Plant_Name, Location) VALUES 
('Main Plant', 'Detroit'),
('Auxiliary Plant', 'Chicago');

-- 插入供應關係
INSERT INTO Supplies (Supplier_ID, Model_ID, Part_Type) VALUES 
(1, 1, 'Transmission'),
(2, 2, 'Engine');

-- 插入庫存
INSERT INTO Inventory (Dealer_ID, VIN, In_Stock_Date) VALUES 
(1, '1HGBH41JXMN109186', '2023-01-01'),
(2, '2HGBH41JXMN109187', '2023-02-01');
