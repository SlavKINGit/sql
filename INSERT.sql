INSERT INTO performers(performer_name)
VALUES
('Adele'),
('Billie Eilish'),
('Taylor Swift'),
('Ed Sheeran'),
('Olivia Rodrigo'),
('Drake'),
('Doja Cat'),
('Mariah Carey');

INSERT INTO genres(genre_name)
VALUES
('Pop'),
('Hip-Hop'),
('Electronic Dance Music'),
('Rock'),
('R&B');

INSERT INTO albums(album_name, date_of_release)
VALUES
('19', '2008-01-28'),
('When We All Fall Asleep, Where Do We Go?', '2019-03-29'),
('Divide', '2017-03-03'),
('Certified Lover Boy', '2021-03-09'),
('Midnights', '2022-10-21'),
('Hot Pink', '2019-11-07'),
('Sour', '2021-05-21'),
('Merry Christmas', '1994-09-01');

INSERT INTO tracks(track_name, duration_sec, album_id) 
VALUES
('Silent Night', 221, 8),
('O Holy Night', 267, 8),
('Brutal', 143, 7),
('drivers license', 242, 7),
('Rules', 187, 6),
('Say so', 238, 6),
('Lavender Haze', 202, 5),
('Anti-Hero', 201, 5),
('Champagne Poetry', 336, 4),
('Lova ALL', 221, 4),
('Shape of You', 234, 3),
('Bad Guy', 214, 2),
('xanny', 244, 2),
('First Love', 190, 1),
('Right as Rain', 197, 1);

INSERT INTO collection(collection_name, date_of_release)
VALUES
('HITS', '2022-12-12'),
('Christmas songs', '2022-12-01'),
('Back to the Future', '2010-05-04'),
('Rap', '2022-08-08'),
('R&R', '2022-02-24'),
('For fun', '2022-11-11'),
('OnTheRoad', '2022-01-01'),
('The president', '2022-12-12');

INSERT INTO genres_performers(performer_id, genre_id)
VALUES
(1, 5),
(1, 1),
(2, 1),
(3, 3),
(4, 1),
(5, 4),
(6, 2),
(7, 5),
(8, 5);

INSERT INTO performers_albums(performer_id, album_id)
VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(7, 8),
(8, 8);

INSERT INTO track_collection(track_id, collection_id)
VALUES
(1, 1),
(1, 2),
(2, 2),
(2, 3),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 7),
(9, 7),
(10, 1),
(11, 8),
(12, 3),
(14, 6),
(14, 7),
(15, 1),
(15, 2),
(15, 3),
(15, 6),
(1, 8);