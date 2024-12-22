SELECT W.day_of_week, AVG(F.arrival_delay) AS delay
FROM Flights AS F, WEEKDAYS as W
WHERE F.day_of_week_id = W.did
GROUP BY W.day_of_week
ORDER BY AVG(F.arrival_delay) DESC
LIMIT 1;

-- 1
