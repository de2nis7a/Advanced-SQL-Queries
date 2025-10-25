-- TASK: Analyzing the query, which attribute or attributes would be the best candidates for indexing to improve query performance? Why?

-- Query to analyze:
EXPLAIN ANALYSE
SELECT
    b.book_id AS "Book ID",
    b.book_title AS "Title",
    CONCAT(a.auth_name,' ', COALESCE(a.auth_mid_name,''),' ', a.auth_last_name) AS "Author Full Name",
    b.book_pub_year AS "Publication Year",
    g.genre_name AS "Genre"
FROM books b
JOIN genres g ON b.genre_id = g.genre_id
JOIN books_authors ba ON b.book_id = ba.book_id
JOIN authors a ON ba.auth_id = a.auth_id
WHERE b.book_pub_year > 2000 AND g.genre_name = 'Science';


/* Analysis:
The query performance is most affected by:
1. The JOIN operations across four tables.
2. The WHERE clause filtering on two different tables (books and genres).

Best Candidates for Indexing:
- g.genre_name (for WHERE g.genre_name = 'Science')
- b.book_pub_year (for WHERE b.book_pub_year > 2000)
- b.genre_id (for JOIN g ON b.genre_id = g.genre_id)
- ba.book_id (for JOIN ba ON b.book_id = ba.book_id)
- ba.auth_id (for JOIN a ON ba.auth_id = a.auth_id)
*/

-- Example indexes based on analysis:
CREATE INDEX idx_genre_name ON genres(genre_name);
CREATE INDEX idx_book_pub_year ON books(book_pub_year);
CREATE INDEX idx_books_genre ON books(genre_id);
CREATE INDEX idx_books_authors_book ON books_authors(book_id);
CREATE INDEX idx_books_authors_auth ON books_authors(auth_id);