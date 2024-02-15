#Task 1 using count get the  numbers of cities in the USA
SELECT COUNT(*)
FROM city
WHERE  countrycode= 'USA';

#Task 2 find out the population and average life expectancy for people in argetina (ARG) is
SELECT SUM(population),
AVG(lifeexpectancy)
FROM country
WHERE code= 'ARG';

 #task 3 using order by, limit, what country has the highest life expectancy?
SELECT name, lifeExpectancy 
FROM country
ORDER BY lifeExpectancy DESC
LIMIT 1;

#task 4 select 25 cities around the world that start with the letter 'f' in a single SQL query
SELECT name
FROM city
WHERE name LIKE 'F%'
LIMIT 25;

#task 5 create a SQL statement to display columns- id,name,population from the city table and limit results to first 10 rows only. 
SELECT ID,name,population
FROM city
LIMIT 10;

#task 6 create a sql statment to find only those cities from city table whose population is larger than 2000000.
SELECT name
FROM city
WHERE population >'2000000';

#task 7 create a SQL statement to find all city names from city table whose name begins with the "BE" prefix.
SELECT name
FROM city
WHERE name LIKE 'BE%'
 
 #task 8 create a sql statment to find only those cities from city table whose population is between 500000-1000000.
 SELECT name, population
FROM city
WHERE population BETWEEN 500000 and 1000000;

#task 9 create a SQL statment to find a city with the lowest population in the city table.
SELECT name, population
FROM city
ORDER BY population ASC
LIMIT 1;
