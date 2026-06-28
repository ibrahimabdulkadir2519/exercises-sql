-- 1 
SELECT * FROM students ORDER BY id desc  LIMIT 2;

-- 2
SELECT * FROM students WHERE email LIKE '%@gmail.com' ORDER BY name ASC;

-- 3
SELECT name AS Student, email AS "Email Address" 
FROM students;

-- 4

SELECT name AS "Student_Name",   email AS "Address_Student" FROM students ORDER BY id asc LIMIT 1;