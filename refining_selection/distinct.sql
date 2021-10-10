# SELECT DISTINCT parameter FROM table
# SELECT DISTINCT CONCAT(author_fname, ' ', author_lname) FROM books; => will return all output and remove dupplications

SELECT 
    DISTINCT author_fname, author_lname
FROM books;
# => will result in distinct fname and lname combine if both are the same it will be ommited

SELECT 
    DISTINCT CONCAT(author_fname, ' ', author_lname) AS author_name
FROM books;
# => will result the same as the above but concatenated