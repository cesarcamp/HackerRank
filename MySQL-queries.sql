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

--The Report

-- Ketty gives Eve a task to generate a report containing three columns: Name, Grade and Mark. Ketty doesn't want the NAMES of those students who received a grade lower than 8. The report must be in descending order by grade -- i.e. higher grades are entered first. If there is more than one student with the same grade (8-10) assigned to them, order those particular students by their name alphabetically. Finally, if the grade is lower than 8, use "NULL" as their name and list them by their grades in descending order. If there is more than one student with the same grade (1-7) assigned to them, order those particular students by their marks in ascending order.


SELECT
    IF(grade < 8, NULL, name), grade, marks
FROM
    students
        JOIN
    grades ON students.marks BETWEEN min_mark AND max_mark
ORDER BY grade DESC , name , marks;
