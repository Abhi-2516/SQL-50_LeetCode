# Write your MySQL query statement below
SELECT E.name , B.bonus FROM Employee as E LEFT JOIN bonus as B ON E.empID = B.empID WHERE bonus < 1000 OR Bonus IS NULL 