SELECT name, age,
  RANK() OVER(ORDER BY age DESC) AS rank
FROM students;
