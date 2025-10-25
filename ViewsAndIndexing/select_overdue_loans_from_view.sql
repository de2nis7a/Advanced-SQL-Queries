-- TASK: Using student_loan_details VIEW, identify students who have overdue books (name of the book), along with details about the loan (id, dates status) and the course they are enrolled in.
SELECT 
    sld."Student Name",
    sld.book_title,
    sld.loan_id,
    sld.loan_date,
    sld.due_date,
    sld.status,
    c.course_name
FROM 
    student_loan_details sld
JOIN 
    students s ON s.stu_id = sld.stu_id
JOIN 
    courses c ON c.course_id = s.stu_course
WHERE 
    sld.due_date < CURRENT_DATE AND sld.status = 'Borrowed';