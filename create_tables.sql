/*
=========================================
 CineVerse Analytics
 PostgreSQL Database Schema
 Author: Naile Salimzade
=========================================
*/

-- ======================================
-- Drop Tables (Optional)
-- ======================================

DROP TABLE IF EXISTS awards CASCADE;
DROP TABLE IF EXISTS box_office CASCADE;
DROP TABLE IF EXISTS movie_cast CASCADE;
DROP TABLE IF EXISTS movies CASCADE;
DROP TABLE IF EXISTS actors CASCADE;
DROP TABLE IF EXISTS studios CASCADE;

-- ======================================
-- Studios
-- ====================================== 

CREATE TABLE studios (
    studio_id SERIAL PRIMARY KEY,
    studio_name VARCHAR(100) NOT NULL,
    headquarters VARCHAR(100) NOT NULL
);

-- ======================================
-- Actors
-- ======================================

CREATE TABLE actors (
    actor_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    country VARCHAR(50),
    birth_year INT
);

-- ======================================
-- Movies
-- ======================================

CREATE TABLE movies (
    movie_id SERIAL PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    genre VARCHAR(50),
    release_year INT,
    budget NUMERIC(12,2),
    studio_id INT REFERENCES studios(studio_id)
);

-- ======================================
-- Movie Cast
-- ======================================

CREATE TABLE movie_cast (
    cast_id SERIAL PRIMARY KEY,
    movie_id INT REFERENCES movies(movie_id),
    actor_id INT REFERENCES actors(actor_id),
    role_name VARCHAR(30)
);

-- ======================================
-- Box Office
-- ======================================

CREATE TABLE box_office (
    revenue_id SERIAL PRIMARY KEY,
    movie_id INT REFERENCES movies(movie_id),
    revenue NUMERIC(12,2),
    tickets_sold INT,
    revenue_month DATE
);

-- ======================================
-- Awards
-- ======================================

CREATE TABLE awards (
    award_id SERIAL PRIMARY KEY,
    actor_id INT REFERENCES actors(actor_id),
    award_name VARCHAR(100),
    award_year INT
);
