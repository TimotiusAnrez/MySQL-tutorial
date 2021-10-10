# quick sort query using ORDER BY
# SELECT sortParam1, sortParam2 FROM table ORDER BY sortParam OPTION(ASC); => by default order by  will sort descending, also more notes, there is no limit in sort params Go CRAZZY!!!

SELECT author_fname, author_lname FROM books ORDER BY author_fname ASC;

SELECT DISTINCT author_fname, author_lname FROM books ORDER BY 1 , 2;
# the 1 and 2 is an alias for the query parameter perform in select distinct

SELECT title, released_year FROM books ORDER BY released_year, title;
# the sort algorithm will sort the first parameter then sort the output using the second parameter