# now that we have relate customers table and orders table how are we gonna get the data that we need?

# two step query way

SELECT id FROM customers WHERE last_name='George';
SELECT * FROM orders WHERE customer_id = 1;

# subquery way

SELECT * FROM orders WHERE customer_id=(
    SELECT id FROM customers
    WHERE last_name = 'George'
);

# cross join

SELECT * FROM customers, orders; 

# now both of this way is ineffcient so we have to use join. First way to do it which is very rarely use is cross join (joining table together to become one big table output, A U B / A union B), this will become messy as two table joined together where column a + B equal to column c. not really useful at it's own so we need to perform extra query to make it useful

# inner join 

# So cross join is not useful by itself we need to set condition where it will give the output we want, which is the intersection of data or intersect of the venn diagram (A n B)

SELECT * FROM customers, orders
    WHERE customers.id = orders.customer_id;

# this inner join is done implicitly which is not encourage as the best practice hence we need to do it explicityly by using JOIN

SELECT * FROM customers
    JOIN orders
        ON customers.id = orders.customer_id;
        
# much cleaner version

SELECT first_name, last_name, order_date, amount
FROM customers
    JOIN orders
        ON customers.id = orders.customer_id;
        
