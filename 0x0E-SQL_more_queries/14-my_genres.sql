-- lists all genres of the show Dexter.
-- The tv_shows table contains only one record where title = Dexter (but the id can be different)
-- Each record displays: tv_genres.name
-- Results will be sorted in ascending order by the genre name
-- Only one SELECT statement is allowed
-- The database name is passed as an argument of the mysql command

SELECT 
	tg.name
FROM tv_shows ts
INNER JOIN tv_show_genres tsg 
  ON ts.id = tsg.show_id
INNER JOIN tv_genres tg
  ON tsg.genre_id = tg.id
WHERE ts.title = "Dexter"
ORDER BY tg.name;
