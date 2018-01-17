SELECT 
	neighbourhood,
	AVG(reviews_per_month) Reviews
FROM listings
GROUP BY 1
ORDER BY 2 DESC
 