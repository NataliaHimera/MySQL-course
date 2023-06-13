-- 1. Сколько бронирований отелей в год у каждого пользователя

SELECT 
	initiator_user_id,
	(SELECT email FROM users WHERE id = hotel_booking_requests.initiator_user_id) AS 'пользователь',
	YEAR(requested_at) AS 'год',
	COUNT(*) AS cnt
FROM hotel_booking_requests 
GROUP BY initiator_user_id, 'год'
ORDER BY cnt DESC;
-- Пользователь с id 98 - путешественник, у него 4 бронирования.

-- 2. Количество отзывов об отелях, написанных каждым пользователем

SELECT 
	u.id,
	u.firstname,
	u.lastname,
	(SELECT COUNT(*) FROM hotel_reviews hr WHERE hr.user_id = u.id) AS cnt
FROM users u
GROUP BY u.id 
ORDER BY cnt DESC;
-- Пользователи Benjamin и Mozelle написали больше всех отзывов, по 4 каждый

-- 3. Рейтинг ТОП-10 стран по бронирпованиям туристов

SELECT
	c.name,
	COUNT(*) AS cnt
FROM countries c
JOIN cities ci ON ci.country_id = c.id
JOIN airlines a ON a.to_city_id = ci.id 
JOIN flight_booking_requests fbr ON fbr.target_airline_id = a.id 
GROUP BY c.id
ORDER BY cnt DESC, name ASC
LIMIT 10;
-- Лидирует Алжир, возможно, стоит туда съездить 

-- 4. Какие типы размещения наиболее популярны у туристов

SELECT
	ht.name,
	COUNT(*) AS cnt
FROM hotel_type ht 
JOIN hotels h ON h.hotel_type_id = ht.id
JOIN hotel_booking_requests hbr ON hbr.target_hotel_id = h.id
GROUP BY ht.id
ORDER BY cnt DESC;
-- Аппартаменты наиболее популярны

-- 5. ТОП-5 Самых загруженных авиарейсами аэропортов и стран по бронированиеям из нашей системы

SELECT 
	c.name,
	ap.name,
	COUNT(*) AS cnt
FROM airports ap
JOIN cities ci ON ci.id = ap.city_id 
JOIN countries c ON c.id = ci.country_id 
JOIN airports_airlines aa ON aa.airport_id = ap.id
JOIN airlines a ON a.id = aa.airline_id 
JOIN flight_booking_requests fbr ON fbr.target_airline_id = a.id 
GROUP BY ap.id
ORDER BY cnt DESC
LIMIT 5;
/* Поскольку наша база не настоящая, самыми загруженными по авиарейсам оказались Тунис и 
 небольшой обитаемый остров в Тихом океане, расположенный между Австралией и Новой Зеландией - остров Норфолк*/ 

-- 6. Вывести статистику подтверждений бронирований по странам

SELECT 
	c.name,
	COUNT(*) AS approved
FROM countries c
JOIN cities ci ON ci.country_id = c.id 
JOIN hotels h ON h.city_id = ci.id 
JOIN hotel_booking_requests hbr ON hbr.target_hotel_id = h.id 
WHERE hbr.status = 'approved'
GROUP BY c.name
ORDER BY approved DESC;
-- Отели африканского Бенина и Ангильи в карибском море лидируют

