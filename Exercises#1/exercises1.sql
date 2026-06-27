-- #1. Find all students whose name ends with “d”.

SELECT * FROM students 
WHERE name LIKE '%d';

-- 2. Find all students with Gmail addresses.

SELECT * FROM students 
WHERE email LIKE '%@gmail.com';

-- 3. Find all students whose email contains the letter “o”.

SELECT * FROM students 
WHERE email LIKE '%o%';

-- 4. Find all students whose names are exactly 4 letters long.

SELECT * FROM students 
WHERE name LIKE '____';


-- 5. Create your own search

SELECT * FROM students 
WHERE name LIKE 'A%';

