SELECT user_id, COUNT(*) FROM Booking GROUP BY user_id;

SELECT
    booking_id,
    property_id,
    ROW_NUMBER() OVER (
        PARTITION BY
            property_id
    ) AS row_num,
    RANK() OVER (
        PARTITION BY
            property_id
    ) AS property_rank
FROM Booking;