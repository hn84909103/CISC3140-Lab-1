/*0-1:Modify it to show the population of Germany

select the "population" of "Germany" from the world table.*/

SELECT population FROM world
  WHERE name = 'Germany'


-------------------------

/*0-2: Show the name and the population for 'Sweden', 'Norway' and 'Denmark'.

select the "name" and "population" of "Sweden, Norway and Denmark" from the world table.*/

SELECT name, population FROM world
  WHERE name IN ('Sweden', 'Norway', 'Denmark');


-------------------------

/*0-3: Show the country and the area for countries with an area between 200,000 and 250,000.

select the countries whoes area value are between 200000 to 250000*/

SELECT name, area FROM world
  WHERE area BETWEEN 200000 AND 250000
