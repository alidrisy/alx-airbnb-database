-- Drop existing tables for safety (in order of dependency)
DROP TABLE IF EXISTS Message,
Review,
Payment,
Booking,
Property,
User CASCADE;

-- User table
CREATE TABLE User (
    user_id VARCHAR(255) PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    password_hash VARCHAR(255) NOT NULL,
    phone_number VARCHAR(20),
    role VARCHAR(10) NOT NULL CHECK (
        role IN ('guest', 'host', 'admin')
    ),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Property table
CREATE TABLE Property (
    property_id VARCHAR(255) PRIMARY KEY,
    host_id VARCHAR(255) NOT NULL,
    name VARCHAR(255) NOT NULL,
    description TEXT NOT NULL,
    location VARCHAR(255) NOT NULL,
    pricepernight DECIMAL(10, 2) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    CONSTRAINT fk_host FOREIGN KEY (host_id) REFERENCES User (user_id)
);

-- Booking table
CREATE TABLE Booking (
    booking_id VARCHAR(255) PRIMARY KEY,
    property_id VARCHAR(255) NOT NULL,
    user_id VARCHAR(255) NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    total_price DECIMAL(10, 2) NOT NULL,
    status VARCHAR(10) NOT NULL CHECK (
        status IN (
            'pending',
            'confirmed',
            'canceled'
        )
    ),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT fk_booking_property FOREIGN KEY (property_id) REFERENCES Property (property_id),
    CONSTRAINT fk_booking_user FOREIGN KEY (user_id) REFERENCES User (user_id)
);

-- Payment table
CREATE TABLE Payment (
    payment_id VARCHAR(255) PRIMARY KEY,
    booking_id VARCHAR(255) NOT NULL,
    amount DECIMAL(10, 2) NOT NULL,
    payment_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    payment_method VARCHAR(20) NOT NULL CHECK (
        payment_method IN (
            'credit_card',
            'paypal',
            'stripe'
        )
    ),
    CONSTRAINT fk_payment_booking FOREIGN KEY (booking_id) REFERENCES Booking (booking_id)
);

-- Review table
CREATE TABLE Review (
    review_id VARCHAR(255) PRIMARY KEY,
    property_id VARCHAR(255) NOT NULL,
    user_id VARCHAR(255) NOT NULL,
    rating INTEGER NOT NULL CHECK (
        rating >= 1
        AND rating <= 5
    ),
    comment TEXT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT fk_review_property FOREIGN KEY (property_id) REFERENCES Property (property_id),
    CONSTRAINT fk_review_user FOREIGN KEY (user_id) REFERENCES User (user_id)
);

-- Message table
CREATE TABLE Message (
    message_id VARCHAR(255) PRIMARY KEY,
    sender_id VARCHAR(255) NOT NULL,
    recipient_id VARCHAR(255) NOT NULL,
    message_body TEXT NOT NULL,
    sent_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT fk_message_sender FOREIGN KEY (sender_id) REFERENCES User (user_id),
    CONSTRAINT fk_message_recipient FOREIGN KEY (recipient_id) REFERENCES User (user_id)
);