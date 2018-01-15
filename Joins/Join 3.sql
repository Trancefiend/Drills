SELECT 
	trips.start_station,
	stations.dockcount
FROM trips
JOIN stations
ON trips.start_station = stations.name
GROUP BY 1
ORDER BY 2 DESC 