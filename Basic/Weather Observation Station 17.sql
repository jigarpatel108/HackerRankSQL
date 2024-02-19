-- Query the Western Longitude (LONG_W) where the smallest Northern Latitude (LAT_N) in STATION is greater than 38.7780
-- Round your answer to 4 decimal places
-- The STATION table is described as follows:
-- https://s3.amazonaws.com/hr-challenge-images/9336/1449345840-5f0a551030-Station.jpg

SELECT
    ROUND(long_w, 4)
FROM
    station
WHERE
    lat_n > 38.7780
ORDER BY
    lat_n
LIMIT 1;