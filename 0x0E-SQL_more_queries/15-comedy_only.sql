-- lists all Comedy shows in the database hbtn_0d_tvshows.
-- The tv_genres table contains only one record where name = Comedy (but the id can be different)
-- Each record displays: tv_shows.title
-- Results is sorted in ascending order by the show title
-- Only one SELECT statement is allowed
-- The database name is passed as an argument of the mysql command

SELECT
  ts.title
FROM tv_genres tg
JOIN tv_show_genres tsg 
  ON tg.id = tsg.genre_id
JOIN tv_shows ts
  ON tsg.show_id = ts.id
WHERE tg.name = "Comedy"
ORDER BY ts.title;
