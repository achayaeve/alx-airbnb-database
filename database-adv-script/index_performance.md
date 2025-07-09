#Bookings table: index on user_id for joins and filtering by user
   CREATE INDEX idx_bookings_user_id ON bookings(user_id);

-- Bookings table: index on property_id for joins and filtering by property

  CREATE INDEX idx_bookings_property_id ON bookings(property_id);

-- Bookings table: index on booking_date if queries filter or order by date

  CREATE INDEX idx_bookings_booking_date ON bookings(booking_date);
