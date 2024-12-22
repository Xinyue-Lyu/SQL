SELECT COUNT(F.capacity) AS capacity
FROM Flights AS F, Months AS M
WHERE F.month_id = M.mid AND
	  ((F.origin_city = 'Seattle WA' AND F.dest_city = 'San Francisco CA') OR
      (F.dest_city = 'Seattle WA' AND F.origin_city = 'San Francisco CA')) AND
	  M.month = 'July' AND 
      F.day_of_month = 10;

--1



