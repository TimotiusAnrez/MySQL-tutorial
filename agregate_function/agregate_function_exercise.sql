SELECT COUNT(title) FROM books;

SELECT COUNT(title) as number_of_books FROM books GROUP BY released_year;

SELECT SUM(stock_quantity) as stock_available FROM books;

SELECT CONCAT(author_fname, ' ', author_lname), AVG(released_year) FROM books GROUP BY author_lname, author_fname;

SELECT CONCAT(author_fname, ' ', author_lname) AS author_name, MAX(pages) FROM books WHERE pages = (SELECT MAX(pages) FROM books);

#2nd solution

SELECT CONCAT(author_fname, ' ', author_lname )AS author_name, pages FROM books ORDER BY pages DESC LIMIT 1;

SELECT released_year, COUNT(title), AVG(pages) FROM books GROUP BY released_year;