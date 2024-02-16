-- Write a query that prints a list of employee names (i.e.: the name attribute) for employees in Employee having a salary greater than per month who have been employees for less than months.
-- Sort your result by ascending employee_id.
-- The EMPLOYEE table is described as follows:
-- https://s3.amazonaws.com/hr-challenge-images/19629/1458557872-4396838885-ScreenShot2016-03-21at4.27.13PM.png

SELECT
    name
FROM
    employee
WHERE
    salary > 2000
    AND
    months <10
ORDER BY
    employee_id;