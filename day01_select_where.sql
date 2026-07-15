/*
===========================================================
 CineVerse Analytics
 Day 01 - SQL Fundamentals
 Topic: SELECT, WHERE, ORDER BY, LIMIT
 Author: Naile Salimzade
 Database: PostgreSQL
===========================================================
*/

-- =========================================================
-- Task 1
-- Display all actors
-- =========================================================

SELECT *
FROM actors;


-- =========================================================
-- Task 2
-- Display first name, last name and country
-- =========================================================

SELECT
    first_name,
    last_name,
    country
FROM actors;


-- =========================================================
-- Task 3
-- Display actors from the USA
-- =========================================================

SELECT *
FROM actors
WHERE country = 'USA';


-- =========================================================
-- Task 4
-- Display actors born after 1990
-- =========================================================

SELECT *
FROM actors
WHERE birth_year > 1990;


-- =========================================================
-- Task 5
-- Display actors ordered by birth year (newest to oldest)
-- =========================================================

SELECT *
FROM actors
ORDER BY birth_year DESC;


-- =========================================================
-- Task 6
-- Display the first 5 actors
-- =========================================================

SELECT *
FROM actors
LIMIT 5;


-- =========================================================
-- Task 7
-- Display unique countries
-- =========================================================

SELECT DISTINCT country
FROM actors;


-- =========================================================
-- Task 8
-- Display actors whose first name starts with 'S'
-- =========================================================

SELECT *
FROM actors
WHERE first_name LIKE 'S%';


-- =========================================================
-- Task 9
-- Display actors born between 1980 and 1995
-- =========================================================

SELECT *
FROM actors
WHERE birth_year BETWEEN 1980 AND 1995;


-- =========================================================
-- Task 10
-- Display actors from the USA or Canada
-- =========================================================

SELECT *
FROM actors
WHERE country IN ('USA', 'Canada');
