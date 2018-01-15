SELECT 
	status.station_id,
	stations.name,
	COUNT(CASE WHEN docks_available = 0 THEN 1 END) Empty
FROM status
JOIN stations
ON status.station_id = stations.station_id
GROUP BY 1
ORDER BY Empty desc