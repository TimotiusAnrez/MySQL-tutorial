# NOT LIKE well prety straight forward like LIKE query this means not like if we put in the special operator like 'W%' will make it that don't get data start with W

SELECT title FROM books WHERE title LIKE 'W';
 
SELECT title FROM books WHERE title LIKE 'W%';
 
SELECT title FROM books WHERE title LIKE '%W%';
 
SELECT title FROM books WHERE title LIKE 'W%';
 
SELECT title FROM books WHERE title NOT LIKE 'W%'; # will output data that don't start with W