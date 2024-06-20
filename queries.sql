USE CarCompany;

-- 查詢缺陷變速箱的 VIN 和客戶信息
SELECT VIN, Name, Address, Phone
FROM Vehicle
JOIN Customer ON Customer_ID = Customer_ID
JOIN Supplies ON Model_ID = Model_ID
WHERE Supplier_ID = 1
  AND Part_Type = 'Transmission'
  AND Transmission = 'Manual'
  AND Sale_Date BETWEEN '2023-01-01' AND '2023-12-31';

-- 查詢過去一年中銷售額最高的經銷商
SELECT Dealer_Name, COUNT(VIN) as Total_Sales
FROM Vehicle
JOIN Dealer ON Dealer_ID = Dealer_ID
WHERE Sale_Date BETWEEN '2023-01-01' AND '2023-12-31'
GROUP BY Dealer_Name
ORDER BY Total_Sales DESC
LIMIT 1;

-- 查詢過去一年中銷量最高的兩個品牌
SELECT Brand_Name, COUNT(VIN) as Total_Sales
FROM Vehicle
JOIN Model ON Model_ID = Model_ID
JOIN Brand ON Brand_ID = Brand_ID
WHERE Sale_Date BETWEEN '2023-01-01' AND '2023-12-31'
GROUP BY Brand_Name
ORDER BY Total_Sales DESC
LIMIT 2;

-- 查詢哪個月 SUV 賣得最好
SELECT MONTH(Sale_Date) as Sale_Month, COUNT(VIN) as SUV_Sales
FROM Vehicle
JOIN Model ON Model_ID = Model_ID
WHERE Body_Style = 'SUV'
GROUP BY Sale_Month
ORDER BY SUV_Sales DESC
LIMIT 1;

-- 查詢平均保留車輛在庫時間最長的經銷商
SELECT Dealer_Name, AVG(DATEDIFF(Sale_Date, In_Stock_Date)) as Avg_Inventory_Time
FROM Inventory
JOIN Vehicle ON VIN = VIN
JOIN Dealer ON Dealer_ID = Dealer_ID
GROUP BY Dealer_Name
ORDER BY Avg_Inventory_Time DESC;
