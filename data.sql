USE CarCompany;

-- 插入品牌
INSERT INTO Brand (Brand_Name) VALUES ('Volkswagen'), ('Audi'),('Toyota'), ('Ford'), ('Chevrolet');

-- 插入車型
INSERT INTO Model (Brand_ID, Model_Name, Body_Style) VALUES
(1, 'Golf', 'Hatchback'),
(1, 'Passat', 'Sedan'),
(2, 'A4', 'Sedan'),
(2, 'Q7', 'SUV'),
(2, 'A3', 'Hatchback'),
(3, 'Corolla', 'Sedan'),
(3, 'Camry', 'Sedan'),
(3, 'RAV4', 'SUV'),
(4, 'Focus', 'Hatchback'),
(4, 'Mustang', 'Coupe'),
(4, 'Explorer', 'SUV'),
(5, 'Cruze', 'Sedan'),
(5, 'Malibu', 'Sedan'),
(5, 'Equinox', 'SUV');

-- 插入經銷商
INSERT INTO Dealer (Dealer_Name, Address, Phone) VALUES
('BestCars', '123 Main St', '555-1234'),
('AutoHub', '456 Side St', '555-5678'),
('CarWorld', '789 Broad St', '555-8765'),
('SuperAutos', '101 First Ave', '555-2345'),
('MegaMotors', '202 Second Ave', '555-3456');

-- 插入客戶
INSERT INTO Customer (Name, Address, Phone, Gender, Annual_Income) VALUES
('John Doe', '456 Elm St', '555-5678', 'M', 50000),
('Jane Smith', '789 Pine St', '555-8765', 'F', 60000),
('Alice Johnson', '123 Oak St', '555-1122', 'F', 70000),
('Bob Brown', '234 Maple St', '555-2233', 'M', 55000),
('Charlie Davis', '345 Cedar St', '555-3344', 'M', 80000),
('Diana Evans', '456 Birch St', '555-4455', 'F', 75000),
('Ethan Foster', '567 Spruce St', '555-5566', 'M', 62000),
('Fiona Green', '678 Willow St', '555-6677', 'F', 65000),
('George Harris', '789 Poplar St', '555-7788', 'M', 59000),
('Hannah Ives', '890 Ash St', '555-8899', 'F', 71000);

-- 插入車輛
INSERT INTO Vehicle (VIN, Model_ID, Color, Engine, Transmission, Dealer_ID, Customer_ID, Sale_Date) VALUES
('1HGBH41JXMN109186', 1, 'Red', '2.0L', 'Manual', 1, 1, '2023-05-20'),
('2HGBH41JXMN109187', 2, 'Blue', '2.0L', 'Automatic', 2, 2, '2023-06-15'),
('3HGBH41JXMN109188', 3, 'Black', '2.5L', 'Manual', 3, 3, '2023-07-10'),
('4HGBH41JXMN109189', 4, 'White', '1.8L', 'Automatic', 4, 4, '2023-08-25'),
('5HGBH41JXMN109190', 5, 'Green', '2.0L', 'Manual', 5, 5, '2023-09-15'),
('6HGBH41JXMN109191', 6, 'Silver', '2.0L', 'Automatic', 1, 6, '2023-10-05'),
('7HGBH41JXMN109192', 7, 'Blue', '1.6L', 'Manual', 2, 7, '2023-11-20'),
('8HGBH41JXMN109193', 8, 'Red', '2.5L', 'Automatic', 3, 8, '2023-12-30'),
('9HGBH41JXMN109194', 9, 'Yellow', '2.0L', 'Manual', 4, 9, '2024-01-10'),
('10HGBH41JXMN109195', 10, 'Black', '1.6L', 'Automatic', 5, 10, '2024-02-20'),
('11HGBH41JXMN109196', 11, 'White', '2.3L', 'Manual', 1, 1, '2024-03-15'),
('12HGBH41JXMN109197', 12, 'Silver', '2.5L', 'Automatic', 2, 2, '2024-04-10'),
('13HGBH41JXMN109198', 13, 'Blue', '2.0L', 'Manual', 3, 3, '2024-05-25'),
('14HGBH41JXMN109199', 14, 'Green', '2.4L', 'Automatic', 4, 4, '2024-06-20'),
('15HGBH41JXMN109200', 15, 'Yellow', '2.2L', 'Manual', 5, 5, '2024-07-15');

-- 插入供應商
INSERT INTO Supplier (Supplier_Name, Address, Phone) VALUES
('Getrag', '789 Industrial Rd', '555-1111'),
('Bosch', '456 Manufacturing Ave', '555-2222'),
('Continental', '101 Tech Blvd', '555-3333'),
('Denso', '202 Auto Pkwy', '555-4444'),
('Magna', '303 Industry St', '555-5555');

-- 插入工廠
INSERT INTO Plant (Plant_Name, Location) VALUES
('Main Plant', 'Detroit'),
('Auxiliary Plant', 'Chicago'),
('East Plant', 'New York'),
('West Plant', 'Los Angeles'),
('South Plant', 'Houston');

-- 插入供應關係
INSERT INTO Supplies (Supplier_ID, Model_ID, Part_Type) VALUES
(1, 1, 'Transmission'),
(2, 2, 'Engine'),
(3, 3, 'Brakes'),
(4, 4, 'Steering'),
(5, 5, 'Suspension'),
(1, 6, 'Transmission'),
(2, 7, 'Engine'),
(3, 8, 'Brakes'),
(4, 9, 'Steering'),
(5, 10, 'Suspension');
-- 插入庫存
INSERT INTO Inventory (Dealer_ID, VIN, In_Stock_Date) VALUES
(1, '1HGBH41JXMN109186', '2023-01-01'),
(2, '2HGBH41JXMN109187', '2023-02-01'),
(3, '3HGBH41JXMN109188', '2023-03-01'),
(4, '4HGBH41JXMN109189', '2023-04-01'),
(5, '5HGBH41JXMN109190', '2023-05-01'),
(1, '6HGBH41JXMN109191', '2023-06-01'),
(2, '7HGBH41JXMN109192', '2023-07-01'),
(3, '8HGBH41JXMN109193', '2023-08-01'),
(4, '9HGBH41JXMN109194', '2023-09-01'),
(5, '10HGBH41JXMN109195', '2023-10-01'),
(1, '11HGBH41JXMN109196', '2023-11-01'),
(2, '12HGBH41JXMN109197', '2023-12-01'),
(3, '13HGBH41JXMN109198', '2024-01-01'),
(4, '14HGBH41JXMN109199', '2024-02-01'),
(5, '15HGBH41JXMN109200', '2024-03-01');
