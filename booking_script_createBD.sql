
/*База данных bookingcom - 
это возможность просмотреть и забронировать турпоездку в любую страну.
Пользователь заходит на сайт, выбирает страну направления, город (по желанию), отель по желанию, 
просматривает отели и выбирает нужный. Система предлагает только те отели, куда есть перелёт из страны/города пользователя. 
После выбора отеля предлагаются варианты перелёта с ценами. 
После выбора турпоездки пользователь либо регистрируется, либо вводит логин/пароль (если он был зарегистрирован ранее). 
Система бронирует за ним отель и перелёт.
 */


DROP DATABASE IF EXISTS bookingcom;
CREATE DATABASE bookingcom;
USE bookingcom;

DROP TABLE IF EXISTS countries;
CREATE TABLE countries(
	id SERIAL PRIMARY KEY,
	name VARCHAR(100)
	);

DROP TABLE IF EXISTS cities;
CREATE TABLE cities(
	id SERIAL PRIMARY KEY,
	name VARCHAR(100),
	country_id BIGINT UNSIGNED NOT NULL,
	FOREIGN KEY (country_id) REFERENCES countries(id) ON UPDATE CASCADE ON DELETE CASCADE
);

DROP TABLE IF EXISTS hotel_type;
CREATE TABLE hotel_type(
	id SERIAL PRIMARY KEY,
	name VARCHAR(100)
);

DROP TABLE IF EXISTS hotel_stars;
CREATE TABLE hotel_stars(
	id SERIAL PRIMARY KEY,
	stars BIGINT UNSIGNED NOT NULL
);

DROP TABLE IF EXISTS hotels;
CREATE TABLE hotels(
	id SERIAL PRIMARY KEY,
	name VARCHAR(100),
	description TEXT,
	hotel_type_id BIGINT UNSIGNED NOT NULL,
	hotel_star_id BIGINT UNSIGNED NOT NULL,
	city_id BIGINT UNSIGNED NOT NULL,
	avg_grade DOUBLE(10,2),
	FOREIGN KEY (hotel_type_id) REFERENCES hotel_type(id) ON UPDATE CASCADE ON DELETE CASCADE,
	FOREIGN KEY (hotel_star_id) REFERENCES hotel_stars(id) ON UPDATE CASCADE ON DELETE CASCADE,
	FOREIGN KEY (city_id) REFERENCES cities(id) ON UPDATE CASCADE ON DELETE CASCADE
	);

DROP TABLE IF EXISTS hotel_prices;
CREATE TABLE hotel_prices(
	id SERIAL PRIMARY KEY,
	hotel_id BIGINT UNSIGNED NOT NULL,
	price_per_night BIGINT UNSIGNED NOT NULL,
	FOREIGN KEY (hotel_id) REFERENCES hotels(id) ON UPDATE CASCADE ON DELETE CASCADE
);

DROP TABLE IF EXISTS hotels_photo_albums;
CREATE TABLE hotels_photo_albums(
	id SERIAL PRIMARY KEY,
	name VARCHAR(100),
	hotel_id BIGINT UNSIGNED NOT NULL,
	FOREIGN KEY (hotel_id) REFERENCES hotels(id) ON UPDATE CASCADE ON DELETE CASCADE
);

DROP TABLE IF EXISTS photos;
CREATE TABLE photos(
	id SERIAL PRIMARY KEY,
	hotel_photo_album_id BIGINT UNSIGNED NOT NULL,
	FOREIGN KEY (hotel_photo_album_id) REFERENCES hotels_photo_albums(id) ON UPDATE CASCADE ON DELETE CASCADE
);

DROP TABLE IF EXISTS users;
CREATE TABLE users(
	id SERIAL PRIMARY KEY,
	firstname VARCHAR(100),
    lastname VARCHAR(100) COMMENT 'Фамилия',
    email VARCHAR(100) UNIQUE,
    password_hash VARCHAR(100),
    phone BIGINT UNSIGNED,
    INDEX users_lastname_firstname_idx(lastname, firstname)
);

DROP TABLE IF EXISTS user_passports;
CREATE TABLE user_passports(
	id SERIAL PRIMARY KEY,
	user_id BIGINT UNSIGNED NOT NULL,
	passport_number BIGINT UNSIGNED,
	birthday DATE,
	date_of_issue DATE,
	date_of_expiry DATE,
	gender CHAR(1), 
	country_id BIGINT UNSIGNED NOT NULL,
	FOREIGN KEY (user_id) REFERENCES users(id) ON UPDATE CASCADE ON DELETE CASCADE,
	FOREIGN KEY (country_id) REFERENCES countries(id) ON UPDATE CASCADE ON DELETE CASCADE
);

DROP TABLE IF EXISTS hotel_booking_requests;
CREATE TABLE hotel_booking_requests(
	-- id SERIAL PRIMARY KEY - будет составной ключ
	initiator_user_id BIGINT UNSIGNED NOT NULL,
	target_hotel_id BIGINT UNSIGNED NOT NULL,
    status ENUM('requested', 'approved', 'declined'),
	requested_at DATETIME DEFAULT NOW(),
	updated_at DATETIME ON UPDATE NOW(),
	date_from DATE,
	date_too DATE,
	amount BIGINT UNSIGNED, 
    PRIMARY KEY (initiator_user_id, target_hotel_id),
    FOREIGN KEY (initiator_user_id) REFERENCES users(id) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (target_hotel_id) REFERENCES hotels(id) ON UPDATE CASCADE ON DELETE CASCADE
);

DROP TABLE IF EXISTS hotel_reviews;
CREATE TABLE hotel_reviews(
	id SERIAL PRIMARY KEY,
	hotel_id BIGINT UNSIGNED NOT NULL,
	user_id BIGINT UNSIGNED NOT NULL,
	grade BIGINT UNSIGNED NOT NULL,
	review VARCHAR(250),
	FOREIGN KEY (user_id) REFERENCES users(id) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (hotel_id) REFERENCES hotels(id) ON UPDATE CASCADE ON DELETE CASCADE
);

DROP TABLE IF EXISTS airports;
CREATE TABLE airports(
	id SERIAL PRIMARY KEY,
	name VARCHAR(100),
	city_id BIGINT UNSIGNED NOT NULL,
	FOREIGN KEY (city_id) REFERENCES cities(id) ON UPDATE CASCADE ON DELETE CASCADE
);

DROP TABLE IF EXISTS airlines;
CREATE TABLE airlines(
	id SERIAL PRIMARY KEY,
	name VARCHAR(100),
	from_city_id BIGINT UNSIGNED NOT NULL,
	to_city_id BIGINT UNSIGNED NOT NULL,
	FOREIGN KEY (from_city_id) REFERENCES cities(id) ON UPDATE CASCADE ON DELETE CASCADE,
	FOREIGN KEY (to_city_id) REFERENCES cities(id) ON UPDATE CASCADE ON DELETE CASCADE
);

DROP TABLE IF EXISTS airports_airlines;
CREATE TABLE airports_airlines(
	id SERIAL PRIMARY KEY,
	airport_id BIGINT UNSIGNED NOT NULL,
	airline_id BIGINT UNSIGNED NOT NULL,
	FOREIGN KEY (airport_id) REFERENCES airports(id) ON UPDATE CASCADE ON DELETE CASCADE,
	FOREIGN KEY (airline_id) REFERENCES airlines(id) ON UPDATE CASCADE ON DELETE CASCADE
);

DROP TABLE IF EXISTS flight_booking_requests;
CREATE TABLE flight_booking_requests(
	initiator_user_id BIGINT UNSIGNED NOT NULL,
	target_airline_id BIGINT UNSIGNED NOT NULL,
    status ENUM('requested', 'approved', 'declined'),
	requested_at DATETIME DEFAULT NOW(),
	updated_at DATETIME ON UPDATE NOW(),
	date_from DATE,
	date_too DATE,
    PRIMARY KEY (initiator_user_id, target_airline_id),
    FOREIGN KEY (initiator_user_id) REFERENCES users(id) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (target_airline_id) REFERENCES airlines(id) ON UPDATE CASCADE ON DELETE CASCADE
);

