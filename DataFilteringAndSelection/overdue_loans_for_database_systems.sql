-- TASK: Get the full name of students, the date they borrowed the book, and the due date for the book titled 'Database Systems' that they have not yet returned. We want to contact the student to remind them that they need to bring the book back.
SELECT
    CONCAT_WS(' ', s.stu_name, s.stu_mid_name, s.stu_last_name) AS "Student Name",
    l.loan_date,
    l.due_date
FROM 
    students s
JOIN 
    loans l ON l.stu_id = s.stu_id
JOIN 
    books_inventory bi ON bi.inv_id = l.inv_id
JOIN 
    books b ON b.book_id = bi.book_id
WHERE 
    b.book_title = 'Database Systems' AND l.return_date IS NULL;