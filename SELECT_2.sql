SELECT genre_id, COUNT(performer_id) 
FROM genres_performers
GROUP BY genre_id

-- №2

SELECT COUNT(*)
FROM tracks
JOIN albums USING(album_id)
WHERE date_of_release BETWEEN '2019-01-01' AND '2020-12-31'

SELECT album_id, AVG(duration_sec)
FROM tracks
JOIN albums USING(album_id)
GROUP BY album_id

-- №4

SELECT DISTINCT performer_name
FROM performers_albums
JOIN performers USING(performer_id)
WHERE album_id NOT IN (SELECT album_id FROM albums a WHERE a.date_of_release BETWEEN '2020-01-01' AND '2020-12-31')

SELECT collection_name 
FROM track_collection
JOIN collection USING(collection_id)
JOIN tracks USING(track_id)
JOIN albums USING(album_id)
JOIN performers_albums USING(album_id)
JOIN performers USING(performer_id)
WHERE performer_name ILIKE '%adele%'

-- №6

SELECT album_name
FROM performers_albums
JOIN albums USING(album_id)
JOIN performers USING(performer_id)
JOIN genres_performers USING(performer_id)
JOIN genres USING(genre_id)
GROUP BY album_name 
HAVING COUNT(DISTINCT genre_name) > 1

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