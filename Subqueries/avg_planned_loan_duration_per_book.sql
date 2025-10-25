-- TASK: What is the average loan duration for each book title? Order by the loan duration, in ascending order. Use the views and a subquery.
SELECT 
    "Book Title",
    AVG ("Loan Duration") AS "Average Loan Duration"
FROM (
    -- Subquery to calculate individual loan durations
    SELECT 
        book_title AS "Book Title",
        (due_date - loan_date) AS "Loan Duration"
    FROM 
        student_loan_details
) AS sld
GROUP BY 
    "Book Title"
ORDER BY 
    "Average Loan Duration";