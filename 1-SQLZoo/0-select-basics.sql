world
name	continent	area	population	gdp
Afghanistan	Asia	652230	25500100	20343000000
Albania	Europe	28748	2831741	12960000000
Algeria	Africa	2381741	37100000	188681000000
Andorra	Europe	468	78115	3712000000
Angola	Africa	1246700	20609294	100990000000
....

-- 1.
-- The example uses a WHERE clause to show the population of 'France'. Note that strings (pieces of text that are data) should be in 'single quotes';

-- Modify it to show the population of Germany

SELECT population 
    FROM world 
    WHERE name = 'Germany';
    -- population
    -- 80716000

-- 2.
-- Checking a list The word IN allows us to check if an item is in a list. The example shows the name and population for the countries 'Brazil', 'Russia', 'India' and 'China'.

-- Show the name and the population for 'Sweden', 'Norway' and 'Denmark'.

SELECT name, population 
    FROM world 
    WHERE name in ('Sweden', 'Norway', 'Denmark'); 
    -- name	population
    -- Denmark	5634437
    -- Norway	5124383
    -- Sweden	9675885

-- 3.
-- Which countries are not too small and not too big? BETWEEN allows range checking (range specified is inclusive of boundary values). The example below shows countries with an area of 250,000-300,000 sq. km. Modify it to show the country and the area for countries with an area between 200,000 and 250,000.

SELECT name, area 
    FROM world 
    WHERE area BETWEEN 200000 AND 250000; 
    -- name	area
    -- Belarus	207600
    -- Ghana	238533
    -- Guinea	245857
    -- Guyana	214969
    -- Laos	236800
    -- Romania	238391
    -- Uganda	241550
    -- United Kingdom	242900

-- QUIZ 

-- name	population
-- Bahrain	1234571
-- Swaziland	1220000
-- Timor-Leste	1066409

SELECT name, population
    FROM world
    WHERE population BETWEEN 1000000 AND 1250000; 

SELECT name, population
    FROM world 
    WHERE name LIKE 'Al%'; 

SELECT name 
    FROM world 
    WHERE name LIKE '%a' OR name LIKE '%l'; 

SELECT name, length(name)
    FROM world 
    WHERE length(name)=5 and contintent='Europe'; 

SELECT name, area*2 
    FROM world 
    WHERE population=64000;

SELECT name, area, population  
    FROM world 
    WHERE area > 50000 AND population < 10000000; 

SELECT name, population/area 
    FROM world 
    WHERE name IN ('China', 'Nigeria', 'France', 'Australia'); 