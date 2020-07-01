--Asian Population

--Given the CITY and COUNTRY tables, query the sum of the populations of all cities where the CONTINENT is 'Asia'.

SELECT
    SUM(c.population) as asian_population
FROM
    city c
        JOIN
    country co ON c.CountryCode = co.Code
WHERE
    co.continent = 'Asia'
GROUP BY co.continent;
