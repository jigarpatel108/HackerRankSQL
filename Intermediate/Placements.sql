/*
You are given three tables: Students, Friends and Packages.
Students contains two columns: ID and Name.
Friends contains two columns: ID and Friend_ID (ID of the ONLY best friend).
Packages contains two columns: ID and Salary (offered salary in $ thousands per month)

Write a query to output the names of those students whose best friends got offered a higher salary than them.
Names must be ordered by the salary amount offered to the best friends.
It is guaranteed that no two students got same salary offer.

Sample Output:
Samantha
Julia
Scarlet

-- Solution --
Three things to keep in mind:
1. Need names only in the final output
2. The column "ID" is common across all the three tables hinting us of possible joins
3. The names in the output need to be ordered by salary amount (not highest first i.e. not in descending order)
*/

SELECT 
    s.Name
FROM
    Students s
        JOIN
		Friends f ON s.ID = f.ID
        JOIN
		Packages p ON s.ID = p.ID
        JOIN
		Packages p2 ON f.friend_ID = p2.ID
WHERE
    p2.Salary > p.Salary
ORDER BY p2.Salary;