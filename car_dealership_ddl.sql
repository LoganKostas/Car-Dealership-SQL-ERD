CREATE TABLE salesperson(
    salesperson_id SERIAL PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    email VARCHAR(100),
    phone_number VARCHAR(30)
);

CREATE TABLE car(
    car_id SERIAL PRIMARY KEY,
    make VARCHAR(100),
    model VARCHAR(100),
    car_year VARCHAR(4),
    car_price VARCHAR(10),
    new_used VARCHAR(100)
);

CREATE TABLE customer(
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    email VARCHAR(100),
    phone_number VARCHAR(30)
);

CREATE TABLE mechanic(
    mechanic_id SERIAL PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    email VARCHAR(100),
    phone_number VARCHAR(30)
);

CREATE TABLE invoice(
    invoice_number SERIAL PRIMARY KEY,
    salesperson_id INTEGER,
    customer_id INTEGER,
    invoice_date DATE,
    car_id INTEGER,
    price VARCHAR(10),
    FOREIGN KEY (salesperson_id) REFERENCES salesperson(salesperson_id),
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY (car_id) REFERENCES car(car_id)
);

CREATE TABLE service_ticket(
    ticket_id SERIAL PRIMARY KEY,
    car_id INTEGER,
    customer_id INTEGER,
    mechanic_id INTEGER,
    repair_type VARCHAR(100),
    service_ticket_date DATE,
    invoice_number INTEGER,
    FOREIGN KEY (car_id) REFERENCES car(car_id),
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY (mechanic_id) REFERENCES mechanic(mechanic_id),
    FOREIGN KEY (invoice_number) REFERENCES invoice(invoice_number)
);

CREATE TABLE service_history(
    service_number SERIAL PRIMARY KEY,
    car_id INTEGER,
    customer_id INTEGER,
    history_repair_type VARCHAR(100),
    mechanic_id INTEGER,
    service_history_date DATE,
    service_price VARCHAR(10),
    ticket_id INTEGER,
    FOREIGN KEY (car_id) REFERENCES car(car_id),
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY (mechanic_id) REFERENCES mechanic(mechanic_id),
    FOREIGN KEY (ticket_id) REFERENCES service_ticket(ticket_id)
);