-- Query the smallest Northern Latitude (LAT_N) from STATION that is greater than 38.7780. Round your answer to 4 decimal places.
-- The STATION table is described as follows: https://s3.amazonaws.com/hr-challenge-images/9336/1449345840-5f0a551030-Station.jpg

-- -- -- -- -- -- -- -- -- --

SELECT
    ROUND(MIN(LAT_N), 4)
FROM
    STATION
WHERE
    LAT_N > 38.7780;