# BETWEEN also straightforward, it will return value between range of parameter. We can also use greater than and less than with logical and to achieve the same result of between, NOT BETWEEN means that it is not between the range of the parameter.

# if we are working with date and time value, use CAST() to achieve desired data type. Sometimes we got input of date in a form of string(VARCHAR) so to convert it to DATE data type it is best to use CAST(string_input AS DATE/DATETIME). Although MySQL is smart  enough to figure out that string date is a date but it is a best practice to convert it to appropiate data type before we compare it to other data of that data type, so using CAST though is not a must but it is the best to do it to avoid future breakdown.

SELECT title, released_year FROM books WHERE released_year >= 2004 AND released_year <= 2015; # same result with between
 
SELECT title, released_year FROM books 
WHERE released_year BETWEEN 2004 AND 2015;
 
SELECT title, released_year FROM books 
WHERE released_year NOT BETWEEN 2004 AND 2015;
 
SELECT CAST('2017-05-02' AS DATETIME);
 
show databases;
 
use new_testing_db;
 
SELECT name, birthdt FROM people WHERE birthdt BETWEEN '1980-01-01' AND '2000-01-01';
 
SELECT 
    name, 
    birthdt 
FROM people
WHERE 
    birthdt BETWEEN CAST('1980-01-01' AS DATETIME)
    AND CAST('2000-01-01' AS DATETIME);