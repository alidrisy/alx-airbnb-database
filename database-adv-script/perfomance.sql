-- Initial query
-- Initial query
SELECT
  *
FROM Booking b
JOIN User u ON b.user_id = u.user_id
JOIN Property p ON b.property_id = p.property_id
JOIN Payment pay ON b.booking_id = pay.booking_id
WHERE u.email = 'alice@example.com' AND p.name = 'Cozy Cabin';



-- explain this
EXPLAIN -- Initial query
SELECT
  *
FROM Booking b
JOIN User u ON b.user_id = u.user_id
JOIN Property p ON b.property_id = p.property_id
JOIN Payment pay ON b.booking_id = pay.booking_id
WHERE u.email = 'alice@example.com' AND p.name = 'Cozy Cabin';
