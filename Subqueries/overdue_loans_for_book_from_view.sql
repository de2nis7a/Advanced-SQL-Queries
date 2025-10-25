-- TASK: Based on the VIEW student_loan_details, list all students who have overdue loans for “PostgreSQL up and running" as of today date along with the loan and due dates and inventory id. Use subquery. 

/*
-- Context: Views needed for this query
CREATE VIEW books_details AS
SELECT ... ;

CREATE VIEW student_loan_details AS
SELECT
    s.stu_id,
    CONCAT_WS(' ', s.stu_name, s.stu_mid_name, s.stu_last_name) AS "STU NAME",
    l.loan_id,
    l.loan_date,
    l.due_date,
    l.return_date,
    l.status,
    bi.inv_id,
    bd.book_title
FROM ... ;
*/

SELECT
    sld."STU NAME",
    sld.loan_date,
    sld.due_date,
    sld.inv_id
FROM
    -- Subquery selecting from the VIEW
    ( 
      SELECT * FROM student_loan_details 
      WHERE book_title = 'PostgreSQL up and running' 
    ) AS sld
WHERE
    sld.due_date < CURRENT_DATE
    AND sld.status = 'Borrowed';