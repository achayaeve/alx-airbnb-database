 ```sql
#Before Indexing
SELECT u.user_id,u.name
FROM User u
JOIN Booking b ON u.user_id = b.user_id
WHERE b.start_date > '2025-01-01';

ANALYZE
SELECT u.user_id, u.name
FROM User u
JOIN Booking b ON u.user_id = b.user_id
WHERE b.start_date > '2025-01-01';
 
#After indexing
ANALYZE
SELECT u.user_id, u.name
FROM User u
JOIN Booking b ON u.user_id = b.user_id
WHERE b.start_date > '2025-01-01';

CREATE INDEX idx_bookings_user_id ON Booking(user_id);

CREATE INDEX idx_bookings_property_id ON Booking(Property_id);

CREATE INDEX idx_bookings_date_range ON Booking(start_date, end_date);
```
