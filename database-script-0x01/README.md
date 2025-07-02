UUID is used for all primary keys as requested.

VARCHAR lengths are set to 255, which is standard for names, emails, and locations.

ENUM types enforce allowed values for role, status, and payment_method.

Foreign keys ensure referential integrity.

Indexes are added on frequently queried columns (e.g., email, foreign key columns).

Constraints such as UNIQUE on email, NOT NULL on required fields, and CHECK on rating enforce data validity.

created_at and updated_at timestamps track record creation and modification times.
