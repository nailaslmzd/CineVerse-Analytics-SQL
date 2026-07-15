/*
=========================================
 CineVerse Analytics
 Insert Data
=========================================
*/

-- ======================================
-- Studios
-- ======================================

INSERT INTO studios (studio_name, headquarters)
VALUES
('Nova Pictures', 'Los Angeles'),
('Aurora Films', 'London'),
('Titan Entertainment', 'New York'),
('Eclipse Studios', 'Toronto'),
('Phoenix Productions', 'Sydney');

-- ======================================
-- Actors
-- ======================================

INSERT INTO actors (first_name, last_name, country, birth_year)
VALUES
('Emma','Stone','USA',1988),
('Ryan','Gosling','Canada',1980),
('Margot','Robbie','Australia',1990),
('Zendaya','Coleman','USA',1996),
('Timothee','Chalamet','USA',1995),
('Florence','Pugh','England',1996),
('Keanu','Reeves','Canada',1964),
('Scarlett','Johansson','USA',1984),
('Cillian','Murphy','Ireland',1976),
('Ana','de Armas','Cuba',1988),
('Tom','Holland','England',1996),
('Jennifer','Lawrence','USA',1990),
('Robert','Downey Jr.','USA',1965),
('Chris','Evans','USA',1981),
('Pedro','Pascal','Chile',1975),
('Sydney','Sweeney','USA',1997),
('Jenna','Ortega','USA',2002),
('Henry','Cavill','England',1983),
('Gal','Gadot','Israel',1985),
('Leonardo','DiCaprio','USA',1974)

 -- =========================================================
-- Movies
-- =========================================================

INSERT INTO movies
(title, genre, release_year, budget, studio_id)
VALUES
('Crimson Eclipse','Action',2023,180000000,1),
('Neon Dynasty','Sci-Fi',2024,220000000,2),
('Silent Horizon','Drama',2022,90000000,3),
('Echoes of Tomorrow','Sci-Fi',2025,250000000,1),
('Midnight Protocol','Thriller',2023,110000000,4),
('Quantum Hearts','Romance',2021,70000000,2),
('Frozen Empire','Fantasy',2024,210000000,5),
('Shadow Circuit','Action',2025,195000000,3),
('Last Aurora','Drama',2023,85000000,4),
('Beyond Infinity','Sci-Fi',2022,175000000,5),
('The Final Orbit','Action',2024,205000000,1),
('Glass Kingdom','Fantasy',2021,95000000,2),
('Hidden Truth','Mystery',2020,60000000,3),
('Broken Crown','Drama',2025,120000000,4),
('Dark Velocity','Action',2024,230000000,5),
('Lost Symphony','Romance',2022,80000000,1),
('Iron Eclipse','Sci-Fi',2023,160000000,2),
('Dream Hunters','Fantasy',2021,105000000,3),
('Silent Code','Thriller',2025,145000000,4),
('Parallel Worlds','Sci-Fi',2024,240000000,5);;
