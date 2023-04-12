-- lists all cities contained in the database hbtn_0d_usa.
-- Each record displays: cities.id - cities.name - states.name
-- Results are sorted in ascending order by cities.id
-- Only one SELECT statement allowed
-- The database name is passed as an argument of the mysql command

SELECT c.id, c.name, s.name
FROM cities c
INNER JOIN states s
      ON c.state_id=s.id
ORDER BY c.id;
