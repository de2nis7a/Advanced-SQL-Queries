-- TASK: List students who returned books late. Include loan id, student name, inventory id, book title, and loan/due/return dates. Do not include books that are still borrowed.  
SELECT
    l.loan_id,
    CONCAT_WS(' ', s.stu_name, s.stu_mid_name, s.stu_last_name) AS "Student Name",
    bi.inv_id,
    b.book_title,
    l.loan_date,
    l.due_date,
    l.return_date
FROM 
    loans l
JOIN 
    books_inventory bi ON bi.inv_id = l.inv_id
JOIN 
    books b ON b.book_id = bi.book_id
JOIN 
    students s ON l.stu_id = s.stu_id
WHERE 
    l.status = 'Returned' AND l.due_date < l.return_date;