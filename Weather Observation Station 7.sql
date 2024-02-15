-- Query the list of CITY names ending with vowels (a, e, i, o, u) from STATION.
-- The STATION table is described as follows: https://s3.amazonaws.com/hr-challenge-images/9336/1449345840-5f0a551030-Station.jpg

SELECT DISTINCT
    city
FROM
    station
WHERE(
    city LIKE '%a' OR
    city LIKE '%e' OR
    city LIKE '%i' OR
    city LIKE '%o' OR
    city LIKE '%u');