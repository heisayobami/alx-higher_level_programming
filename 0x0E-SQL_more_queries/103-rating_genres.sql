-- lists all genres in the database hbtn_0d_tvshows_rate by their rating.
-- Each record displays: tv_genres.name - rating sum
-- Results is sorted in descending order by their ratings
-- The database name is passed as an argument of the mysql command

SELECT
  tg.name,
  SUM(tsr.rate) AS rating
FROM tv_show_ratings tsr
JOIN tv_show_genres tsg
	USING (show_id)
JOIN tv_genres tg
	ON tsg.genre_id = tg.id
GROUP BY tg.name
ORDER BY rating DESC;
