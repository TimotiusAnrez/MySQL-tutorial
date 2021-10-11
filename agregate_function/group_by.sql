# SELECT column FROM table GROUPS BY column_parameter => this will result in having a distinct super set of data as a row for each column parameter used. Each row can be manipulate using agregate function like count, etc. Important notes, since MySQL 5.8 above the GROUPS BY function has ONLY FULL GROUP BY mode on by default, so performing GROUP BY with multiple select column without any AGREGATE FUNCTION will resulting in an error. It is also not make any sense to perform a group by but only having one piece of data shown and the rest abstracted.

SELECT author_lname, COUNT(*) AS books_writen FROM books GROUP BY author_lname; # => output of this query will be total amount of books writen by the author but there is a mistake since last name harris have 2 different first name so we need to modify it to specify it in the GROUP BY column_parameter

SELECT author_fname, author_lname, COUNT(*) AS books_writen FROM books GROUP BY author_lname, author_fname; # => now this will result in the correct format

SELECT released_year, COUNT(title) AS books_publish FROM books GROUP BY released_year; # => output of this query will be total number of books writen in that year as specify in the query which is group all data in table by the released_year and show the released year and count each of the relased_year set how many books are there

SELECT CONCAT(author_fname, ' ', author_lname) AS author_name, COUNT(title) AS books_writen FROM books GROUP BY author_lname, author_fname; # same result as the second query just a bit nicer :D