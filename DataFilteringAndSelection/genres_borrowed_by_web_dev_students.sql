-- TASK: List all the genres (no duplicates) of books that have been borrowed by students who have enrolled in Web Development course.
SELECT DISTINCT 
    g.genre_name
FROM 
    genres g
JOIN 
    books b ON b.genre_id = g.genre_id
JOIN 
    books_inventory bi ON bi.book_id = b.book_id
JOIN 
    loans l ON l.inv_id = bi.inv_id 
JOIN 
    students s ON s.stu_id = l.stu_id 
JOIN 
    courses c ON c.course_id = s.stu_course
WHERE 
    c.course_name = 'Web Development';