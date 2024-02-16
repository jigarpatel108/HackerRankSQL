-- Query the two cities in STATION with the shortest and longest CITY names, as well as their respective lengths (i.e.: number of characters in the name).
-- If there is more than one smallest or largest city, choose the one that comes first when ordered alphabetically. 
-- The STATION table is described as follows: https://s3.amazonaws.com/hr-challenge-images/9336/1449345840-5f0a551030-Station.jpg
--
SELECT
    city,
    LENGTH(city) as length_min
FROM
    station
ORDER BY
    LENGTH(city) ASC,
    city ASC
LIMIT 1;
--
SELECT
    city,
    LENGTH(city) as length_max
FROM
    station
ORDER BY
    LENGTH(city) DESC,
    city ASC
LIMIT 1;
--