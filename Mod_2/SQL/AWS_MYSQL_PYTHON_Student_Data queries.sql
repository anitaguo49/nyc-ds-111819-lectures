select *
from students.students;

Write queries to answer the following questions:
Questions

# Which student was born closest to the cohort's graduation date?

# Which 3 students have lived in NYC the shortest amount of time?

SELECT name, in_nyc
FROM students.students
ORDER BY in_nyc ASC LIMIT 3;

# How many students are native New Yorkers?

SELECT name, birthplace
FROM students.students
WHERE birthplace LIKE '%New York%';

# Do any two students have the same favorite food?

