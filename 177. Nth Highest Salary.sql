CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
DECLARE M int;
SET M = N - 1;
  RETURN (
      # Write your MySQL query statement below.
      SELECT IFNULL(
          (SELECT DISTINCT Salary
          FROM Employee
          ORDER BY Salary DESC LIMIT 1 OFFSET M), NULL) as Salary
  );
END