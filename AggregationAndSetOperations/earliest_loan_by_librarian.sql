-- TASK: For each librarian (name and last name), what is the earliest loan date they have processed?
SELECT 
    l.lib_name,
    l.lib_last_name,
    MIN(lo.loan_date) AS "Earliest Loan"
FROM 
    librarians l 
JOIN 
    loans lo ON lo.lib_id = l.lib_id
GROUP BY 
    l.lib_name, l.lib_last_name;