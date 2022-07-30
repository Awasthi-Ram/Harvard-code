WITH kevin_bacon_movie_id AS (
    SELECT movie_id
    FROM stars
    WHERE person_id = (SELECT id FROM people
                       WHERE name = "Kevin Bacon"
                       AND birth = 1958)
)
SELECT DISTINCT people.name
FROM stars
JOIN people ON stars.person_id = people.id
WHERE stars.movie_id IN kevin_bacon_movie_id
AND people.name != "Kevin Bacon";