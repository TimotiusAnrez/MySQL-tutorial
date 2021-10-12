# pretty straight forward greater than is greater than. 'A' > 'a' = 0 why? because lower case and upper case is equal in SQL eyes you  can use this operator to return boolean value (0 and 1, 0 for false 1 for true) 

SELECT title, released_year FROM books ORDER BY released_year;
 
SELECT title, released_year FROM books 
WHERE released_year > 2000 ORDER BY released_year;
 
SELECT title, released_year FROM books 
WHERE released_year >= 2000 ORDER BY released_year;
 
SELECT title, stock_quantity FROM books;
 
SELECT title, stock_quantity FROM books WHERE stock_quantity >= 100;
 
SELECT 99 > 1;
 
SELECT 99 > 567;
 
100 > 5
-- true
 
-15 > 15
-- false
 
9 > -10
-- true
 
1 > 1
-- false
 
'a' > 'b'
-- false
 
'A' > 'a'
-- false
 
'A' >=  'a'
-- true
 
SELECT title, author_lname FROM books WHERE author_lname = 'Eggers';
 
SELECT title, author_lname FROM books WHERE author_lname = 'eggers';
 
SELECT title, author_lname FROM books WHERE author_lname = 'eGGers';


# less than also pretty straight forward like greater than. Keep in mind that in SQL eyes all alphabet are equal

SELECT title, released_year FROM books;
 
SELECT title, released_year FROM books
WHERE released_year < 2000;
 
SELECT title, released_year FROM books
WHERE released_year <= 2000;
 
SELECT 3 < -10;
-- false
 
SELECT -10 < -9;
-- true
 
SELECT 42 <= 42;
-- true
 
SELECT 'h' < 'p';
-- true
 
SELECT 'Q' <= 'q';
-- true