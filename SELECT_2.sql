
SELECT genre_id, COUNT(performer_id) 
FROM genres_performers
GROUP BY genre_id

SELECT COUNT(track_id)
FROM tracks
WHERE album_id IN (SELECT album_id FROM albums WHERE date_of_release BETWEEN '2019-01-01' AND '2020-12-31')

SELECT album_id, AVG(duration_sec)
FROM tracks
JOIN albums USING(album_id)
GROUP BY album_id

SELECT DISTINCT performer_name
FROM performers_albums
JOIN performers USING(performer_id)
JOIN albums USING(album_id)
WHERE albums.date_of_release NOT BETWEEN '2020-01-01' AND '2020-12-31'

SELECT collection_name 
FROM track_collection
JOIN collection USING(collection_id)
JOIN tracks USING(track_id)
JOIN albums USING(album_id)
JOIN performers_albums USING(album_id)
JOIN performers USING(performer_id)
WHERE performer_name ILIKE '%adele%'

SELECT DISTINCT album_name
FROM performers_albums
JOIN albums USING(album_id)
JOIN performers USING(performer_id)
JOIN genres_performers USING(performer_id)
JOIN genres USING(genre_id)
WHERE performer_id IN (SELECT performer_id FROM genres_performers GROUP BY performer_id HAVING COUNT(*) > 1)

SELECT track_name 
FROM tracks
WHERE track_id NOT IN (SELECT track_id FROM track_collection)

SELECT performer_name
FROM tracks
JOIN albums USING (album_id)
JOIN performers_albums USING(album_id)
JOIN performers USING(performer_id)
WHERE duration_sec = (SELECT MIN(duration_sec) FROM tracks)

SELECT album_name 
FROM tracks
JOIN albums USING(album_id)
GROUP BY album_name 
HAVING COUNT(track_id) = (SELECT COUNT(track_id) FROM tracks JOIN albums USING(album_id) GROUP BY album_id ORDER BY COUNT(track_id) ASC LIMIT 1)
