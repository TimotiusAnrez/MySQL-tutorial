# UPPER(string) will make all the string to uppercase
# LOWER(string) will make all the string to lowercase

SELECT 
    UPPER(author_lname) as upper,
    LOWER(author_lname) as lower
FROM books;