-- Challenge 1: Type of Triangle
-- https://www.hackerrank.com/challenges/what-type-of-triangle/problem

select
case when (A+B)>C and A=B and A=C and A=C then "Equilateral"
    when (A+B)>C and A=B or A=C or B=C then "Isosceles"
    when (A+B)>C and A!= B and A!=C and B!=C then "Scalene"
    else "Not A Triangle"
end
from TRIANGLES
