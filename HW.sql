CREATE TABLE IF NOT EXISTS genres(
	genre_id serial PRIMARY KEY,
	genre_name TEXT NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS performers(
	performer_id serial PRIMARY KEY,
	performer_name TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS genres_performers(
	genre_id int REFERENCES genres(genre_id),
	performer_id int REFERENCES performers(performer_id),
	CONSTRAINT pk_genres_performers PRIMARY KEY (genre_id, performer_id)
);

CREATE TABLE IF NOT EXISTS albums(
	album_id serial PRIMARY KEY,
	album_name TEXT NOT NULL UNIQUE,
	date_of_release date NOT NULL
);

CREATE TABLE IF NOT EXISTS performers_albums(
	performer_id int REFERENCES performers(performer_id),
	album_id int REFERENCES albums(album_id),
	CONSTRAINT pk_performers_albums PRIMARY KEY (performer_id, album_id)
);

CREATE TABLE IF NOT EXISTS tracks(
	track_id serial PRIMARY KEY,
	track_name TEXT NOT NULL UNIQUE,
	duration int NOT NULL,
	album_id int REFERENCES albums(album_id)
);

CREATE TABLE IF NOT EXISTS collection(
	collection_id serial PRIMARY KEY,
	collection_name TEXT NOT NULL UNIQUE,
	date_of_release date NOT NULL
);

CREATE TABLE IF NOT EXISTS track_collection(
	track_id int NOT NULL REFERENCES tracks(track_id),
	collection_id int NOT NULL REFERENCES collection(collection_id)
)
