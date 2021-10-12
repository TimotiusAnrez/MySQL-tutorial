# LOGICAL EVALUATION FOR BOOLEAN

SELECT 10 != 10; # => FALSE, 0
SELECT 15 > 14 AND 99 - 5 <= 94; # TRUE, 1
SELECT 1 IN (5,3) OR 9 BETWEEN 8 AND 10; # TRUE,1

# GET ALL BOOKS WRITEN BEFORE 1980

SELECT title, released_year FROM books WHERE released_year < 1980;

# GET ALL BOOKS WRITEN BY EGGERS OR CHABON

SELECT title, author_lname FROM books WHERE author_lname = 'Eggers' OR author_lname = 'Chabon';

# GET ALL BOOKS WRITEN BY LAHIRI AFTER 2000

SELECT title, released_year FROM books WHERE author_lname = 'Lahiri' AND released_year > 2000;

# GET ALL BOOKS  WITH PAGE COUNTS BETWEEN 100 AND 200

SELECT title, pages FROM books WHERE pages BETWEEN 100 AND 200;

# GET ALL BOOKS WHERE AUTHOR LAST NAME STARTS WITH C OR S

SELECT title, CONCAT(author_fname, ' ', author_lname) FROM books WHERE author_lname LIKE 'C%' OR author_lname LIKE 'S%';

# IF title contain stories, genre = 'short stories'. IF title contain kids or heartbreak, genre = memoir, else genre=novel

SELECT  title,
    CASE
        WHEN title LIKE '%stories%' THEN 'Short Stories'
        WHEN title LIKE '%kids%' OR title LIKE '%heartbreak%' THEN 'Memoir'
        ELSE 'Novel'
    END AS 'Genre'
FROM books;

# count every book that author have writen

SELECT CONCAT(author_fname, ' ', author_lname) AS author_name, CONCAT(COUNT(*), ' books writen') AS books_writen FROM books GROUP BY author_lname, author_fname;