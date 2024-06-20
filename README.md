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

