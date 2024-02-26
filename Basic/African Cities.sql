-- Given the CITY and COUNTRY tables, query the names of all cities where the CONTINENT is 'Africa'.
-- Note: CITY.CountryCode and COUNTRY.Code are matching key columns.
-- The CITY table is described as follows: https://s3.amazonaws.com/hr-challenge-images/8137/1449729804-f21d187d0f-CITY.jpg
-- The COUNTRY table is described as follows: https://s3.amazonaws.com/hr-challenge-images/8342/1449769013-e54ce90480-Country.jpg
-- ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ --

SELECT 
    city.name
FROM
    city
JOIN
    country ON
    city.countrycode = country.code
WHERE
    country.continent = "Africa";