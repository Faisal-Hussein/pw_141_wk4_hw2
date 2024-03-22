CREATE TABLE customers(
    customer_id SERIAL PRIMARY KEY,
    customer_name VARCHAR(50),
    phone VARCHAR(20),
    email VARCHAR,
    age INTEGER

);

CREATE TABLE sale(
    sale_id SERIAL PRIMARY KEY,
    customer_id INTEGER,
    amount NUMERIC(8,2),
    sale_date TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    price NUMERIC(8,2),
    product_name VARCHAR,
    product_type VARCHAR
);

ALTER TABLE sale
    ADD column customer_id INTEGER,
    ADD CONSTRAINT f_customer_id FOREIGN KEY (customer_id) REFERENCES customers (customer_id);


CREATE TABLE movie(
    movie_id SERIAL PRIMARY KEY,
    ticket_id INTEGER,
    title VARCHAR(256),
    genre VARCHAR(512),
    duration TIME
);

ALTER TABLE movie
    ADD FOREIGN KEY (ticket_id) REFERENCES ticket(ticket_id)

CREATE TABLE ticket(
    ticket_id SERIAL PRIMARY KEY,
    sale_id INTEGER,
    price NUMERIC(8,2),
    sale_date TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

ALTER TABLE ticket
    ADD FOREIGN KEY (sale_id) REFERENCES sale(sale_id)