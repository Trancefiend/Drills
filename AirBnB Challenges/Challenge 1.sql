WITH most_expensive AS(
SELECT listing_id
FROM calendar
ORDER BY price DESC 
LIMIT 1)

SELECT *
FROM most_expensive
JOIN listings
ON most_expensive.listing_id = listings.id
