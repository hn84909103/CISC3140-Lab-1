/*1-1:Find the country that start with Y

select the countries' names start with Y*/

SELECT name FROM world
  WHERE name LIKE 'Y%'

--------------------------

/*1-2:Find the countries that end with y

select the countries' names end with Y*/

SELECT name FROM world
  WHERE name LIKE '%y'

--------------------------

/*1-3:Find the countries that contain the letter x

select the countries' names contain the letter x*/

SELECT name FROM world
  WHERE name LIKE '%x%'

--------------------------

/*1-4:Find the countries that end with land

select the countries' names end with land*/

SELECT name FROM world
  WHERE name LIKE '%land'

--------------------------

/*1-5:Find the countries that start with C and end with ia

select the countries' names start with C and end with ia*/

SELECT name FROM world
  WHERE name LIKE 'C%ia'

--------------------------

/*1-6:Find the country that has oo in the name

select the countries' names contain with oo*/

SELECT name FROM world
  WHERE name LIKE '%oo%'

--------------------------

/*1-7:Find the countries that have three or more a in the name

select the countries' names contain three or more letter a*/

SELECT name FROM world
  WHERE name LIKE '%a%a%a%'

--------------------------

/*1-8:Find the countries that have "t" as the second character.

select the countries' names have letter t as the second character*/

SELECT name FROM world
 WHERE name LIKE '_t%'
ORDER BY name

--------------------------

/*1-9:Find the countries that have two "o" characters separated by two others.

select the countries' names have two letter characters separated by two others*/

SELECT name FROM world
 WHERE name LIKE '%o__o%'

--------------------------

/*1-10:Find the countries that have exactly four characters.

select the countries' names have four characters*/

SELECT name FROM world
 WHERE name LIKE '____'

--------------------------

/*1-11:Find the country where the name is the capital city.

select the countries' names are the same as their capital cities*/

SELECT name
  FROM world
 WHERE name LIKE capital

--------------------------

/*1-12:Find the country where the capital is the country plus "City".

select the countries' capital = country + City*/

SELECT name
  FROM world
 WHERE capital = concat(name, ' City')

--------------------------

/*1-13:Find the capital and the name where the capital includes the name of the country.

select the capital and the name where the capital includes the name of the country*/

SELECT capital, name
  FROM world
 WHERE capital LIKE concat('%',name,'%')

--------------------------

/*1-14:Find the capital and the name where the capital is an extension of name of the country.

select the capital and the name where the capital is an extension of name of the country*/

SELECT capital, name
  FROM world
 WHERE capital LIKE concat('%', name, '%') AND capital > name

--------------------------

/*1-15:Show the name and the extension where the capital is an extension of name of the country.

*/

SELECT name, REPLACE(capital, name, '')
  FROM world
 WHERE capital LIKE concat('%', name, '%') AND capital > name