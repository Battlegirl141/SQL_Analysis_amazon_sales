/*Welche Produkte liefern mehr Qualität pro Preis?*/

SELECT
  product_name,
  discounted_price,
  rating,
  discounted_price / rating AS price_per_rating
FROM amazon a 
ORDER BY price_per_rating;
	