# CHAR_LENGTH(STRING);

# SELECT author_lname ,CHAR_LENGTH(author_lname) FROM books;

SELECT 
    CONCAT(
        author_lname, 'has ', CHAR_LENGTH(author_lname), ' character long'
    )
FROM books;