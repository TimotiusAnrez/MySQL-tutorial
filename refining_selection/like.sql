# SELECT column FROM table WHERE column LIKE '%params%' => why the perecentage? it will give specification of which end that params will be like with the data for example

SELECT author_fname FROM books WHERE author_fname LIKE '%da';
# will result with author fname that end with da

SELECT author_fname FROM books WHERE author_fname LIKE 'da%';
# will result with author fname that start with da

SELECT title, CONCAT(author_fname, ' ', author_lname) as author FROM books WHERE title LIKE '%the%';
# will result with title that have with the in the title

SELECT title, CONCAT(author_fname, ' ', author_lname) as author FROM books WHERE title LIKE '%\%%';
# will result with title that have percent sign, the reason we put in backslash(\) to the params is to distinct the percentage of query params and the anything percentage sign for sql

SELECT title, CONCAT(author_fname, ' ', author_lname) as author FROM books WHERE title LIKE '%\_%';
# same with the above, however a special note that if we query underline as parameter without any of the wildcards means that we want a digit if we put in two underscore means that we want 2 digit and on and on and on