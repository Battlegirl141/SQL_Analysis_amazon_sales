SELECT * FROM amazon a 
LIMIT 5

SELECT a.product_name, a.discounted_price, RANK() OVER (ORDER BY a.discounted_price DESC) AS Price_Rank  FROM amazon a

SELECT a.product_name, a.discounted_price, DENSE_RANK() OVER (ORDER BY a.discounted_price DESC) AS Price_Rank  FROM amazon a

SELECT a.product_name, a.discounted_price, ROW_NUMBER() OVER (ORDER BY a.discounted_price DESC) AS Price_Rank  FROM amazon a