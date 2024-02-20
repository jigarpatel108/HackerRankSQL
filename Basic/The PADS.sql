-- Generate the following two result sets:
-- Query an alphabetically ordered list of all names in OCCUPATIONS, immediately followed by the first letter of each profession as a parenthetical (i.e.: enclosed in parentheses). For example: AnActorName(A), ADoctorName(D), AProfessorName(P), and ASingerName(S).
-- Query the number of ocurrences of each occupation in OCCUPATIONS. Sort the occurrences in ascending order, and output them in the following format:
-- There are a total of [occupation_count] [occupation]s.
-- where [occupation_count] is the number of occurrences of an occupation in OCCUPATIONS and [occupation] is the lowercase occupation name. If more than one Occupation has the same [occupation_count], they should be ordered alphabetically.
-- Note: There will be at least two entries in the table for each type of occupation.
-- Input Format: https://s3.amazonaws.com/hr-challenge-images/12889/1443816414-2a465532e7-1.png
-- Occupation will only contain one of the following values: Doctor, Professor, Singer or Actor.
-- An OCCUPATIONS table that contains the following records: https://s3.amazonaws.com/hr-challenge-images/12889/1443816608-0b4d01d157-2.png
-- ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ --

-- First we tackle the ordered list of all names in occupations followed by the first letter of their profession in parentheses
SELECT CONCAT
    (name, '(', LEFT(occupation, 1), ')')
FROM
    occupations
ORDER BY
    name;
    
-- Now we deal with the second part of the problem i.e. to query the number of occurances of each occupation in occupations and sort them in ascending order
SELECT CONCAT
    ("There are a total of ", (SELECT COUNT(occupation)), " ", LOWER(occupation), "s.")
FROM
    occupations
GROUP BY
    occupation
ORDER BY
    COUNT(occupation);