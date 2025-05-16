SELECT *
from Booking
    INNER JOIN User ON Booking.user_id = User.user_id;

SELECT *
FROM Property
    LEFT JOIN Review ON Property.property_id = Review.property_id;

SELECT *
FROM users FULL OUTER
    JOIN booking ON users.id = booking.user_id
LIMIT 100;

-- Simulating FULL OUTER JOIN IN MYSQL
SELECT *
FROM User
    LEFT JOIN Booking ON User.user_id = Booking.user_id
UNION
SELECT *
FROM User
    RIGHT JOIN Booking ON User.user_id = Booking.user_id;