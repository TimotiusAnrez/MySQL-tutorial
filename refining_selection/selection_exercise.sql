SELECT CONCAT('My favorite author is ',author_fname, ' ',author_lname, ' !') FROM books ORDER BY author_lname;

SELECT title FROM books WHERE title LIKE '%stories%';

SELECT title, author_lname FROM books ORDER BY author_lname, title;

SELECT * FROM books ORDER BY stock_quantity DESC LIMIT 3;

SELECT CONCAT(title, ' - ', released_year) FROM books ORDER BY released_year DESC LIMIT 3;

SELECT title, CONCAT(author_fname, ' ', author_lname) AS author FROM books WHERE author_lname LIKE '% %';

SELECT title FROM books ORDER BY CHAR_LENGTH(title) DESC LIMIT 1;

SELECT title FROM books ORDER BY pages LIMIT 3;