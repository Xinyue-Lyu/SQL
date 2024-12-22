SELECT DISTINCT F.flight_num
FROM Flights AS F, CARRIERS as C
WHERE F.carrier_id = C.cid AND
C.name = 'Alaska Airlines Inc.' AND
F.day_of_week_id = 1 AND
F.origin_city = "Seattle WA" AND
F.dest_city = "Boston MA";

-- 3



