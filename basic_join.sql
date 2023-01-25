-- Challenge 1: Population Census
-- https://www.hackerrank.com/challenges/asian-population/problem

select SUM(CITY.POPULATION)
from CITY
inner join COUNTRY
on CITY.COUNTRYCODE = COUNTRY.CODE
and CONTINENT = 'Asia'


-- Challenge 2: African Cities
-- https://www.hackerrank.com/challenges/african-cities/problem

select CITY.NAME
from CITY
inner join COUNTRY
on CITY.COUNTRYCODE = COUNTRY.CODE
and CONTINENT = 'Africa'


-- Challenge 3: Average Population of Each Continent
-- https://www.hackerrank.com/challenges/average-population-of-each-continent/problem

select COUNTRY.CONTINENT, FLOOR(AVG(CITY.POPULATION))
from COUNTRY
inner join CITY on COUNTRY.CODE = CITY.COUNTRYCODE
group by COUNTRY.CONTINENT


-- Challenge 4: The Report
-- https://www.hackerrank.com/challenges/the-report/problem

SELECT IF(Grade>=8, Name, "NULL"), Grade, Marks
FROM Students
INNER JOIN Grades ON Marks >= Min_Mark and Marks <= Max_Mark
ORDER BY Grade DESC, Name ASC
