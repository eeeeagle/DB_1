/* TASK 1 */
SELECT name from subject;

/* TASK 2 */
SELECT count(id) as student_count FROM student;

/* TASK 3 */
SELECT student.* FROM student
WHERE surname LIKE "Ива%";

/* TASK 4 */
SELECT student.* FROM student 
WHERE birthdate BETWEEN '2001-05-02' AND CURDATE();

/* TASK 5 */
SELECT student.* FROM student
JOIN grade ON grade.student_id = student.id
JOIN subject ON subject.id = grade.subject_id
WHERE grade = 5 and subject_id = 1;

/* TASK 6 */
SELECT student.* FROM student
JOIN grade ON grade.student_id = student.id
JOIN subject ON subject.id = grade.subject_id
WHERE term = 1 AND (grade = 4 or grade = 5)
GROUP BY id
HAVING COUNT(*) = 3
ORDER BY surname ASC;