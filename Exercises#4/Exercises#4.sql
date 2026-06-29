-- 1
SELECT COUNT(*) AS total_students 
FROM score;

-- 2

SELECT MAX(score) AS highest_score, MIN(score) AS lowest_score 
FROM score;

-- 3

SELECT domain, COUNT(*) AS students_count FROM score
GROUP BY domain;

-- 4

SELECT domain, AVG(score) AS average_score  FROM score 
GROUP BY domain;