'''sql 
#Before Indexing
SELECT u.user_id,u.name
FROM User u
JOIN Booking b ON u.user_id = b.user_id
WHERE b.start_date > '2025-01-01';
'''
ANALYZE
SELECT u.user_id, u.name
FROM User u
JOIN Booking b ON u.user_id = b.user_id
WHERE b.start_date > '2025-01-01';
'''sql
#Bookings table: Index on user_id for joins and filtering by user

CREATE INDEX idx_bookings_user_id ON Booking(user_id);

#Bookings table: Index on property_id for joins and filtering by property
CREATE INDEX idx_bookings_property_id ON Booking(Property_id);

#Bookings table: Composite index on start_date and end_date for queries filtering or ordering by booking date range
CREATE INDEX idx_bookings_date_range ON Booking(start_date, end_date);

#After indexing
ANALYZE
SELECT u.user_id, u.name
FROM User u
JOIN Booking b ON u.user_id = b.user_id
WHERE b.start_date > '2025-01-01';
'''

