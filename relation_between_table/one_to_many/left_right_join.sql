# so remember of the inner join (A n B, A intesect B) now we are going to do LEFT JOIN and RIGHT JOIN which is intersect A and B but also combine with data from A for LEFT JOIN and B for RIGHT JOIN

# INNER JOIN

SELECT 
    first_name, 
    last_name, 
    amount
FROM customers
    JOIN orders
        ON customers.id = orders.customer_id;
        
# LEFT JOIN

SELECT
    first_name,
    last_name,
    amount
FROM customers
    LEFT JOIN orders
        ON customers.id = orders.customer_id;
# now this by itself is not useful as there is a null value there so how do we avoid this? 

# CLEANER SOLUTION (REMOVING NULL)

SELECT
    first_name,
    last_name,
    IFNULL(amount, 0)
FROM customers
    LEFT JOIN orders
        ON customers.id = orders.customer_id;

# So in a sense, LEFT JOIN means that select everything in table A and include the one that intersect with B. Hence RIGHT JOIN means that select everything in B that intersect with A

# RIGHT JOIN

SELECT *
FROM customers
    RIGHT JOIN orders
        ON customers.id = orders.customer_id;
# it will give the same result with inner join which is kinda silly, but this is because that one to many relationship that makes each order have a customers so the difference is not visible however in some cases that the some data are missing the right join will shown an discrepancy within the data and shown an error.
