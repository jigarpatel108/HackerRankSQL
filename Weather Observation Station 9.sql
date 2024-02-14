-- Query the list of CITY names from STATION that do not start with vowels.
-- Your result cannot contain duplicates.
-- The STATION table is described as follows: https://s3.amazonaws.com/hr-challenge-images/9336/1449345840-5f0a551030-Station.jpg

SELECT DISTINCT city
FROM station
WHERE
    city NOT LIKE 'A%' AND
    city NOT LIKE 'E%' AND
    city NOT LIKE 'I%' AND
    city NOT LIKE 'O%' AND
    city NOT LIKE 'U%';