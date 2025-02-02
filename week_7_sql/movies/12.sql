--SQL query to list the titles of all movies in which both Bradley Cooper and Jennifer Lawrence starred.
-- find BC id
--find JL id
-- find movies id associated with BC
-- find movies id associated with LW
-- find titles that associate with both BC & JL

SELECT title
FROM movies
WHERE id IN (
    SELECT movie_id
    FROM stars
    WHERE person_id IN (
    SELECT id
    FROM people
    WHERE name = 'Bradley Cooper'))
AND id IN (
    SELECT movie_id
    FROM stars
    WHERE person_id IN (
    SELECT id
    FROM people
    WHERE name = 'Jennifer Lawrence')
);
