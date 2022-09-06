INSERT INTO salesperson(
    first_name,
    last_name,
    email,
    phone_number
) VALUES (
    'john',
    'doe',
    'johnd@gmail.com',
    '111-111-1111'
),(
    'william',
    'butcher',
    'williamb@gmail.com',
    '111-111-1112'
);



INSERT INTO car(
    make,
    model,
    car_year,
    car_price,
    new_used
) VALUES (
    'nissan',
    '370z',
    '2011',
    '$16,000',
    'used'
),(
    'ford',
    'fusion',
    '2019',
    '$20,000',
    'used'
);

INSERT INTO customer(
    first_name,
    last_name,
    email,
    phone_number
) VALUES (
    'logan',
    'kostas',
    'logank@gmail.com',
    '222-222-2222'
),(
    'ana',
    'd',
    'anad@gmail.com',
    '222-222-2223'
);

INSERT INTO mechanic(
    first_name,
    last_name,
    email,
    phone_number
) VALUES (
    'john',
    'smith',
    'johns@gmail.com',
    '333-333-3333'
),(
    'mike',
    'erd',
    'mikee@gmail.com',
    '333-333-3334'
);

INSERT INTO invoice(
    invoice_date,
    price
) VALUES (
    '2022-05-08',
    '$15,000'
),(
    '2022-05-09',
    '$20,000'
);

SELECT *
FROM invoice;

SELECT *
FROM car;

INSERT INTO service_ticket(
    repair_type,
    service_ticket_date
)VALUES (
    'oil change',
    '2022-01-12'
),(
    'brake change',
    '2022-01-12'
);

INSERT INTO service_history(
    history_repair_type,
    service_history_date,
    service_price
)VALUES (
    'oil change',
    '2022-09-03',
    '$80'
),(
    'brake change',
    '2022-09-03',
    '$60'
);

SELECT *
FROM service_ticket;