select *
from students.students;

Write queries to answer the following questions:
Questions

# Which student was born closest to the cohort's graduation date?  # 66 is 
SELECT 
	name
    ,dob
    ,LEAST(ABS(DAYOFYEAR(dob) - 66) 
        ,ABS((DAYOFYEAR(dob) + 365) - 66) 
        ,ABS(DAYOFYEAR(dob) - (66 + 365)))
FROM students.students s1
ORDER BY 3

# Which 3 students have lived in NYC the shortest amount of time?

SELECT name, in_nyc
FROM students.students
ORDER BY in_nyc ASC LIMIT 3;

# How many students are native New Yorkers?

SELECT *
FROM students.students
WHERE birthplace LIKE '%New York%' OR birthplace LIKE '%Bronx%' OR birthplace LIKE '%Queens%' or birthplace LIKE '%Flushing%' or birthplace LIKE '%NY%';

# Do any two students have the same favorite food?

SELECT name, fav_food, COUNT(fav_food)
FROM students.students
GROUP BY fav_food
HAVING COUNT(fav_food) >1;


