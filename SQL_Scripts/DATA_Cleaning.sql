/*DATA Cleaning*/

SELECT * FROM amazon a


UPDATE amazon a 
SET discounted_price = REPLACE(discounted_price, '₹', '');

SELECT * FROM amazon a 
WHERE a.product_id  IS NULL OR a.actual_price IS NULL OR a.product_name IS NULL;


