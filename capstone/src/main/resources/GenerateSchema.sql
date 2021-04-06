DROP DATABASE IF EXISTS musicstore;

CREATE DATABASE musicstore;
USE musicstore;

CREATE TABLE s_user(
	username varchar(255),
	password varchar(255),
	user_id int,
	PRIMARY KEY (user_id)
);

CREATE TABLE album(
	album_id int NOT NULL,
	title varchar(255),
	description varchar(255),
	PRIMARY KEY (album_id)
);

CREATE TABLE music(
	music_id int NOT NULL,
	title varchar(255),
	description varchar(255),
	price decimal(19,2),
	album_id int,
	category_id int, 
	PRIMARY KEY (music_id)
);

CREATE TABLE genre(
	genre_id int NOT NULL,
	name varchar(255),
	PRIMARY KEY (genre_id)
);

CREATE TABLE category(
	genre_id int,
	category_id int,
	name varchar(255),
	PRIMARY KEY (category_id)
);

ALTER TABLE music 
ADD FOREIGN KEY (category_id) REFERENCES category(category_id);

ALTER TABLE music 
ADD FOREIGN KEY (album_id) REFERENCES album(album_id);

ALTER TABLE category 
ADD FOREIGN KEY (genre_id) REFERENCES genre(genre_id);
