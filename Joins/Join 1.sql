WITH raining AS (
	SELECT Date
	FROM weather
	WHERE Events = 'Rain'
	GROUP BY 1
)
SELECT
	trip_id,
	duration,
	start_date
FROM trips
JOIN raining
ON raining.date = trips.start_date
ORDER BY duration DESC 
LIMIT 3

	