-- 1. Data Verification: View first 10 records
SELECT * FROM retail_sales LIMIT 10;

-- 2. Filtering & Sorting: High value transactions in 'Electronics' (Example Category)
SELECT * FROM retail_sales WHERE Product_Category = 'Electronics' ORDER BY Total_Amount DESC LIMIT 10;

-- 3. Aggregation: Total Sales and Average Transaction Value by Category
SELECT 
                Product_Category, 
                SUM(Total_Amount) as Total_Sales, 
                AVG(Total_Amount) as Avg_Transaction_Value,
                COUNT(*) as Transaction_Count
            FROM retail_sales 
            GROUP BY Product_Category;

-- 4. HAVING Clause: Categories with Total Sales > 1000 (Example Threshold)
SELECT 
                Product_Category, 
                SUM(Total_Amount) as Total_Sales 
            FROM retail_sales 
            GROUP BY Product_Category 
            HAVING SUM(Total_Amount) > 1000;

-- 5. Interview Question: Top 5 Customers by Total Spend
SELECT 
                Customer_ID, 
                SUM(Total_Amount) as Total_Spend 
            FROM retail_sales 
            GROUP BY Customer_ID 
            ORDER BY Total_Spend DESC 
            LIMIT 5;

