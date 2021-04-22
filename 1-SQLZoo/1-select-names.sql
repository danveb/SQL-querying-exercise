-- 1.
-- You can use WHERE name LIKE 'B%' to find the countries that start with "B".

-- The % is a wild-card it can match any characters
-- Find the country that start with Y

SELECT name 
    FROM world 
    WHERE name LIKE 'Y%'; 
    -- name
    -- Yemen

-- 2.
-- Find the countries that end with y

SELECT name 
    FROM world 
    WHERE name LIKE '%y'; 
    -- name
    -- Germany
    -- Hungary
    -- Italy
    -- Norway
    -- Paraguay
    -- Turkey
    -- Uruguay
    -- Vatican City

-- 3.
-- Luxembourg has an x - so does one other country. List them both.

-- Find the countries that contain the letter x

SELECT name
    FROM world
    WHERE name LIKE '%x%'; 
    -- name
    -- Luxembourg
    -- Mexico

-- 4.
-- Iceland, Switzerland end with land - but are there others?

-- Find the countries that end with land

SELECT name 
    FROM world 
    WHERE name LIKE '%land'; 
    -- name
    -- Finland
    -- Iceland
    -- Ireland
    -- New Zealand
    -- Poland
    -- Swaziland
    -- Switzerland
    -- Thailand

-- 5.
-- Columbia starts with a C and ends with ia - there are two more like this.

-- Find the countries that start with C and end with ia

SELECT name
    FROM world 
    WHERE name LIKE 'C%ia'; 
    -- name
    -- Cambodia
    -- Colombia
    -- Croatia

-- 6.
-- Greece has a double e - who has a double o?

-- Find the country that has oo in the name

SELECT name 
    FROM world 
    WHERE name LIKE '%oo%'; 
    -- name
    -- Cameroon

-- 7.
-- Bahamas has three a - who else?

-- Find the countries that have three or more a in the name

SELECT name 
    FROM world 
    WHERE name LIKE '%a%a%a%'; 
    -- name
    -- Afghanistan
    -- Albania
    -- Antigua and Barbuda
    -- Australia
    -- Azerbaijan
    -- Bahamas
    -- Bosnia and Herzegovina
    -- Canada
    -- Central African Republic
    -- Equatorial Guinea
    -- Guatemala
    -- Jamaica
    -- Kazakhstan
    -- Madagascar
    -- Malaysia
    -- Marshall Islands
    -- Mauritania
    -- Micronesia, Federated States of
    -- Nicaragua
    -- Panama
    -- Papua New Guinea
    -- Paraguay
    -- Saint Vincent and the Grenadines
    -- Saudi Arabia
    -- Tanzania
    -- Trinidad and Tobago
    -- United Arab Emirates

-- 8.
-- India and Angola have an n as the second character. You can use the underscore as a single character wildcard.

-- SELECT name FROM world
--  WHERE name LIKE '_n%'
-- ORDER BY name
-- Find the countries that have "t" as the second character.

SELECT name 
    FROM world 
    WHERE name LIKE '_t%' 
    ORDER BY name; 
    -- name
    -- Ethiopia
    -- Italy

-- 9.
-- Lesotho and Moldova both have two o characters separated by two other characters.

-- Find the countries that have two "o" characters separated by two others.

SELECT name 
    FROM world
    WHERE name LIKE '%o__o%'; 
    -- name
    -- Congo, Democratic Republic of
    -- Congo, Republic of
    -- Lesotho
    -- Moldova
    -- Mongolia
    -- Morocco
    -- Sao Tomé and Príncipe

-- 10.
-- Cuba and Togo have four characters names.

-- Find the countries that have exactly four characters.

SELECT name 
    FROM world
    WHERE name LIKE '____'; 
    -- name
    -- Chad
    -- Cuba
    -- Fiji
    -- Iran
    -- Iraq
    -- Laos
    -- Mali
    -- Oman
    -- Peru
    -- Togo

-- 11.
-- The capital of Luxembourg is Luxembourg. Show all the countries where the capital is the same as the name of the country

-- Find the country where the name is the capital city.

SELECT name 
    FROM world 
    WHERE name LIKE capital; 
    -- name
    -- Djibouti
    -- Luxembourg
    -- San Marino
    -- Singapore

