This repository contains SQL queries designed to retrieve data from the booking system database involving users, bookings, properties, and reviews. The queries demonstrate the use of different types of SQL JOINs (INNER JOIN, LEFT JOIN, and FULL OUTER JOIN) to combine data from multiple tables based on their relationships.

Queries Included

1. Retrieve All Bookings with Respective Users (INNER JOIN)
This query fetches all bookings along with the details of the users who made those bookings. It uses an INNER JOIN to return only bookings that have an associated user.

Purpose: List all bookings with user information.

Result: Only bookings linked to existing users are included.

2. Retrieve All Properties and Their Reviews (LEFT JOIN)
This query retrieves all properties and their associated reviews, including properties that have no reviews. It uses a LEFT JOIN to ensure every property is listed even if it has no review.

Purpose: List every property with its reviews if available.

Result: Properties without reviews will have NULL values in review columns.

3. Retrieve All Users and All Bookings (FULL OUTER JOIN)
This query retrieves all users and all bookings, including users without bookings and bookings not linked to any user. It uses a FULL OUTER JOIN to combine all records from both tables.

Purpose: Get a comprehensive list of all users and bookings regardless of linkage.

Result:

Users without bookings will have NULL in booking columns.

Bookings without linked users will have NULL in user columns.
