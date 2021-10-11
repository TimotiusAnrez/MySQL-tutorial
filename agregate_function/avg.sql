# SELECT AVG(column_parameter) FROM table same as sum this is just the combine of sum devided by count

SELECT released_year, AVG(stock_quantity) FROM books GROUP BY released_year; # => will output average stocks of each year

SELECT CONCAT(author_fname, ' ', author_lname), AVG(stock_quantity) FROM books GROUP BY author_lname, author_fname; # => will output average stocks of each author

SELECT CONCAT(author_fname, ' ', author_lname), AVG(pages) FROM books GROUP BY author_lname, author_fname; # => will give avergae pages writen by author