SELECT AVG(songs.energy)
FROM songs
JOIN artists on songs.artist_id = artists.id
WHERE artists.name = "Drake";