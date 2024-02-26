-- Query the greatest value of the Northern Latitudes (LAT_N) from STATION that is less than 137.2354.
-- Truncate your answer to 4 decimal places.

-- The STATION table is described as follows: https://s3.amazonaws.com/hr-challenge-images/9336/1449345840-5f0a551030-Station.jpg
-- -- -- -- -- -- -- -- -- --

SELECT
    ROUND(MAX(LAT_N), 4)
FROM
    STATION
WHERE
    LAT_N < 137.2345;