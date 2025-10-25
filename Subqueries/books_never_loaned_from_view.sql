-- TASK: identify titles of books that have never been loaned out. Use a subquery to select books that do not appear in the student_loan_details view.
SELECT 
    bd.book_title AS "Book Title"
FROM 
    books_details AS bd
WHERE 
    bd.book_title NOT IN (
        SELECT DISTINCT sld.book_title
        FROM student_loan_details AS sld
    );