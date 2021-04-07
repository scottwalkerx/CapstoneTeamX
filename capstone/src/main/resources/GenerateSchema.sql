DROP DATABASE IF EXISTS musicstore;

CREATE DATABASE musicstore;
USE musicstore;

CREATE TABLE s_user(
	username varchar(255),
	password varchar(255),
	user_id int,
	PRIMARY KEY (user_id)
);

/*TODO: Add payment information*/

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


CREATE TABLE cart(
	cart_id int,
	user_id int,
/*This records whether the purchase has been made
--and is set to false for default
--if it has been purchased, there is an object
--in the purchased table pointing to it
--A new cart object will be generated*/
	is_purchased BOOLEAN,
	PRIMARY KEY (cart_id)
);

--Keeps record of past transactions
--purchased carts are maintained in the
--database for later viewing
CREATE TABLE transaction(
	transaction_id int,
	cart_id int,
	purchased_on date
);

/*This joint table is a design pattern for 
--many-to-many relationships in databases
--Each entry corresponds to one entry of 
--one music object in a music cart. The music_id
--points to the id of the music entry and the
--cart_id points to the id of the cart
--for the entry*/
CREATE TABLE cartmusic(
	cartmusic_id int,
	cart_id int,
	FOREIGN KEY (cart_id) REFERENCES cart(cart_id),
	music_id int,
	FOREIGN KEY (music_id) REFERENCES music(music_id),
	PRIMARY KEY (cartmusic_id)
);



/*Adds foreign key constraints to MUSIC table*/
ALTER TABLE music 
ADD FOREIGN KEY (category_id) REFERENCES category(category_id);

ALTER TABLE music 
ADD FOREIGN KEY (album_id) REFERENCES album(album_id);

/*Adds foreign key constraints to CATEGORY table*/
ALTER TABLE category 
ADD FOREIGN KEY (genre_id) REFERENCES genre(genre_id);
