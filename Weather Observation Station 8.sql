-- Query the list of CITY names from STATION which have vowels (i.e., a, e, i, o, and u) as both their first and last characters.
-- The STATION table is described as follows: https://s3.amazonaws.com/hr-challenge-images/9336/1449345840-5f0a551030-Station.jpg

SELECT DISTINCT
    city
FROM
    station
WHERE(
    city LIKE 'A%' OR
    city LIKE 'E%' OR
    city LIKE 'I%' OR
    city LIKE 'O%' OR
    city LIKE 'U%')
AND(
    city LIKE '%a' OR
    city LIKE '%e' OR
    city LIKE '%i' OR
    city LIKE '%o' OR
    city LIKE '%u');