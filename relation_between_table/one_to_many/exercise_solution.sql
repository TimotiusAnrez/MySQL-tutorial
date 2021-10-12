SELECT *
FROM students
    INNER JOIN papers
        ON students.id = papers.student_id;
        
SELECT *
FROM students
    LEFT JOIN papers
        ON students.id = papers.student_id;
        
SELECT
    first_name,
    IFNULL(title, 'missing'),
    IFNULL(grade, 0)
FROM students
    LEFT JOIN papers
        ON students.id = papers.student_id;

SELECT
    first_name,
    IFNULL(AVG(grade), 0) AS grade_average
FROM students
    LEFT JOIN papers
        ON students.id = papers.student_id
    GROUP BY students.id;
    
SELECT
    first_name,
    CASE
        WHEN IFNULL(AVG(grade),0) >= 75 THEN 'PASSED'
        ELSE 'FAIL'
        END AS passing_status
FROM students
    LEFT JOIN papers
        ON students.id = papers.student_id
    GROUP BY students.id
    ORDER BY grade DESC;
    