# SELECT MIN(column_parameter) FROM table; => pretty straightforwarf this query will output the smallest data in the  column parameter
# SLEECT MAX(column_parameter) FROM table => like MIN this query will output the largest data in the column parameter

SELECT MIN(released_year) FROM books; # => output 1945
SELECT MAX(pages) FROM books; # => output 634
SELECT MIN(title) FROM books; # => 10% hapier
SELECT MAX(title) FROM books; # => White Noise

# but there is a problem if we combine it with other select it will only resulting in the biggest or smallest data with the first data of the next column parameter like this
SELECT MAX(pages), title FROM books; # => 634 The Namesake which is wrong because books with 634 pages is The Amazing Adventure of Kavalier & Clay. the reason why this happening is because each column parameter will be perform independently one and another, hence the most pages and the first title in the table. So how do we solve this?

# 1st solution is to use subquery
SELECT title, pages FROM books WHERE pages = (SELECT MAX(pages) FROM books); # => now this will giving us the correct output 634 pages title The Amazing Adventure of Kavalier & Clay. However there is an issue with performance since it will perform double full query of the table, so if we are working with big data this will be an expensive query to run as time complexity will be (O)^n^2

# 2nd solution is to use order by and limit both of which we already learn
SELECT title, pages FROM books ORDER BY pages DESC LIMIT 1; # => no super secret stuff simple and straight forward and no double select query

# advance min and max using group by
SELECT CONCAT(author_fname, ' ', author_lname) ,MIN(released_year) FROM books GROUP BY author_lname, author_fname; # will result in each author first books released_year

SELECT CONCAT(author_fname, ' ', author_lname) AS author_name, MAX(pages) FROM books GROUP BY author_lname, author_fname; # will result in each author most writen pages