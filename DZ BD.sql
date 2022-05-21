CREATE TABLE IF NOT EXISTS musician(
id SERIAL PRIMARY KEY,
name VARCHAR(40) NOT NULL,
music_style_id INTEGER REFERENCES music_style(id)
);

CREATE TABLE IF NOT EXISTS music_style(
id SERIAL PRIMARY KEY,
name_style VARCHAR(40) NOT NULL,
);

CREATE TABLE IF NOT EXISTS music_album(
id SERIAL PRIMARY KEY,
name_album VARCHAR(40) NOT NULL,
years DATE,
musician_id INTEGER REFERENCES musician(id)
);

CREATE TABLE IF NOT EXISTS music_track(
id SERIAL PRIMARY KEY,
name_track VARCHAR(40) NOT NULL,
times TIME,
music_album_id INTEGER REFERENCES music_album(id)
);
