# 🗂️ Booking Table Partitioning Performance Report

## 🎯 Objective

Optimize query performance on the large `Booking` table by implementing **table partitioning** using the `start_date` column.

---

## ⚙️ Implementation Details

We applied **RANGE partitioning** on the `Booking` table by the year of `start_date`. This approach allows MySQL to quickly prune irrelevant partitions when filtering bookings by date.

### ✅ Partitioned Table Definition

```sql
-- Create the Booking table with columns and constraints
CREATE TABLE Booking (
    booking_id VARCHAR(255) NOT NULL,
    property_id VARCHAR(255) NOT NULL,
    user_id VARCHAR(255) NOT NULL,
    total_price DECIMAL(10, 2) NOT NULL,
    status VARCHAR(10) NOT NULL CHECK (
        status IN ('pending', 'confirmed', 'canceled')
    ),
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (booking_id),
    FOREIGN KEY (property_id) REFERENCES Property (property_id),
    FOREIGN KEY (user_id) REFERENCES User (user_id)
) PARTITION BY RANGE (start_date);

-- Create a partition for bookings in 2022
CREATE TABLE Booking_2022 PARTITION OF Booking
    FOR VALUES FROM ('2022-01-01') TO ('2023-01-01');

-- Create a partition for bookings in 2023
CREATE TABLE Booking_2023 PARTITION OF Booking
    FOR VALUES FROM ('2023-01-01') TO ('2024-01-01');

-- Create a partition for bookings in 2024
CREATE TABLE Booking_2024 PARTITION OF Booking
    FOR VALUES FROM ('2024-01-01') TO ('2025-01-01');
```

---

## 📊 Query Performance Test

### 🔍 Test Query

```sql
EXPLAIN SELECT * FROM Booking WHERE start_date BETWEEN '2023-01-01' AND '2023-12-31';
```

### 📈 Before Partitioning

- **Full Table Scan**
- **High I/O cost** on large datasets
- **Slower query execution**

### ✅ After Partitioning

- **Partition Pruning Activated**
- Only `Booking_2023` partition is scanned
- **Reduced I/O** and **faster execution**

---

## 💡 Summary of Benefits

| Benefit           | Description                                               |
| ----------------- | --------------------------------------------------------- |
| 🚀 Improved Speed | Queries using date filters are significantly faster       |
| 📉 Reduced I/O    | Only relevant partitions are scanned                      |
| 🔧 Scalability    | Easier to manage large volumes of historical booking data |

---

## 📁 File Reference

- **Script File:** `partitioning.sql`
