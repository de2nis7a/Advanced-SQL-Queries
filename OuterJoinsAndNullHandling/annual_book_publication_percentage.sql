-- TASK: What is the annual contribution to the total book collection? For each year of publication, calculate the total number of books published and the percentage contribution of that year to the total number of books.
SELECT
    b.book_pub_year AS "Publication Year",
    COUNT(*) AS "Total Books",
    CONCAT(ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER (), 2), ' %') AS "Percentage of Total"
FROM 
    books b
GROUP BY 
    b.book_pub_year
ORDER BY 
    b.book_pub_year;