-- Insert Users (guests, hosts, and admin)
INSERT INTO User (user_id, first_name, last_name, email, password_hash, phone_number, role, created_at) VALUES
('01', 'Alice', 'Johnson', 'alice.johnson@example.com', 'hashed_password_1', '+254756789010', 'guest', '2025-06-01 10:00:00'),
('02', 'Bob', 'Smith', 'bob.smith@example.com', 'hashed_password_2', '+254734567891', 'host', '2025-06-02 11:00:00'),
('03', 'Carol', 'Williams', 'carol.williams@example.com', 'hashed_password_3', '+25434567892', 'guest', '2025-06-03 12:00:00'),
('04', 'David', 'Brown', 'david.brown@example.com', 'hashed_password_4', '+254734567893', 'host', '2025-06-04 13:00:00'),
('05', 'Eve', 'Davis', 'eve.davis@example.com', 'hashed_password_5', '+254734567894', 'admin', '2025-06-05 14:00:00');

-- Insert Properties (hosted by Bob and David)
INSERT INTO Property (property_id, host_id, name, description, location, pricepernight, created_at, updated_at) VALUES
('15', 'b2fddc9b-2e4e-5g7b-0d3f-1b2c3d4e5f6a', 'Cozy Mountain Cabin', 'A cozy cabin in the mountains with beautiful views.', 'Nairobi', 2000.00, '2025-06-10 09:00:00', '2025-06-10 09:00:00'),
('16', 'd4hfefbd-4g6g-7i9d-2f5h-3d4e5f6a7b8c', 'Beachfront Bungalow', 'A beautiful bungalow right on the beach.', 'Nakuru', 2500.00, '2025-06-11 10:00:00', '2025-06-11 10:00:00'),
('17', 'b2fddc9b-2e4e-5g7b-0d3f-1b2c3d4e5f6a', 'Downtown Apartment', 'Modern apartment located in the city center.', ' Muranga', 1500.00, '2025-06-12 11:00:00', '2025-06-12 11:00:00');

-- Insert Bookings (Alice and Carol booking properties)
INSERT INTO Booking (booking_id, property_id, user_id, start_date, end_date, total_price, status, created_at) VALUES
('aaaaaaa1-bbbb-cccc-dddd-eeeeeeeeeeee', '15', '01', '2025-07-01', '2025-07-05', 6000.00, 'confirmed', '2025-06-15 08:00:00'),
('bbbbbbb2-cccc-dddd-eeee-ffffffffffff', '16', '03', '2025-07-10', '2025-07-15', 5000.00, 'pending', '2025-06-16 09:00:00'),
('ccccccc3-dddd-eeee-ffff-111111111111', '17', '01', '2025-07-20', '2025-07-22', 3000.00, 'canceled', '2025-06-17 10:00:00');

-- Insert Payments (for confirmed bookings)
INSERT INTO Payment (payment_id, booking_id, amount, payment_date, payment_method) VALUES
('pay11111-2222-3333-4444-555555555555', 'aaaaaaa1-bbbb-cccc-dddd-eeeeeeeeeeee', 6000.00, '2025-06-20 12:00:00', 'credit_card'),
('pay22222-3333-4444-5555-666666666666', 'bbbbbbb2-cccc-dddd-eeee-ffffffffffff', 0.00, '2025-06-21 13:00:00', 'paypal'); -- No payment yet, just placeholder

-- Insert Reviews (Alice reviews Cozy Mountain Cabin)
INSERT INTO Review (review_id, property_id, user_id, rating, comment, created_at) VALUES
('rev11111-2222-3333-4444-555555555555', '15', '01', 5, 'Amazing stay! The cabin was cozy and the views were breathtaking.', '2025-07-06 15:00:00'),
('rev22222-3333-4444-5555-666666666666', '15', '01', 4, 'Great location and very comfortable.', '2025-07-16 16:00:00');

-- Insert Messages (between Alice and Bob)
INSERT INTO Message (message_id, sender_id, recipient_id, message_body, sent_at) VALUES
('msg11111-2222-3333-4444-555555555555', 'a1eebc8a-1f3d-4f6a-9c2e-0a1b2c3d4e5f', 'b2fddc9b-2e4e-5g7b-0d3f-1b2c3d4e5f6a', 'Hi Bob, is the Cozy Mountain Cabin available for July 1-5?', '2025-06-14 09:00:00'),
('msg22222-3333-4444-5555-666666666666', 'b2fddc9b-2e4e-5g7b-0d3f-1b2c3d4e5f6a', 'a1eebc8a-1f3d-4f6a-9c2e-0a1b2c3d4e5f', 'Hi Alice, yes it is available. Let me know if you want to book.', '2025-06-14 09:15:00');

