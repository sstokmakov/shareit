CREATE TABLE IF NOT EXISTS users
(
    id    SERIAL PRIMARY KEY,
    name  VARCHAR(255),
    email VARCHAR(255),
    CONSTRAINT UQ_USER_EMAIL UNIQUE (email)

);

CREATE TABLE IF NOT EXISTS items
(
    id          SERIAL PRIMARY KEY,
    name        VARCHAR(255),
    description VARCHAR(255),
    available   BOOLEAN,
    owner       INTEGER,
    CONSTRAINT fk_owner FOREIGN KEY (owner) REFERENCES users (id)
);

CREATE TABLE IF NOT EXISTS bookings
(
    id     SERIAL PRIMARY KEY,
    start_date_time  TIMESTAMP,
    end_date_time  TIMESTAMP,
    item   INTEGER,
    booker iNTEGER,
    status VARCHAR(20),

    CONSTRAINT fk_item FOREIGN KEY (item) REFERENCES items (id),
    CONSTRAINT fk_booker FOREIGN KEY (booker) REFERENCES users (id)
);