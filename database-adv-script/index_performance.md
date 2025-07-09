CREATE INDEX INDEX idx_bookings_user_id ON Bookings(user_id)
CREATE INDEX idx_bookings_property_id ON Bookings(property_id)
CREATE INDEX idx_bookings_date_range ON Bookings(start_date, end_date)
