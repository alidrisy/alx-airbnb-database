
# ProDev Backend: Unleashing Advanced Querying Power

## 📚 About the Project

This project is part of the **ALX Airbnb Database Module**, where professional developers tackle real-world challenges in **advanced SQL querying** and **database optimization**. You will work with a simulated Airbnb database to develop skills in complex querying, indexing, partitioning, and schema refinement. This project is designed to simulate the demands of large-scale production systems.

---

## 🎯 Learning Objectives

By completing this project, you will be able to:

- ✅ Master complex SQL queries using joins, subqueries, and aggregations.
- ✅ Optimize query performance using `EXPLAIN`, `ANALYZE`, and schema changes.
- ✅ Implement indexing and table partitioning for large data sets.
- ✅ Monitor and refine database performance.
- ✅ Think like a Database Administrator (DBA) and make performance-aware decisions.

---

## 📋 Requirements

Before starting, make sure you:

- Understand basic SQL commands (`SELECT`, `WHERE`, `GROUP BY`, etc.).
- Are familiar with database relationships, normalization, keys.
- Know how to interpret query plans with `EXPLAIN` and `ANALYZE`.
- Have a GitHub repository setup for submission.

---

## 🧩 Key Project Highlights

### 1. Defining Relationships with ER Diagrams
- Model Airbnb relationships between `users`, `bookings`, `properties`, and `reviews`.

### 2. Complex Queries with Joins
- Write queries using:
  - `INNER JOIN`: Bookings and their users.
  - `LEFT JOIN`: Properties and their reviews (including properties without reviews).
  - `FULL OUTER JOIN`: All users and all bookings (even those without matches).

### 3. Power of Subqueries
- Write:
  - Non-correlated subqueries (e.g., average ratings > 4.0).
  - Correlated subqueries (e.g., users with more than 3 bookings).

### 4. Aggregations and Window Functions
- Use `COUNT`, `SUM`, and grouping.
- Apply `ROW_NUMBER`, `RANK` to rank properties based on bookings.

### 5. Indexing for Optimization
- Identify high-usage columns.
- Use `CREATE INDEX` to improve performance.
- Analyze queries with and without indexes using `EXPLAIN`.

### 6. Query Optimization Techniques
- Refactor complex queries for:
  - Users
  - Properties
  - Payments
  - Bookings
- Reduce redundancies and leverage indexes.

### 7. Partitioning Large Tables
- Implement partitioning on the `Booking` table (e.g., by `created_at`).
- Compare performance before and after partitioning.

### 8. Performance Monitoring and Schema Refinement
- Use `SHOW PROFILE`, `EXPLAIN ANALYZE`.
- Identify bottlenecks and propose schema improvements.

---

## ✅ Tasks

### 0. Write Complex Queries with Joins (mandatory)

- File: `joins_queries.sql`
- Write:
  - `INNER JOIN` between bookings and users.
  - `LEFT JOIN` between properties and reviews.
  - `FULL OUTER JOIN` for users and bookings.

---

### 1. Practice Subqueries (mandatory)

- File: `subqueries.sql`
- Write:
  - Subquery to find properties with average rating > 4.0.
  - Correlated subquery to find users with >3 bookings.

---

### 2. Apply Aggregations and Window Functions (mandatory)

- File: `aggregations_and_window_functions.sql`
- Write:
  - Total number of bookings per user using `COUNT` and `GROUP BY`.
  - Use `ROW_NUMBER` or `RANK` to rank properties based on bookings.

---

### 3. Implement Indexes for Optimization (mandatory)

- File: `index_performance.md`
- Write:
  - SQL `CREATE INDEX` statements for high-usage columns.
  - Use `EXPLAIN` or `ANALYZE` to compare before and after performance.

---

## 🗂️ Directory Structure

```
database-adv-script/
├── joins_queries.sql
├── subqueries.sql
├── aggregations_and_window_functions.sql
├── index_performance.md
└── README.md

```

---

## 🧠 Tips

- Use `EXPLAIN` before and after indexing to visualize the impact.
- Think about normalization and indexing trade-offs.
- Refactor long or repetitive queries into clean, readable formats.
- Document your approach in `index_performance.md`.

---

## 💬 Peer Feedback

Take advantage of peer reviews! Share your approach and learn from others to improve both your technical and communication skills.

---

## 🚀 Goal

Learn to query like a pro and **optimize real-world databases** for performance, scalability, and clarity.


