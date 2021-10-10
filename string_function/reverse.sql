# REVERSE(string);

SELECT CONCAT
    (author_fname, REVERSE(author_fname))
AS palindrome FROM books;