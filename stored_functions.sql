CREATE FUNCTION add_car(
    car_num INTEGER,
    c_make VARCHAR(100),
    c_model VARCHAR(100),
    c_year VARCHAR(100),
    c_price VARCHAR(10),
    n_used VARCHAR(100)
)
RETURNS VOID
LANGUAGE plpgsql
AS
$MAIN$
BEGIN
    INSERT INTO car(
        car_id,
        make,
        model,
        car_year,
        car_price,
        new_used
    ) VALUES(
        car_num,
        c_make,
        c_model,
        c_year,
        c_price,
        n_used
    );
END
$MAIN$;

SELECT add_car (9999, 'ford','f150','2022','$60,000','new');

SELECT *
FROM car;

CREATE FUNCTION add_salesperson(
    sales_num INTEGER,
    s_fname VARCHAR(100),
    s_lname VARCHAR(100),
    s_email VARCHAR(100),
    s_phonenum VARCHAR(30)
)
RETURNS VOID
LANGUAGE plpgsql
AS
$MAIN$
BEGIN
    INSERT INTO salesperson(
        salesperson_id,
        first_name,
        last_name,
        email,
        phone_number
    ) VALUES (
        sales_num,
        s_fname,
        s_lname,
        s_email,
        s_phonenum
    );
END
$MAIN$

SELECT add_salesperson(9999,'chris','s','chriss@gmail.com','111-111-1113')


SELECT *
FROM service_ticket;