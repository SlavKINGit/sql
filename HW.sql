CREATE TABLE IF NOT EXISTS genres(
	genres_id int PRIMARY KEY,
	genres_name TEXT NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS performers(
	performers_id int PRIMARY KEY,
	performers_name TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS genres_performers(
	genres_id int REFERENCES genres(genres_id),
	performers_id int REFERENCES performers(performers_id),
	CONSTRAINT pk_genres_performers PRIMARY KEY (genres_id, performers_id)
);

CREATE TABLE IF NOT EXISTS albums(
	albums_id int PRIMARY KEY,
	albums_name TEXT NOT NULL UNIQUE,
	date_of_release date NOT NULL
);

CREATE TABLE IF NOT EXISTS performers_albums(
	performers_id int REFERENCES performers(performers_id),
	albums_id int REFERENCES albums(albums_id),
	CONSTRAINT pk_performers_albums PRIMARY KEY (performers_id, albums_id)
);

CREATE TABLE IF NOT EXISTS tracks(
	tracks_id int PRIMARY KEY,
	tracks_name TEXT NOT NULL UNIQUE,
	duration time(2) NOT NULL,
	albums_id int REFERENCES albums(albums_id)
);

CREATE TABLE IF NOT EXISTS collection(
	collection_name TEXT NOT NULL UNIQUE,
	date_of_release date NOT NULL,
	albums_id int NOT NULL REFERENCES albums(albums_id),
	tracks_id int NOT NULL REFERENCES tracks(tracks_id),
	CONSTRAINT pk_collection PRIMARY KEY (albums_id, tracks_id)
)
