# Database Seed Script

## Overview

This script populates the database with initial sample data to simulate real-world use of the ALX Airbnb clone backend.

## Files

- `seed.sql`: SQL `INSERT` statements to add test data.
- `README.md`: Documentation for this seed phase.

## Sample Data Description

- **Users**: 3 users with roles `guest`, `host`, and `admin`.
- **Properties**: 2 properties listed by a host.
- **Bookings**: 2 bookings, each with different statuses.
- **Payments**: 1 payment linked to a confirmed booking.
- **Reviews**: Ratings and comments from a guest.
- **Messages**: Conversations between a guest and host.

## Usage

To seed your database:

```bash
psql -U your_user -d your_database -f seed.sql
# or for MySQL
mysql -u your_user -p your_database < seed.sql
```
