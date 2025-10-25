-- TASK: Enhance the query so that the average loan duration column will display the duration as days and hours rather than an integer.

-- V1: Arithmetic
SELECT 
    book_title AS "Book Title",
    (AVG ((due_date - loan_date) * 24))::INT / 24 || ' days ' || (AVG ((due_date - loan_date) * 24))::INT % 24 || ' hours' AS "Average Loan Duration"
FROM 
    student_loan_details
GROUP BY 
    "Book Title"
ORDER BY 
    "Book Title";

-- V2: Using FLOOR
SELECT 
    book_title AS "Book Title",
    FLOOR(AVG(due_date - loan_date)) || ' days ' || ROUND(
        (
            (AVG(due_date - loan_date) - FLOOR(AVG(due_date - loan_date))) * 24
        )
    ) || ' hours' AS "Average Loan Duration"
FROM 
    student_loan_details
GROUP BY 
    "Book Title"
ORDER BY 
    "Average Loan Duration";