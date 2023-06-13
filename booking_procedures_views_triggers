-- Хранимые процедуры

-- 1. Показывать пользователю отели в городах, в который он забронировал перелеты

DROP PROCEDURE IF EXISTS sp_user_show_hotels;
DELIMITER //
CREATE PROCEDURE sp_user_show_hotels (user_id BIGINT)
BEGIN
	SELECT
		ci.name,
		h.name
	FROM flight_booking_requests fbr
	JOIN airlines a ON a.id = fbr.target_airline_id
	JOIN cities ci ON ci.id = a.to_city_id
	JOIN hotels h ON h.city_id = ci.id
	WHERE fbr.initiator_user_id = user_id AND fbr.status = "approved"
	ORDER BY ci.name, RAND();
END//
DELIMITER ;

CALL sp_user_show_hotels(11);


-- 2. Пользователям, которые поставили в отзыве оценки показывать 5 отелей такого же типа с наилучшими оценками

DROP PROCEDURE IF EXISTS sp_user_show_best_same_hotels;
DELIMITER //
CREATE PROCEDURE sp_user_show_best_same_hotels (user_id BIGINT)
BEGIN
SELECT
	h2.name,
	h2.avg_grade
FROM hotel_reviews hr
JOIN hotels h ON h.id = hr.hotel_id 
JOIN hotels h2 ON h2.hotel_type_id = h.hotel_type_id 
WHERE hr.user_id = user_id
GROUP BY h2.id
HAVING !ISNULL(avg_grade) 
ORDER BY avg_grade DESC
LIMIT 5;
END//
DELIMITER ;


CALL sp_user_show_best_same_hotels(12);

-- Представления

-- 1. Список отелей с типами, звездами и оценкой пользователей

CREATE OR REPLACE VIEW v_hotels
AS
SELECT
	h.id,
	h.name,
	h.description,
	hs.stars,
	ht.name as type_name,
	h.avg_grade 
FROM hotels h
JOIN hotel_stars hs ON hs.id = h.hotel_star_id 
JOIN hotel_type ht ON ht.id = h.hotel_type_id;

SELECT * FROM v_hotels WHERE stars = 5 ORDER BY avg_grade DESC LIMIT 5;

-- 2. Полная информация о пользователях (id, имя, фамилия, mail, телефон, номер паспорта, дата рождения, пол, страна)

CREATE OR REPLACE VIEW v_users
AS
SELECT
	u.id,
	u.firstname,
	u.lastname,
	u.email,
	u.phone,
	up.passport_number,
	up.birthday,
	up.gender,
	c.name as country_name
FROM users u
JOIN user_passports up ON up.user_id = u.id 
JOIN countries c ON c.id = up.country_id;

SELECT * FROM v_users LIMIT 10;

-- Триггеры

-- 1. Триггер, который логирует данные пользователей (id, имя, фамилия, mail, телефон, номер паспорта, дата рождения, пол)

DROP TABLE IF EXISTS logs;
CREATE TABLE logs (
    table_name CHAR (255),
    record_id INT,
    record_firstname VARCHAR(100),
    record_lastname VARCHAR(100) COMMENT 'Фамилия',
    record_email VARCHAR(100),
    record_phone BIGINT UNSIGNED,
    record_passport_number BIGINT UNSIGNED,
	record_birthday DATE,
    record_gender CHAR(1),
    record_created_at DATETIME DEFAULT CURRENT_TIMESTAMP
) ENGINE=Archive;

DELIMITER **
CREATE TRIGGER users_after_insert AFTER INSERT ON users
FOR EACH ROW BEGIN
INSERT INTO logs (table_name, record_id, record_irstname, record_lastname, record_email, record_phone) VALUES ('users', NEW.id, NEW.firstname, NEW.lastname, NEW.email, NEW.phone);
END**
DELIMITER ;

DELIMITER **
CREATE TRIGGER user_passports_after_insert AFTER INSERT ON user_passports
FOR EACH ROW BEGIN
INSERT INTO logs (table_name, record_id, record_passport_number, record_birthday, record_gender) VALUES ('products', NEW.id, NEW.passport_number, NEW.birthday, NEW.gender);
END**
DELIMITER ;

-- 2. Триггер, который после поступления новой оценки пересчитывает среднюю оценку отеля

DELIMITER **
CREATE TRIGGER hotel_reviews_on_insert AFTER INSERT ON hotel_reviews
FOR EACH ROW BEGIN
	UPDATE hotels h SET h.avg_grade = (SELECT SUM(hr.grade)/COUNT(*) FROM hotel_reviews hr WHERE hr.hotel_id = NEW.hotel_id);
END**
DELIMITER ;

SELECT * FROM hotels WHERE id = 87;

INSERT INTO hotel_reviews (hotel_id, user_id, grade, review) values (87,11,2,"bad");
