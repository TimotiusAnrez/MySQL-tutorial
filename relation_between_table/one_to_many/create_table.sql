# setting up table that have relationship of one to many with other table. Important to notes that one to many relationship means that one table have relation with many table while other table that have relationship with that one table only have one relationship with it. For example order and customer, customer can have many order, but each order only serve one customer.
DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS customers;

CREATE TABLE customers(
        id INT AUTO_INCREMENT PRIMARY KEY,
        first_name VARCHAR(100),
        last_name VARCHAR(100),
        email VARCHAR(100)
);

CREATE TABLE orders(
    id INT AUTO_INCREMENT PRIMARY KEY,
    order_date DATE,
    amount DECIMAL(8,2),
    customer_id INT,
    FOREIGN KEY (customer_id) 
        REFERENCES customers(id)
        ON DELETE CASCADE # => what this do is that when customers table delteded delete the order as well
);

# FOREIGN KEY (key_parameter_column) REFERENCES table(key_parameter_column)

# FOREIGN KEY makes the selected parameter as the foreign key that relate that table with other table in which the column_parameter for the REFERENCES and inside  the brackets is the key chosen that serve as the foreign key in this case (id)

# FOREIGN KEY (column_parameter) REFERENCES table_parameter(column_parameter from the table_parameter);

# seeding table

INSERT INTO customers (first_name, last_name, email) 
VALUES ('Boy', 'George', 'george@gmail.com'),
       ('George', 'Michael', 'gm@gmail.com'),
       ('David', 'Bowie', 'david@gmail.com'),
       ('Blue', 'Steele', 'blue@gmail.com'),
       ('Bette', 'Davis', 'bette@aol.com');
       
INSERT INTO orders (order_date, amount, customer_id)
VALUES ('2016/02/10', 99.99, 1),
       ('2017/11/11', 35.50, 1),
       ('2014/12/12', 800.67, 2),
       ('2015/01/03', 12.50, 2),
       ('1999/04/11', 450.25, 5);