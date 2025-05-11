# Database Schema Definition (DDL)

## Overview

This directory contains the SQL script to define the schema for the ALX AirBnB clone backend database.

## Files

- `schema.sql`: Defines all tables, fields, constraints, and indexes.
- `README.md`: This documentation.

## Entities and Relationships

- **User**: Holds user information (guest, host, admin).
- **Property**: Associated with a host.
- **Booking**: Links users to property bookings.
- **Payment**: Payment data per booking.
- **Review**: Users review properties.
- **Message**: Messaging between users.

## Normalization

All tables are normalized to **Third Normal Form (3NF)** to reduce redundancy and maintain integrity.

## Usage

To create the schema in your PostgreSQL or MySQL DB:

```bash
psql -U your_user -d your_database -f schema.sql
# or for MySQL
mysql -u your_user -p your_database < schema.sql
```
