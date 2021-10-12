# != means not equal, so if we combine it with WHERE it will resulting with data that not equal to something

SELECT title FROM books WHERE released_year = 2017; # all data that have a released_year of 2007
 
SELECT title FROM books WHERE released_year != 2017; # all data that have a released year not in 2007
 
SELECT title, author_lname FROM books;
 
SELECT title, author_lname FROM books WHERE author_lname = 'Harris';
 
SELECT title, author_lname FROM books WHERE author_lname != 'Harris';