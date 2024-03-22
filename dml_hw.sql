INSERT INTO customers(
    customer_name,
    phone,
    email,
    age
) VALUES (
    'Jeffery',
    '(614)222-3333',
    'Jeff3ry80@BT.com',
    44
),
(
    'Alex',
    '(621)312-5476',
    'A13X_92@cmail.com',
    32
);

INSERT INTO sale(
    customer_id,
    amount
) VALUES ( 
    1,
    350
);

INSERT INTO ticket(
    sale_id,
    price
) VALUES (
    6,
    9.99
);

INSERT INTO movie(
    ticket_id,
    title,
    genre
) VALUES (
    2,
    'Friday the 12th',
    'Horror'
);

SELECT * FROM sale;

SELECT * FROM ticket;

SELECT * FROM customers;