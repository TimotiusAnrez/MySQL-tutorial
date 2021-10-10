SELECT 
    UPPER(CONCAT(author_fname,' ', author_lname))
    AS author_fullName
FROM books;

SELECT
    title,
    CHAR_LENGTH(title) as characterLength
FROM books;

SELECT
    author_fname,
    REVERSE(author_fname)
FROM books;

SELECT
    REPLACE(title, ' ', '->')
    AS title
FROM books;

SELECT
    CONCAT(title ,' was released in ', released_year)
    AS trivia
FROM books;

SELECT
    CONCAT(SUBSTRING(title, 1, 10), '...') AS shorten_title,
    CONCAT(author_fname,',',author_lname) AS fullName,
    CONCAT(stock_quantity,' in stock') AS stock
FROM books;