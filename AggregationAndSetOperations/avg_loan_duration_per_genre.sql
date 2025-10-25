-- TASK: What is the average number of days books are loaned for each genre?
SELECT 
    g.genre_name,
    AVG(l.return_date - l.loan_date) AS "Average Loan Days"
FROM 
    genres g
JOIN 
    books b ON b.genre_id = g.genre_id
JOIN 
    books_inventory bi ON bi.book_id = b.book_id
JOIN 
    loans l ON l.inv_id = bi.inv_id
WHERE 
    l.status = 'Returned' -- or l.return_date IS NOT NULL
GROUP BY 
    g.genre_name;