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
('Parallel Worlds','Sci-Fi',2024,240000000,5);
-- =========================================================
-- Movie Cast
-- Links actors to movies and stores their roles.
-- =========================================================

INSERT INTO movie_cast (movie_id, actor_id, role_name)
VALUES
(1,1,'Lead'),
(1,2,'Supporting'),
(1,8,'Supporting'),

(2,4,'Lead'),
(2,5,'Supporting'),
(2,11,'Supporting'),

(3,3,'Lead'),
(3,20,'Supporting'),
(3,12,'Supporting'),

(4,4,'Lead'),
(4,15,'Supporting'),
(4,17,'Supporting'),

(5,9,'Lead'),
(5,10,'Supporting'),
(5,18,'Supporting'),

(6,1,'Lead'),
(6,2,'Supporting'),
(6,6,'Supporting'),

(7,19,'Lead'),
(7,11,'Supporting'),
(7,16,'Supporting'),

(8,18,'Lead'),
(8,13,'Supporting'),
(8,2,'Supporting'),

(9,6,'Lead'),
(9,3,'Supporting'),
(9,20,'Supporting'),

(10,5,'Lead'),
(10,14,'Supporting'),
(10,7,'Supporting'),

(11,13,'Lead'),
(11,8,'Supporting'),
(11,4,'Supporting'),

(12,19,'Lead'),
(12,10,'Supporting'),
(12,6,'Supporting'),

(13,9,'Lead'),
(13,12,'Supporting'),
(13,16,'Supporting'),

(14,20,'Lead'),
(14,1,'Supporting'),
(14,17,'Supporting'),

(15,18,'Lead'),
(15,15,'Supporting'),
(15,2,'Supporting'),

(16,11,'Lead'),
(16,3,'Supporting'),
(16,7,'Supporting'),

(17,5,'Lead'),
(17,4,'Supporting'),
(17,8,'Supporting'),

(18,19,'Lead'),
(18,6,'Supporting'),
(18,14,'Supporting'),

(19,10,'Lead'),
(19,13,'Supporting'),
(19,9,'Supporting'),

(20,17,'Lead'),
(20,16,'Supporting'),
(20,11,'Supporting');

-- =========================================================
-- Box Office
-- Stores monthly box office revenue for each movie.
-- =========================================================

INSERT INTO box_office (movie_id, revenue, tickets_sold, revenue_month)
VALUES
(1,95000000,1200000,'2023-01-01'),
(1,87000000,1100000,'2023-02-01'),

(2,140000000,1800000,'2024-01-01'),
(2,98000000,1250000,'2024-02-01'),

(3,45000000,600000,'2022-01-01'),
(3,38000000,520000,'2022-02-01'),

(4,170000000,2100000,'2025-01-01'),
(4,120000000,1450000,'2025-02-01'),

(5,62000000,760000,'2023-01-01'),
(5,51000000,650000,'2023-02-01'),

(6,42000000,540000,'2021-01-01'),
(6,36000000,470000,'2021-02-01'),

(7,135000000,1700000,'2024-01-01'),
(7,102000000,1280000,'2024-02-01'),

(8,148000000,1850000,'2025-01-01'),
(8,110000000,1380000,'2025-02-01'),

(9,48000000,610000,'2023-01-01'),
(9,39000000,510000,'2023-02-01'),

(10,96000000,1220000,'2022-01-01'),
(10,82000000,1030000,'2022-02-01'),

(11,150000000,1910000,'2024-01-01'),
(11,119000000,1500000,'2024-02-01'),

(12,53000000,690000,'2021-01-01'),
(12,44000000,560000,'2021-02-01'),

(13,31000000,410000,'2020-01-01'),
(13,25000000,340000,'2020-02-01'),

(14,72000000,900000,'2025-01-01'),
(14,61000000,780000,'2025-02-01'),

(15,175000000,2200000,'2024-01-01'),
(15,129000000,1600000,'2024-02-01'),

(16,47000000,590000,'2022-01-01'),
(16,36000000,470000,'2022-02-01'),

(17,99000000,1250000,'2023-01-01'),
(17,81000000,1030000,'2023-02-01'),

(18,56000000,700000,'2021-01-01'),
(18,49000000,620000,'2021-02-01'),

(19,84000000,1060000,'2025-01-01'),
(19,69000000,870000,'2025-02-01'),

(20,182000000,2300000,'2024-01-01'),
(20,141000000,1760000,'2024-02-01');

-- =========================================================
-- Awards
-- Stores awards received by actors.
-- =========================================================

INSERT INTO awards (actor_id, award_name, award_year)
VALUES
(1,'Best Actress',2024),
(2,'Best Actor',2023),
(3,'Best Performance',2024),
(4,'Rising Star',2025),
(5,'Critics Choice',2024),
(6,'Best Supporting Actress',2025),
(7,'Lifetime Achievement',2023),
(8,'Best Actress',2022),
(9,'Best Actor',2024),
(10,'Best Supporting Actress',2023),
(11,'Rising Star',2024),
(12,'Best Actress',2022),
(13,'Lifetime Achievement',2024),
(14,'People''s Choice',2023),
(15,'Best International Actor',2025),
(16,'Breakthrough Performance',2025),
(18,'Best Action Performance',2024),
(19,'Best Actress',2023),
(20,'Best Actor',2022);
