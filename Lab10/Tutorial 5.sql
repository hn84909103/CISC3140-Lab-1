/*5-1 Show the total population of the world.*/

SELECT SUM(population)
FROM world;

--------------------------

/*5-2 List all the continents - just once each.*/

SELECT DISTINCT continent FROM world;

--------------------------

/*5-3 Give the total GDP of Africa*/

SELECT SUM(gdp) FROM world WHERE continent = 'Africa';

--------------------------

/*5-4 How many countries have an area of at least 1000000*/

SELECT COUNT(*) FROM world WHERE area >= 1000000;

--------------------------

/*5-5 What is the total population of ('France','Germany','Spain')*/

SELECT SUM(population) FROM world WHERE name IN ('France','Germany','Spain');

--------------------------

/*5-6 For each continent show the continent and number of countries.*/

SELECT continent, COUNT(*) FROM world GROUP BY continent;

--------------------------

/*5-7 For each continent show the continent and number of countries with populations of at least 10 million.*/

SELECT continent, COUNT(*) FROM world WHERE population >= 10000000 GROUP BY continent;

--------------------------

/*5-8 List the continents that have a total population of at least 100 million.*/

SELECT continent FROM world x WHERE (SELECT SUM(population) FROM world y WHERE x.continent = y.continent) >= 100000000 GROUP BY continent;