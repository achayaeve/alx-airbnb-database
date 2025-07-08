SELECT 
  user_id, COUNT(*) AS Total_bookings
FROM 
  Bookimg
GROUP BY 
  user_id
;

SELECT 
    property_id,
    property_name,
    Total_bookings,
    RANK() OVER (ORDER BY Total_bookings DESC) AS Booking_rank
FROM (
    SELECT 
        p.property_id,
        p.name,
        COUNT(b.booking_id) AS total_bookings
    FROM 
        Property p
    LEFT JOIN 
        Booking b ON p.property_id = b.property_id
    GROUP BY 
        p.property_id, p.property_name
) AS subquery;

