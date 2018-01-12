SELECT
	start_station Station,
	COUNT(*) start_station
FROM 
	trips
GROUP BY start_station