#SELECT SUM(column_parameter) FROM table; => prety straight forward to sum all the column value of the table

SELECT SUM(pages) FROM books; # will result in total pages writen by all author

SELECT CONCAT(author_fname, ' ', author_lname), SUM(pages) 
FROM books 
GROUP BY author_lname, author_fname; # will output each author total pages writen