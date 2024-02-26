-- Samantha was tasked with calculating the average monthly salaries for all employees in the EMPLOYEES table,
-- but did not realize her keyboard's 0 key was broken until after completing the calculation.
-- She wants your help finding the difference between her miscalculation (using salaries with any zeros removed), and the actual average salary.
-- The EMPLOYEES table is described as follows: https://s3.amazonaws.com/hr-challenge-images/12893/1443817108-adc2235c81-1.png
-- Write a query calculating the amount of error (i.e.: actual - miscalculated average monthly salaries), and round it up to the next integer.

-- Solution --
--
-- If we notice there are three parts to this problem:
-- 1. Calculate the actual average salary and round it to the next integer
-- 2. Replace the 0s(zeroes) in the salary figures with blanks and find the miscalculated average, and then round it to the next integer
-- 3. Subtract the miscalculated salary average from the actual salary average
--
SELECT
    ROUND(AVG(salary)) - ROUND(AVG(replace(salary,'0','')))
FROM
    EMPLOYEES;