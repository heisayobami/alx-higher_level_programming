-- list all genres not linked to the show Dexter
-- The tv_shows table contains only one record where title = Dexter (but the id can be different)
-- Each record displays: tv_genres.name
-- Results are sorted in ascending order by the genre name
-- A maximum of two SELECT statement is allowed
-- The database name is passed as an argument of the mysql command

SELECT
	tg.name
FROM tv_genres tg
WHERE tg.id NOT IN
					(SELECT 
						tg.id
					FROM tv_genres tg
					JOIN tv_show_genres tsg 
					  ON tg.id = tsg.genre_id
					JOIN tv_shows ts
					  ON tsg.show_id = ts.id
					WHERE ts.title = "Dexter")
ORDER BY tg.name;
