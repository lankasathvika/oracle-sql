SELECT age, COUNT(*) FROM students GROUP BY age HAVING COUNT(*) > 1;
