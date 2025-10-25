-- TASK: Retrieve the book title, student name and last name, loan date, due date, and return date (if available) for all books borrowed by students.
SELECT 
    b.book_title,
    s.stu_name,
    s.stu_last_name,
    l.loan_date,
    l.due_date,
    l.return_date
FROM 
    books b 
JOIN 
    books_inventory bi ON bi.book_id = b.book_id
JOIN 
    loans l ON l.inv_id = bi.inv_id
JOIN 
    students s ON s.stu_id = l.stu_id;