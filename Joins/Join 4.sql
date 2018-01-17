SELECT 
	date(trips.start_date) trip_date,
	max(trips.duration),
	weather.Events
FROM 
	trips
JOIN 
	weather
ON trip_date = weather.Date
WHERE weather.Events = 'Rain'
GROUP BY trip_date