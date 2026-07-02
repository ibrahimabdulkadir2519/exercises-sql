-- 1

CREATE TABLE students (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    city VARCHAR(100)
);

-- 2

INSERT INTO students (name, city) VALUES
('Student 1', 'Mogadishu'),
('Student 2', 'Hargeisa'),
('Student 3', 'Kismayo'),
('Student 4', 'Baidoa'),
('Student 5', 'Mogadishu'),
('Student 6', 'Hargeisa'),
('Student 7', 'Kismayo'),
('Student 8', 'Baidoa'),
('Student 9', 'Mogadishu'),
('Student 10', 'Hargeisa'),
('Student 11', 'Kismayo'),
('Student 12', 'Baidoa'),
('Student 13', 'Mogadishu'),
('Student 14', 'Hargeisa'),
('Student 15', 'Kismayo'),
('Student 16', 'Baidoa'),
('Student 17', 'Mogadishu'),
('Student 18', 'Hargeisa'),
('Student 19', 'Kismayo'),
('Student 20', 'Baidoa'),
('Student 21', 'Mogadishu'),
('Student 22', 'Hargeisa'),
('Student 23', 'Kismayo'),
('Student 24', 'Baidoa'),
('Student 25', 'Mogadishu'),
('Student 26', 'Hargeisa'),
('Student 27', 'Kismayo'),
('Student 28', 'Baidoa'),
('Student 29', 'Mogadishu'),
('Student 30', 'Hargeisa'),
('Student 31', 'Kismayo'),
('Student 32', 'Baidoa'),
('Student 33', 'Mogadishu'),
('Student 34', 'Hargeisa'),
('Student 35', 'Kismayo'),
('Student 36', 'Baidoa'),
('Student 37', 'Mogadishu'),
('Student 38', 'Hargeisa'),
('Student 39', 'Kismayo'),
('Student 40', 'Baidoa'),
('Student 41', 'Mogadishu'),
('Student 42', 'Hargeisa'),
('Student 43', 'Kismayo'),
('Student 44', 'Baidoa'),
('Student 45', 'Mogadishu'),
('Student 46', 'Hargeisa'),
('Student 47', 'Kismayo'),
('Student 48', 'Baidoa'),
('Student 49', 'Mogadishu'),
('Student 50', 'Hargeisa'),
('Student 51', 'Kismayo'),
('Student 52', 'Baidoa'),
('Student 53', 'Mogadishu'),
('Student 54', 'Hargeisa'),
('Student 55', 'Kismayo'),
('Student 56', 'Baidoa'),
('Student 57', 'Mogadishu'),
('Student 58', 'Hargeisa'),
('Student 59', 'Kismayo'),
('Student 60', 'Baidoa'),
('Student 61', 'Mogadishu'),
('Student 62', 'Hargeisa'),
('Student 63', 'Kismayo'),
('Student 64', 'Baidoa'),
('Student 65', 'Mogadishu'),
('Student 66', 'Hargeisa'),
('Student 67', 'Kismayo'),
('Student 68', 'Baidoa'),
('Student 69', 'Mogadishu'),
('Student 70', 'Hargeisa'),
('Student 71', 'Kismayo'),
('Student 72', 'Baidoa'),
('Student 73', 'Mogadishu'),
('Student 74', 'Hargeisa'),
('Student 75', 'Kismayo'),
('Student 76', 'Baidoa'),
('Student 77', 'Mogadishu'),
('Student 78', 'Hargeisa'),
('Student 79', 'Kismayo'),
('Student 80', 'Baidoa'),
('Student 81', 'Mogadishu'),
('Student 82', 'Hargeisa'),
('Student 83', 'Kismayo'),
('Student 84', 'Baidoa'),
('Student 85', 'Mogadishu'),
('Student 86', 'Hargeisa'),
('Student 87', 'Kismayo'),
('Student 88', 'Baidoa'),
('Student 89', 'Mogadishu'),
('Student 90', 'Hargeisa'),
('Student 91', 'Kismayo'),
('Student 92', 'Baidoa'),
('Student 93', 'Mogadishu'),
('Student 94', 'Hargeisa'),
('Student 95', 'Kismayo'),
('Student 96', 'Baidoa'),
('Student 97', 'Mogadishu'),
('Student 98', 'Hargeisa'),
('Student 99', 'Kismayo'),
('Student 100', 'Baidoa');


-- 3

SELECT *
FROM students
WHERE city = 'Mogadishu';

-- 4 
EXPLAIN
SELECT * FROM students
WHERE city = 'Mogadishu';

CREATE INDEX idx_city
ON students(city);

 CREATE INDEX idx_city
ON students(city);

-- 5
Index ka hor wuxuu baarayay dhammaan rows ka all . Index ka dib wuxuu isticmaalay idx_city wuxuuna baaray rows yar. Taas ayaa query-ga ka dhigtay mid dhaqso badan.
