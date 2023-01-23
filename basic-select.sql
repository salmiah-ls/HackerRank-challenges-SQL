-- This code is done on MySQL database


-- Challenge 1: Revising the Select Query I
-- https://www.hackerrank.com/challenges/revising-the-select-query/problem

SELECT *
FROM CITY
WHERE COUNTRYCODE = 'USA' AND POPULATION > 100000


-- Challenge 2: Revising the Select Query II
-- https://www.hackerrank.com/challenges/revising-the-select-query-2/problem

SELECT NAME
FROM CITY
WHERE COUNTRYCODE = 'USA' AND POPULATION > 120000


-- Challenge 3: Select All
-- https://www.hackerrank.com/challenges/select-all-sql/problem

SELECT * FROM CITY


-- Challenge 4: Select By ID
-- https://www.hackerrank.com/challenges/select-by-id/problem

SELECT *
FROM CITY
WHERE ID = 1661


-- Challenge 5: Japanese Cities' Attributes
-- https://www.hackerrank.com/challenges/japanese-cities-attributes/problem

select *
from CITY
where COUNTRYCODE = 'JPN'


-- Challenge 6: Japanese Cities' Names
-- https://www.hackerrank.com/challenges/japanese-cities-name/problem

SELECT NAME
FROM CITY
WHERE COUNTRYCODE = 'JPN'


-- Challenge 7: Weather Observation Station 1
-- https://www.hackerrank.com/challenges/weather-observation-station-1/problem

SELECT CITY, STATE
FROM STATION


-- Challenge 7: Weather Observation Station 3
-- https://www.hackerrank.com/challenges/weather-observation-station-3/problem

SELECT DISTINCT CITY
FROM STATION
WHERE MOD(ID, 2)=0


-- Challenge 8: Weather Observation Station 4
-- https://www.hackerrank.com/challenges/weather-observation-station-4/problem

SELECT COUNT(CITY) - COUNT(DISTINCT(CITY))
FROM STATION


-- Challenge 8: Weather Observation Station 5
-- https://www.hackerrank.com/challenges/weather-observation-station-5/problem

SELECT CITY, CHAR_LENGTH(CITY)
FROM STATION
WHERE CHAR_LENGTH(CITY) IN 
(SELECT MIN(CHAR_LENGTH(CITY)) 
 FROM STATION)
ORDER BY CITY
LIMIT 1;

SELECT CITY, CHAR_LENGTH(CITY)
FROM STATION
WHERE CHAR_LENGTH(CITY) IN 
(SELECT MAX(CHAR_LENGTH(CITY)) 
 FROM STATION)
ORDER BY CITY;


-- Challenge 8: Weather Observation Station 6
-- https://www.hackerrank.com/challenges/weather-observation-station-6/problem

select DISTINCT(CITY)
from STATION
where CITY LIKE 'A%'
or CITY LIKE 'E%'
or CITY LIKE 'I%'
or CITY LIKE 'O%'
or CITY LIKE 'U%'


-- Challenge 9: WeatherObservation Station 7
-- https://www.hackerrank.com/challenges/weather-observation-station-7/problem

select DISTINCT CITY
from STATION
where CITY regexp '(a|e|i|o|u)$'


-- Challenge 10: WeatherObservation Station 8
-- https://www.hackerrank.com/challenges/weather-observation-station-8/problem

select distinct CITY
from STATION
where CITY regexp '^(a|e|i|o|u)'
and CITY regexp '(a|e|i|o|u)$'
