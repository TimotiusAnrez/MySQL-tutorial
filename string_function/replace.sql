# SELECT 
#     REPLACE
#     (
#         column, string_target, replacement_string
#     )
# FROM table;

# SELECT
#     REPLACE
#     (
#         title, 'e', '3'
#     )
# FROM books;

SELECT
    REPLACE
    (
        SUBSTRING(
            title,1 , 9
        ), 'e', '3'
    )
FROM books;