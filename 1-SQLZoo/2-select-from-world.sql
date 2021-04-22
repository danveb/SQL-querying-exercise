-- 1.
-- Read the notes about this table. Observe the result of running this SQL command to show the name, continent and population of all countries.

SELECT name, continent, population 
    FROM world 
    -- name	continent	population
    -- Afghanistan	Asia	25500100
    -- Albania	Europe	2821977
    -- Algeria	Africa	38700000
    -- Andorra	Europe	76098
    -- Angola	Africa	19183590
    -- Antigua and Barbuda	Caribbean	86295
    -- Argentina	South America	42669500
    -- Armenia	Eurasia	3017400
    -- Australia	Oceania	23545500
    -- Austria	Europe	8504850
    -- Azerbaijan	Asia	9477100
    -- Bahamas	Caribbean	351461
    -- Bahrain	Asia	1234571
    -- Bangladesh	Asia	156557000
    -- Barbados	Caribbean	285000
    -- Belarus	Europe	9467000
    -- Belgium	Europe	11198638
    -- Belize	North America	349728
    -- Benin	Africa	9988068
    -- Bhutan	Asia	749090
    -- Bolivia	South America	10027254
    -- Bosnia and Herzegovina	Europe	3791622
    -- Botswana	Africa	2024904
    -- Brazil	South America	202794000
    -- Brunei	Asia	393162
    -- Bulgaria	Europe	7245677
    -- Burkina Faso	Africa	17322796
    -- Burundi	Africa	9420248
    -- Cambodia	Asia	15184116
    -- Cameroon	Africa	20386799
    -- Canada	North America	35427524
    -- Cape Verde	Africa	491875
    -- Central African Republic	Africa	4709000
    -- Chad	Africa	13211000
    -- Chile	South America	17773000
    -- China	Asia	1365370000
    -- Colombia	South America	47662000
    -- Comoros	Africa	743798
    -- Congo, Democratic Republic of	Africa	69360000
    -- Congo, Republic of	Africa	4559000
    -- Costa Rica	North America	4667096
    -- Côte d'Ivoire	Africa	23919000
    -- Croatia	Europe	4290612
    -- Cuba	Caribbean	11167325
    -- Cyprus	Asia	865878
    -- Czech Republic	Europe	10517400
    -- Denmark	Europe	5634437
    -- Djibouti	Africa	886000
    -- Dominica	Caribbean	71293
    -- Dominican Republic	Caribbean	9445281
    -- Results truncated. Only the first 50 rows have been shown.

-- 2.
-- How to use WHERE to filter records. Show the name for the countries that have a population of at least 200 million. 200 million is 200000000, there are eight zeros.

SELECT name
    FROM world
    WHERE population > 2000000000;
    -- name
    -- Brazil
    -- China
    -- India
    -- Indonesia
    -- United States

-- 3.
-- Give the name and the per capita GDP for those countries with a population of at least 200 million.

-- HELP:How to calculate per capita GDP

SELECT name, GDP/population 
    FROM world 
    WHERE population >= 200000000; 
    -- name	
    -- Brazil	11115.264751422625
    -- China	6121.710598592322
    -- India	1504.793124478397
    -- Indonesia	3482.020488188676
    -- United States	51032.29454636844

-- 4.
-- Show the name and population in millions for the countries of the continent 'South America'. Divide the population by 1000000 to get population in millions.

SELECT name, population/1000000
    FROM world
    WHERE continent = 'South America'
    -- name	
    -- Argentina	42.6695
    -- Bolivia	10.027254
    -- Brazil	202.794
    -- Chile	17.773
    -- Colombia	47.662
    -- Ecuador	15.7742
    -- Guyana	0.784894
    -- Paraguay	6.783374
    -- Peru	30.475144
    -- Saint Vincent and the Grenadines	0.109
    -- Suriname	0.534189
    -- Uruguay	3.286314
    -- Venezuela	28.946101

-- 5.
-- Show the name and population for France, Germany, Italy

SELECT name, population
    FROM world 
    WHERE name IN ('France', 'Germany', 'Italy'); 
    -- name	population
    -- France	65906000
    -- Germany	80716000
    -- Italy	60782668

-- 6.
-- Show the countries which have a name that includes the word 'United'

SELECT name 
    FROM world 
    WHERE name LIKE 'United%'; 
    -- name
    -- United Arab Emirates
    -- United Kingdom
    -- United States

-- 7.
-- Two ways to be big: A country is big if it has an area of more than 3 million sq km or it has a population of more than 250 million.

-- Show the countries that are big by area or big by population. Show name, population and area.

SELECT name, population, area 
    FROM world 
    WHERE population >= 250000000 OR area > 3000000; 
    -- name	population	area
    -- Australia	23545500	7692024
    -- Brazil	202794000	8515767
    -- Canada	35427524	9984670
    -- China	1365370000	9596961
    -- India	1246160000	3166414
    -- Indonesia	252164800	1904569
    -- Russia	146000000	17125242
    -- United States	318320000	9826675

8.
-- Exclusive OR (XOR). Show the countries that are big by area (more than 3 million) or big by population (more than 250 million) but not both. Show name, population and area.

-- Australia has a big area but a small population, it should be included.
-- Indonesia has a big population but a small area, it should be included.
-- China has a big population and big area, it should be excluded.
-- United Kingdom has a small population and a small area, it should be excluded.

-- SELECT name, population, area 
--     FROM world 
--     WHERE area > 3000000 OR population > 250000000; 

