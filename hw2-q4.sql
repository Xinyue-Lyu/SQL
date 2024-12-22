SELECT DISTINCT C.name AS name
FROM Carriers AS C, Flights AS F, MONTHS AS M
WHERE F.carrier_id = C.cid AND
	  F.month_id = M.mid 
GROUP BY C.name, M.month, F.day_of_month
HAVING COUNT(*) > 1000;


-- 12

