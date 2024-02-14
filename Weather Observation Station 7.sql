-- Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION.
-- Your result cannot contain duplicates.
-- The STATION table is described as follows: https://s3.amazonaws.com/hr-challenge-images/9336/1449345840-5f0a551030-Station.jpg

SELECT DISTINCT CITY
FROM STATION
WHERE
    CITY LIKE 'A%' OR
    CITY LIKE 'E%' OR
    CITY LIKE 'I%' OR
    CITY LIKE 'O%' OR
    CITY LIKE 'U%';