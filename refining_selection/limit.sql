# SELECT * FROM TABLE LIMIT int_params => use to limit the output base on the INT parameter inserted to the limit

# SELECT * FROM TABLE LIMIT start, end => will output from index start to end 

SELECT title, released_year FROM books
ORDER BY 2, 1 LIMIT 5;

SELECT title, released_year FROM books
ORDER BY 2, 1 LIMIT 3,9;
# common use case for using start and end index is for pagination since there are tons of data then it is a good idea to limit data that we send to our user

SELECT title, released_year FROM books
ORDER BY 2, 1 LIMIT 5,18446744073709551615;
# the last big number is equal to -1, which will make the query goes from start to the end of our table since aproaching negative one meaning infinity means to the end of our table