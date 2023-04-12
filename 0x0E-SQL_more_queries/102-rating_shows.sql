-- lists all shows from hbtn_0d_tvshows_rate by their rating.
-- Each record displays: tv_shows.title - rating sum
-- Results are sorted in descending order by their ratings
-- The database name is passed as an argument of the mysql command

SELECT
  ts.title,
  SUM(tsr.rate) AS rating
FROM tv_show_ratings tsr
JOIN tv_shows ts
	ON tsr.show_id = ts.id
GROUP BY tsr.show_id
ORDER BY rating DESC;
