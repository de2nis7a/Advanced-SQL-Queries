-- TASK: List all books names that are available in both English and Spanish.

-- V1: Using multiple JOINs
SELECT
    b1.book_title AS "Book Title"
FROM
    books_languages bl1
    JOIN books b1 ON bl1.book_id = b1.book_id
    JOIN languages l1 ON bl1.lang_id = l1.lang_id
    JOIN books_languages bl2 ON bl1.book_id = bl2.book_id
    JOIN languages l2 ON bl2.lang_id = l2.lang_id
WHERE
    l1.lang_name = 'English'
    AND l2.lang_name = 'Spanish'
GROUP BY
    b1.book_title;


-- V2: Using GROUP BY and HAVING (often most readable)
SELECT
    b.book_title AS "Book Title"
FROM
    books b
    JOIN books_languages bl ON b.book_id = bl.book_id
    JOIN languages l ON bl.lang_id = l.lang_id
WHERE
    l.lang_name IN ('English', 'Spanish')
GROUP BY
    b.book_title
HAVING 
    COUNT(DISTINCT l.lang_name) = 2;


-- V3: Using IN and a sub-query
SELECT
    b.book_title AS "Book Title"
FROM
    books b
    JOIN books_languages bl ON b.book_id = bl.book_id
WHERE
    bl.lang_id IN 
     (SELECT lang_id FROM languages WHERE lang_name IN ('English', 'Spanish'))
GROUP BY
    b.book_title
HAVING
    COUNT (bl.lang_id) = 2;


-- V3B: Using EXISTS (often most performant)
SELECT
    b.book_title AS "Book Title"
FROM
    books b
WHERE
    EXISTS (SELECT 1
        FROM books_languages bl
        JOIN languages l ON bl.lang_id = l.lang_id AND l.lang_name = 'English'
        WHERE bl.book_id = b.book_id)
    AND EXISTS (SELECT 1
        FROM books_languages bl
        JOIN languages l ON bl.lang_id = l.lang_id AND l.lang_name = 'Spanish'
        WHERE bl.book_id = b.book_id);


-- V4: Using INTERSECT (often most elegant)
SELECT
    book_title AS "Title"
FROM
    books
    JOIN books_languages ON books.book_id = books_languages.book_id
    JOIN languages ON books_languages.lang_id = languages.lang_id
WHERE
    languages.lang_name = 'English'
INTERSECT
SELECT
    book_title AS "Title"
FROM
    books
    JOIN books_languages ON books.book_id = books_languages.book_id
    JOIN languages ON books_languages.lang_id = languages.lang_id
WHERE
    languages.lang_name = 'Spanish';