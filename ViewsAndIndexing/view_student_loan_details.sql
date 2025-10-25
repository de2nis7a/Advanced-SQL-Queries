-- TASK: Create another VIEW named student_loan_details that offers a different perspective. This time, the VIEW will focus on loans.
CREATE VIEW student_loan_details AS
SELECT
    s.stu_id,
    CONCAT_WS(' ', s.stu_name, s.stu_mid_name, s.stu_last_name) AS "Student Name",
    l.loan_id,
    l.loan_date,
    l.due_date,
    l.return_date,
    l.status,
    bi.inv_id,
    bd.book_title
FROM 
    students s
JOIN 
    loans l ON l.stu_id = s.stu_id
JOIN 
    books_inventory bi ON bi.inv_id = l.inv_id
JOIN 
    books_details bd ON bd.book_id = bi.book_id;