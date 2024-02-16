-- Write a query that prints a list of employee names (i.e.: the name attribute) from the Employee table in alphabetical order.
-- The STATION table is described as follows: https://s3.amazonaws.com/hr-challenge-images/19629/1458557872-4396838885-ScreenShot2016-03-21at4.27.13PM.png

SELECT
    name
FROM 
    employee
ORDER BY
    name ASC;