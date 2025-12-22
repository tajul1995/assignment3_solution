CREATE TABLE users (
    user_id SERIAL PRIMARY KEY,
    role VARCHAR(20) CHECK (role IN ('Admin', 'Customer')),
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    phone VARCHAR(20)
);
