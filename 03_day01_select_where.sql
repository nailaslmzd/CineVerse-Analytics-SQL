/*
===========================================================
 CineVerse Analytics
 Day 01 - SQL Fundamentals
 Topic: SELECT, WHERE, ORDER BY, LIMIT
 Author: Naila Selimzade
 Database: PostgreSQL
===========================================================
*/

-- =========================================================
-- Task 1
-- Objective:
-- Display the top 5 highest-budget movies released after 2022.
-- =========================================================

SELECT *
FROM movies
WHERE release_year > 2022
ORDER BY budget DESC
LIMIT 5;


-- =========================================================
-- Task 2
-- Objective:
-- Display actors born between 1980 and 1995.
-- =========================================================

SELECT *
FROM actors
WHERE birth_year BETWEEN 1980 AND 1995;


-- =========================================================
-- Task 3
-- Objective:
-- Display movies that belong to either the Action or Sci-Fi genre.
-- =========================================================

SELECT *
FROM movies
WHERE genre IN ('Action', 'Sci-Fi');


-- =========================================================
-- Task 4
-- Objective:
-- Display the 5 oldest actors.
-- =========================================================

SELECT *
FROM actors
ORDER BY birth_year ASC
LIMIT 5;


-- =========================================================
-- Task 5
-- Objective:
-- Display all Drama movies ordered from newest to oldest.
-- =========================================================

SELECT *
FROM movies
WHERE genre = 'Drama'
ORDER BY release_year DESC;
