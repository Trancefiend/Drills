WITH raining AS(
	SELECT Date
	FROM weather
	WHERE Events = 'Rain'
	GROUP BY 1
),

rain_trips AS(
	SELECT 
		trip_id,
		duration,
		start_date
	FROM trips
	JOIN raining
	ON  trips.start_date = raining.date
	ORDER BY duration DESC 
	)

SELECT 
	start_date,
	duration
FROM rain_trips
GROUP BY 1