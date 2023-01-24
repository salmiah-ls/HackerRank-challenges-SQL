-- Challenge 1: Population Census
-- https://www.hackerrank.com/challenges/asian-population/problem

select SUM(CITY.POPULATION)
from CITY
inner join COUNTRY
on CITY.COUNTRYCODE = COUNTRY.CODE
and CONTINENT = 'Asia'
