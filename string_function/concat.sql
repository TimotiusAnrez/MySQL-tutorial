SELECT 
    CONCAT(
        SUBSTRING(title, 1, 10),
        '...'
    )
AS short_name
FROM books;