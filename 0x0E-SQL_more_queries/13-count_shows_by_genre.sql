-- lists all genres from hbtn_0d_tvshows and displays the number of shows linked to each.
-- Each record displays: tv_genres.name - number of shows
-- Genres without any shows linked aren't displayed
-- First column is called genre
-- Second column is called number_of_shows
-- Results sorted in descending order by the number of shows linked
-- Only one SELECT statement is allowed
-- The database name is passed as an argument of the mysql command

SELECT
	tg.name AS genre,
  COUNT(tg.id) AS number_of_shows
FROM tv_genres tg 
INNER JOIN tv_show_genres tsg 
  ON tg.id = tsg.genre_id
GROUP BY tg.id
ORDER BY number_of_shows DESC;
