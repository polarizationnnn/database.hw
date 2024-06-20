# 112-2 資料庫期末專題
## 基本資料
* 組員:410971112黃棫瑋 410971111賴昱嬛

## 檔案開啟方式

下載MySQL Workbench
https://dev.mysql.com/downloads/workbench/

1.建立連線

![](https://github.com/polarizationnnn/helpme/blob/picture/messageImage_1718850631599.jpg?raw=true)

2.開啟檔案

![image](https://github.com/polarizationnnn/helpme/blob/picture/messageImage_1718850688384.jpg?raw=true)

3.依序開啟並執行schema.sql、data.sql、queries.sql

## 題目答案

1.每輛車有缺陷的變速箱的 VIN 以及將其出售給的客戶

![image](https://github.com/polarizationnnn/helpme/blob/picture/messageImage_1718850365456_0.jpg?raw=true)


2.銷售額最高的經銷商

![image](https://github.com/polarizationnnn/helpme/blob/picture/messageImage_1718850384690_0.jpg?raw=true)

3.銷量最高的兩個品牌

![image](https://github.com/polarizationnnn/helpme/blob/picture/picture%20(1).jpg?raw=true)

4.哪個月 SUV 賣得最好？

![image](https://github.com/polarizationnnn/helpme/blob/picture/picture%20(2).jpg?raw=true)

5.平均保留車輛在庫時間最長的經銷商

![image](https://github.com/polarizationnnn/helpme/blob/picture/picture%20(3).jpg?raw=true)

## Queries SQL語法

### 查詢缺陷變速箱的 VIN 和客戶信息
```MySQL
SELECT v.VIN, c.Name, c.Address, c.Phone
FROM Vehicle v
JOIN Customer c ON v.Customer_ID = c.Customer_ID
JOIN Supplies s ON v.Model_ID = s.Model_ID
WHERE s.Supplier_ID = 1
  AND s.Part_Type = 'Transmission'
  AND v.Transmission = 'Manual'
  AND v.Sale_Date BETWEEN '2023-01-01' AND '2023-12-31';
```

### 查詢過去一年中銷售額最高的經銷商
```MySQL
SELECT d.Dealer_Name, COUNT(v.VIN) as Total_Sales
FROM Vehicle v
JOIN Dealer d ON v.Dealer_ID = d.Dealer_ID
WHERE v.Sale_Date BETWEEN '2023-01-01' AND '2023-12-31'
GROUP BY d.Dealer_Name
ORDER BY Total_Sales DESC
LIMIT 1;
```

### 查詢過去一年中銷量最高的兩個品牌
```MySQL
SELECT b.Brand_Name, COUNT(v.VIN) as Total_Sales
FROM Vehicle v
JOIN Model m ON v.Model_ID = m.Model_ID
JOIN Brand b ON m.Brand_ID = b.Brand_ID
WHERE v.Sale_Date BETWEEN '2023-01-01' AND '2023-12-31'
GROUP BY b.Brand_Name
ORDER BY Total_Sales DESC
LIMIT 2;
```

### 查詢哪個月 SUV 賣得最好
```MySQL
SELECT MONTH(v.Sale_Date) as Sale_Month, COUNT(v.VIN) as SUV_Sales
FROM Vehicle v
JOIN Model m ON v.Model_ID = m.Model_ID
WHERE m.Body_Style = 'SUV'
GROUP BY Sale_Month
ORDER BY SUV_Sales DESC
LIMIT 1;
```

### 查詢平均保留車輛在庫時間最長的經銷商
```MySQL
SELECT d.Dealer_Name, AVG(DATEDIFF(v.Sale_Date, i.In_Stock_Date)) as Avg_Inventory_Time
FROM Inventory i
JOIN Vehicle v ON i.VIN = v.VIN
JOIN Dealer d ON i.Dealer_ID = d.Dealer_ID
GROUP BY d.Dealer_Name
ORDER BY Avg_Inventory_Time DESC;
```
