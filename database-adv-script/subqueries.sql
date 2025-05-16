SELECT *
FROM Property
WHERE
    property_id in (
        SELECT property_id
        FROM Review
        GROUP BY
            property_id
        HAVING
            AVG(rating) > 4
    );

SELECT *
FROM User u
WHERE (
        SELECT COUNT(*)
        FROM Booking
        WHERE
            Booking.user_id = user_id
    ) > 3;