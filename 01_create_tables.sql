/*
===========================================================
 CineVerse Analytics
 PostgreSQL Database Schema
 Author: Naila Selimzade
 Database: PostgreSQL
===========================================================
*/

-- =========================================================
-- Table: Studios
-- Stores information about movie production studios.
-- =========================================================

CREATE TABLE studios (
    studio_id SERIAL PRIMARY KEY,
    studio_name VARCHAR(100) NOT NULL,
    headquarters VARCHAR(100) NOT NULL
);

-- =========================================================
-- Table: Actors
-- Stores information about actors.
-- =========================================================

CREATE TABLE actors (
    actor_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    country VARCHAR(50),
    birth_year INT
);

-- =========================================================
-- Table: Movies
-- Stores information about movies.
-- =========================================================

CREATE TABLE movies (
    movie_id SERIAL PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    genre VARCHAR(50),
    release_year INT,
    budget NUMERIC(12,2),
    studio_id INT REFERENCES studios(studio_id)
);

-- =========================================================
-- Table: Movie Cast
-- Links actors to movies and stores their roles.
-- =========================================================

CREATE TABLE movie_cast (
    cast_id SERIAL PRIMARY KEY,
    movie_id INT REFERENCES movies(movie_id),
    actor_id INT REFERENCES actors(actor_id),
    role_name VARCHAR(30)
);

-- =========================================================
-- Table: Box Office
-- Stores monthly box office revenue for each movie.
-- =========================================================

CREATE TABLE box_office (
    revenue_id SERIAL PRIMARY KEY,
    movie_id INT REFERENCES movies(movie_id),
    revenue NUMERIC(12,2),
    tickets_sold INT,
    revenue_month DATE
);

-- =========================================================
-- Table: Awards
-- Stores awards received by actors.
-- =========================================================

CREATE TABLE awards (
    award_id SERIAL PRIMARY KEY,
    actor_id INT REFERENCES actors(actor_id),
    award_name VARCHAR(100),
    award_year INT
);
