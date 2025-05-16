# 📊 Index Performance Report

## 🎯 Objective
Improve the performance of frequently run SQL queries by creating indexes on high-usage columns in the `User`, `Booking`, and `Property` tables.

---

## 🧩 Tables & High-Usage Columns

The following columns were identified based on their frequent use in `WHERE`, `JOIN`, and `ORDER BY` clauses:

| Index Name                   | Table     | Column       | Purpose                                      |
|-----------------------------|-----------|--------------|----------------------------------------------|
| idx_user_email              | User      | email        | Speeds up lookup by email (login, search)    |
| idx_property_host_id        | Property  | host_id      | Fast property retrieval per host             |
| idx_booking_property_id     | Booking   | property_id  | Enhances JOINs on property-booking           |
| idx_booking_user_id         | Booking   | user_id      | Improves user booking lookup                 |
| idx_payment_booking_id      | Payment   | booking_id   | Fast access to payments by booking           |
| idx_review_property_id      | Review    | property_id  | Improves property review lookup              |
| idx_review_user_id          | Review    | user_id      | Speeds up reviews made by a specific user    |

## 🧪 Performance Improvement Notes

- **Before Indexing:** Queries such as `SELECT * FROM Booking WHERE user_id = ?` resulted in full table scans.
- **After Indexing:** Execution plans showed usage of the respective index with a large reduction in scanned rows.

Use Example:
```sql
EXPLAIN SELECT * FROM Booking WHERE user_id = 1;
```

## 🏗️ Index Creation

**File: `database_index.sql`**

```sql
-- Index for faster lookup of users by email
CREATE INDEX idx_user_email ON User (email);

-- Index to optimize queries retrieving properties by host
CREATE INDEX idx_property_host_id ON Property (host_id);

-- Index to speed up joins and queries on property_id in Booking
CREATE INDEX idx_booking_property_id ON Booking (property_id);

-- Index to optimize queries fetching bookings by user
CREATE INDEX idx_booking_user_id ON Booking (user_id);

-- Index for quick access to payment information by booking
CREATE INDEX idx_payment_booking_id ON Payment (booking_id);

-- Index to improve performance of review-related queries by property
CREATE INDEX idx_review_property_id ON Review (property_id);

-- Index to enhance query speed for reviews written by specific users
CREATE INDEX idx_review_user_id ON Review (user_id);

```