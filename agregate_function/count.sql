# SELECT COUNT() => will result of how many output are there in the query done

SELECT COUNT(*) FROM books; # select all and then output the number of rows in the table match the description

SELECT COUNT(DISTINCT author_fname, author_lname) FROM books; # remember no spacing

SELECT COUNT(*) FROM books WHERE title LIKE '%the%';