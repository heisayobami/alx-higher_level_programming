-- list all shows without the genre comedy
-- The tv_genres table contains only one record where name = Comedy (but the id can be different)
-- Each record should display: tv_shows.title
-- Results are sorted in ascending order by the genre name
-- A maximum of two SELECT statement is allowed
-- The database name is passed as an argument of the mysql command

SELECT
	ts.title
FROM tv_shows ts
WHERE ts.id NOT IN
					(SELECT 
						ts.id
					FROM tv_shows ts
					JOIN tv_show_genres tsg 
					  ON ts.id = tsg.show_id
					JOIN tv_genres tg
					  ON tsg.genre_id = tg.id
					WHERE tg.name = "Comedy")
ORDER BY ts.title;
