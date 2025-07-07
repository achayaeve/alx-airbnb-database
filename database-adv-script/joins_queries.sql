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

SELECT 
    Property.property_id,
    Property.name,
    Property.description,
    Property.location,
    Review.review_id,
    Review. rating,
    Review. comment
FROM 
    Property
LEFT JOIN 
    Review ON Property.property_id = Review.property_id
;

SELECT 
    User.user_id,
    User.first_name,
    User.last_name
    Booking.booking_id,
    Bookingstart_date
    Booking.end_date
FROM 
    User
FULL OUTER JOIN 
    Booking ON User.user_id = Booking.user_id
;



