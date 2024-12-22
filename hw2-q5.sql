SELECT C.name AS name, AVG(F.canceled)*100 AS percentage
FROM Carriers AS C, Flights AS F
WHERE F.carrier_id = C.cid AND
	  F.origin_city = 'Seattle WA'
GROUP BY C.name
HAVING percentage/100 > 0.005
ORDER BY F.canceled ASC;

-- 6

