SELECT
  Booking.booking_id
  Booking.property_id
  Booking.user_id
  Booking.start_date
  Booking.end_date
  Booking.total_price
  Booking. status
  Booking.created_at
FROM
  Booking
INNER JOIN 
  User ON user_id = Booking_id
;


