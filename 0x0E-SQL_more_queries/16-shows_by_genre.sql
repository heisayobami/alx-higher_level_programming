-- lists all shows, and all genres linked to that show, from the database hbtn_0d_tvshows.
-- If a show doesn’t have a genre, NULL is displayed in the genre column
-- Each record displays: tv_shows.title - tv_genres.name
-- Results is sorted in ascending order by the show title and genre name
-- Only one SELECT statement is allowed
-- The database name is passed as an argument of the mysql command

SELECT
  ts.title,
  tg.name
FROM tv_genres tg
JOIN tv_show_genres tsg 
  ON tg.id = tsg.genre_id
RIGHT JOIN tv_shows ts
  ON tsg.show_id = ts.id
ORDER BY ts.title, tg.name;
