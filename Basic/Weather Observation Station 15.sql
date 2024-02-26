-- Query the Western Longitude (LONG_W) for the largest Northern Latitude (LAT_N) in STATION that is less than 137.2345.
-- Round your answer to 4 decimal places.
-- The STATION table is described as follows: https://s3.amazonaws.com/hr-challenge-images/9336/1449345840-5f0a551030-Station.jpg

-- -- -- -- -- -- -- -- -- --

SELECT
    ROUND(LONG_W, 4)
FROM
    STATION
WHERE
    LAT_N < 137.2345
ORDER BY
    LAT_N DESC
LIMIT  1;