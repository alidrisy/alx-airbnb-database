# Database Normalization - ALX AirBnB Clone

## Objective

Ensure that the database design adheres to the principles of normalization, up to the Third Normal Form (3NF), to reduce redundancy and maintain data integrity.

---

## First Normal Form (1NF)

- Each table contains atomic values.
- There are no repeating groups or arrays.
- ✅ All tables in the schema satisfy 1NF.

---

## Second Normal Form (2NF)

- The schema uses single-column primary keys (UUIDs), so partial dependencies do not exist.
- All non-key attributes are fully functionally dependent on their table's primary key.
- ✅ All tables satisfy 2NF.

---

## Third Normal Form (3NF)

- No transitive dependencies exist between non-key attributes.
- Every non-key attribute depends **only** on the primary key.
- Example:
  - In the `Payment` table, `amount`, `payment_method`, and `payment_date` all depend solely on `payment_id`.
  - In the `Review` table, `rating` and `comment` depend only on `review_id`, not on each other.
- ✅ The database schema satisfies 3NF.

---

## Conclusion

After reviewing the schema, no violations of normalization principles were found. The design meets all requirements up to the Third Normal Form (3NF).
