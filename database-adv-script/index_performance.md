CREATE 
  INDEX idx_bookings_user_id
  ON Booking(user_id);

CREATE 
  INDEX idx_bookings_property_id 
  ON Booking(property_id);

CREATE
  INDEX idx_bookings_date_range 
  ON Booking(start_date, end_date);

