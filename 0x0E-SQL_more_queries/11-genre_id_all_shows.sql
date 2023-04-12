--  lists all shows contained in hbtn_0d_tvshows that have at least one genre linked.
-- Each record should display: tv_shows.title - tv_show_genres.genre_id
-- Results are sorted in ascending order by tv_shows.title and tv_show_genres.genre_id
-- Displays NULL if a show doesn't have a genre
-- Only one SELECT statement is allowed
-- The database name is passed as an argument of the mysql command

SELECT 
      ts.title,
      tsg.genre_id
FROM tv_shows ts
LEFT JOIN tv_show_genres tsg
      ON ts.id = tsg.show_id
ORDER BY ts.title, tsg.genre_id;
