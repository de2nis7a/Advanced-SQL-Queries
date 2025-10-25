-- TASK: Retrieve the book title and student name for all books borrowed by students along with the corresponding librarian name and surname.
SELECT 
    b.book_title,
    s.stu_name,
    lib.lib_name, 
    lib.lib_last_name
FROM 
    books b 
JOIN 
    books_inventory bi ON b.book_id = bi.book_id
JOIN 
    loans l ON l.inv_id = bi.inv_id
JOIN 
    students s ON l.stu_id = s.stu_id
JOIN 
    librarians lib ON l.lib_id = lib.lib_id;