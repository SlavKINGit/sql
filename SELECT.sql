SELECT album_name, date_of_release
FROM albums
WHERE date_of_release >= '2018-01-01' AND date_of_release <= '2018-12-31' 

SELECT track_name, duration_sec
FROM tracks
ORDER BY duration_sec DESC
LIMIT 1

SELECT track_name, duration_sec
FROM tracks
WHERE duration >= 210

SELECT collection_name
FROM collection
WHERE date_of_release BETWEEN  '2018-01-01' AND '2020-12-31' 

SELECT performer_name
FROM performers
WHERE performer_name NOT LIKE '% %'

SELECT track_name
FROM tracks
WHERE track_name LIKE '%my%'
