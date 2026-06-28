-- TASK 1: 
SELECT * FROM students 
WHERE email LIKE '%@gmail.com' AND id > 2;

-- TASK 2:
WHERE name = 'Ayaan' OR name = 'Max';

-- TASK 3: 
SELECT * FROM students
WHERE (name = 'Ayaan' OR name = 'Max') AND id < 3;

-- TASK 4: 
SELECT * FROM students 
WHERE (city = 'Mogadishu' OR city = 'Hargeisa') 
  AND email LIKE '%@gmail.com';

-- TASK 5: 
SELECT * FROM students 
WHERE id = 5;

-- Beddelid (UPDATE)
UPDATE students 
SET city = 'Kismayo' 
WHERE id = 5;

--  Tirtirid (DELETE)
DELETE FROM students 
WHERE id = 5;