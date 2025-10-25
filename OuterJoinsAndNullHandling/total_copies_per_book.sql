-- TASK: List the total number of copies of each book, regardless of edition, along with the book title from the most copies to the lowest.  
SELECT 
    b.book_title,
    SUM(bi.total_copies) AS "Total Copies"
FROM 
    books b
LEFT JOIN 
    books_inventory bi ON b.book_id = bi.book_id
GROUP BY 
    b.book_title
ORDER BY 
    "Total Copies" DESC;