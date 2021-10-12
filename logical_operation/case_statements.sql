# case statements the most exiciting part of logical operation

SELECT title, released_year,
    CASE
        WHEN released_year >= 2000 THEN 'Modern Lit'
        ELSE '20th century lit'
    END AS genre
FROM books;

SELECT title, stock_quantity,
    CASE 
        WHEN stock_quantity <= 50 THEN '*'
        WHEN stock_quantity > 50 AND stock_quantity <= 100 THEN '**'
        ELSE '***'
    END AS stock
FROM books;

SELECT CONCAT(author_fname, ' ', author_lname),
    CASE
        WHEN stock_quantity <=50 THEN 'Best Selling'
        WHEN stock_quantity >50 AND stock_quantity <=100 THEN 'Popular'
        ELSE 'Not Bad'
    END AS popularity
FROM books;

# by using case statement we can manipulate the data we have without adding more data to the database, less space used cheaper database means we can perform much complex logical operation that serve as our business logic