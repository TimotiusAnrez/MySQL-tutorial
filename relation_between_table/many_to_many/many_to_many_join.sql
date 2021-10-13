# let's do an inner join first between reviews and series

# SELECT
#     title,
#     rating
# FROM Reviewes
# JOIN Series
#     ON Reviewes.series_id = Series.id;
    
# from series to reviews

SELECT
    title,
    rating
FROM Series
JOIN Reviewes
    ON Series.id = Reviewes.series_id;
    
# grouping by and averaging ratings

SELECT
    title,
    AVG(rating) AS rating_average
FROM Series
JOIN Reviewes
    ON Series.id = Reviewes.series_id
    GROUP BY Series.id
    ORDER BY rating_average DESC;
    
# join reviews and reviewers

SELECT
    CONCAT(first_name, ' ' ,last_name),
    rating
FROM Reviewers
JOIN Reviewes
    ON Reviewers.id = Reviewes.reviewer_id;
    
# selecting series that don't have review using LEFT JOIN 

SELECT
    title AS unreviewed_series
FROM Series
LEFT JOIN Reviewes
    ON Reviewes.series_id = Series.id
WHERE rating IS NULL; # remember that null can't use equal sign (=)

# Rating genre

SELECT
    genre,
    IFNULL(AVG(rating),0) AS rating
FROM Series
LEFT JOIN Reviewes
    ON Reviewes.series_id = Series.id
    GROUP BY genre;

# Detail reviewers status

SELECT
    CONCAT(first_name, ' ', last_name),
    COUNT(rating),
    IFNULL(MIN(rating),0),
    IFNULL(MAX(rating),0),
    ROUND(IFNULL(AVG(rating),0),2),
    IF(COUNT(rating) > 0, 'ACTIVE', 'INACTIVE' ) AS reviewers_status
    # CASE
    #     WHEN COUNT(rating) = 0 THEN 'INACTIVE'
    #     ELSE 'ACTIVE'
    # END AS reviewers_status
FROM Reviewers
LEFT JOIN Reviewes
    ON Reviewers.id = Reviewes.reviewer_id
    GROUP BY Reviewers.id;


# Series rating with reviewer that rate it

SELECT 
    title,
    rating,
    CONCAT(first_name, ' ', last_name) AS reviewes
FROM Series
INNER JOIN Reviewes
    ON Series.id = Reviewes.series_id
INNER JOIN Reviewers
    ON Reviewers.id = Reviewes.series_id
    ORDER BY title;
# at the end many to many is just inner join combine with inner join lol
