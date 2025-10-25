-- TASK: Display inventory items that have never been loaned, showing inventory ID and book title.
SELECT
    bi.inv_id AS "Inventory ID",
    b.book_title AS "Book Title",
    COALESCE(CAST(l.loan_id AS VARCHAR), 'Never Loaned') AS "Loan ID"
FROM 
    books_inventory bi
JOIN 
    books b ON bi.book_id = b.book_id
LEFT JOIN 
    loans l ON bi.inv_id = l.inv_id
WHERE 
    l.loan_id IS NULL
ORDER BY 
    b.book_title;