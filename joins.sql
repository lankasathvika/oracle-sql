SELECT s.name, d.dept_name
FROM students s
JOIN departments d ON s.id = d.stud_id;
