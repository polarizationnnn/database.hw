* 112-2 資料庫期末專題
* 組員:410971112黃棫瑋 410971111賴昱嬛

# hw
# 汽車公司數據庫項目

## 項目結構
- `ER_Diagram.pdf`: E-R 圖
- `schema.sql`: 關聯模式創建腳本
- `data.sql`: 測試數據插入腳本
- `queries.sql`: 查詢 SQL 代碼
- `sample_results.txt`: 查詢結果樣本
- `README.md`: 項目說明文件

## 使用說明
1. 創建數據庫:
    ```sql
    CREATE DATABASE CarCompany;
    USE CarCompany;
    ```

2. 生成表結構:
    ```sql
    SOURCE schema.sql;
    ```

3. 插入測試數據:
    ```sql
    SOURCE data.sql;
    ```

4. 運行查詢:
    ```sql
    SOURCE queries.sql;
    ```

5. 查看查詢結果

E-R圖
Entities:
---------
Brand (Brand_ID, Brand_Name)
    |
    |
    1:N
    |
    |
Model (Model_ID, Brand_ID, Model_Name, Body_Style)
    |
    |
    1:N
    |
    |
Vehicle (VIN, Model_ID, Color, Engine, Transmission, Dealer_ID, Customer_ID, Sale_Date)
    |                                      |                    |
    |                                      |                    |
    N:1                                    N:1                  N:1
    |                                      |                    |
    |                                      |                    |
Dealer (Dealer_ID, Dealer_Name, Address,   Customer (Customer_ID, Name, Address, Phone, Gender, Annual_Income)
Phone)
    |
    |
    N:M
    |
    |
Inventory (Dealer_ID, VIN, In_Stock_Date)
    |
    |
    N:1
    |
    |
Supplier (Supplier_ID, Supplier_Name, Address, Phone)
    |
    |
    1:N
    |
    |
Plant (Plant_ID, Plant_Name, Location)
    |
    |
    N:M
    |
    |
Supplies (Supplier_ID, Model_ID, Part_Type)
    |
    |
    1:N
    |
    |
Model (Model_ID, Brand_ID, Model_Name, Body_Style)

