-- TASK: Retrieve all details of students (not the IDs) who have enrolled after the 1st of September 2021 and reside in Portsmouth. Create one column for the name, one for address and all the other details must have appropriate column name.
SELECT
    CONCAT_WS(' ', s.stu_name, s.stu_mid_name, s.stu_last_name) AS "Full Name",
    CONCAT_WS(', ', s.stu_addr1, s.stu_addr2, s.stu_city, s.stu_postcode) AS "Full Address",
    s.stu_email AS "Email",
    s.stu_phone AS "Phone",
    s.stu_enroll AS "Enrollment Date"
FROM 
    students s
WHERE 
    s.stu_enroll > '2021-09-01' 
    AND s.stu_city = 'Portsmouth';