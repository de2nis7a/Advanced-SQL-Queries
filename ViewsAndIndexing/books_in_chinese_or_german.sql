-- TASK: List all book titles that are in Chinese and German order in alphabetical order. 
SELECT DISTINCT
    b.book_title
FROM 
    books b 
JOIN 
    books_languages bl ON bl.book_id = b.book_id
JOIN 
    languages l ON l.lang_id = bl.lang_id
WHERE 
    l.lang_name IN ('Chinese', 'German')
ORDER BY
    b.book_title;