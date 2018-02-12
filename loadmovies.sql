
DROP TABLE IF EXISTS movies;

CREATE TABLE movies (
  name varchar(50),
  judge varchar(1) NOT NULL,
  rate integer
  );
  
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 5.7/Uploads/movies/movies.csv' 
INTO TABLE movies 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

SET SQL_SAFE_UPDATES = 0;

SELECT * FROM movies;
#SELECT name, rate FROM movies where judge = "a";

