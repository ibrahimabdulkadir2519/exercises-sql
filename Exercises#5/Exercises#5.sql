-- 1 create 
CREATE TABLE student (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    email VARCHAR(100),
    city VARCHAR(100)
);

INSERT INTO student (name, email, city) VALUES
('Ahmed Ali', 'ahmed@gmail.com', 'Mogadishu'),
('Ayaan Hassan', 'ayaan@gmail.com', 'Hargeisa'),
('Mohamed Noor', 'mohamed@gmail.com', 'Kismayo'),
('Hodan Yusuf', 'hodan@gmail.com', 'Bosaso'),
('Abdi Karim', 'abdi@gmail.com', 'Baidoa'),
('Fadumo Omar', 'fadumo@gmail.com', 'Mogadishu'),
('Ismail Ahmed', 'ismail@gmail.com', 'Garowe'),
('Sahra Ali', 'sahra@gmail.com', 'Hargeisa'),
('Yasin Mohamed', 'yasin@gmail.com', 'Jowhar'),
('Maryan Hassan', 'maryan@gmail.com', 'Mogadishu');

-- 2
CREATE TABLE courses (
    id INT PRIMARY KEY AUTO_INCREMENT,
    courseTitle VARCHAR(100),
    duration VARCHAR(50)
);

INSERT INTO courses (courseTitle, duration) VALUES
('HTML', '1 Month'), ('CSS', '1 Month'), ('JavaScript', '3 Months'),
('React', '2 Months'), ('MySQL', '2 Months'), ('Python', '3 Months'),
('Node.js', '2 Months'), ('Express.js', '1 Month'), ('MongoDB', '2 Months'),
('Next.js', '2 Months'), ('TypeScript', '1 Month'), ('Git & GitHub', '2 Weeks'),
('Tailwind CSS', '3 Weeks'), ('Bootstrap', '2 Weeks'), ('PHP', '2 Months'),
('Laravel', '3 Months'), ('Java', '4 Months'), ('Spring Boot', '3 Months'),
('Docker', '1 Month'), ('Linux', '2 Months');

-- 3
CREATE TABLE Enrollment (
    id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT,
    course_id INT,
    FOREIGN KEY (student_id) REFERENCES student(id),
    FOREIGN KEY (course_id) REFERENCES courses(id)
);

INSERT INTO Enrollment (student_id, course_id) VALUES
(1,2), (1,5), (2,3), (3,1), (3,4), (4,2), (5,5), (6,3), (6,4), (7,1);

-- 4

SELECT 
    student.name AS Ardayga, 
    courses.courseTitle AS Koorsada, 
    courses.duration AS Muddada
FROM enrollment 
JOIN student ON enrollment.student_id = student.id
JOIN courses ON enrollment.course_id = courses.id;

SELECT 
    student.name AS Ardayga, 
    courses.courseTitle AS Koorsada, 
    courses.duration AS Muddada
FROM student
LEFT JOIN enrollment ON student.id = enrollment.student_id
LEFT JOIN courses    ON enrollment.course_id = courses.id;

-- 5

SELECT 
    student.name AS  Student_name

    courses.courseTitle AS Koorsada, 
    COUNT(enrollment.student_id) AS Total_student
FROM courses
LEFT JOIN enrollment ON courses.id = enrollment.course_id
GROUP BY courses.id, courses.courseTitle
ORDER BY Total_student DESC;