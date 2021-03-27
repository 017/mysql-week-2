SELECT  t.title, 
        COUNT(*)
    FROM titles t
    INNER JOIN employees e
    ON e.emp_no = t.emp_no
    WHERE e.birth_date > '1965-01-01'
    GROUP BY t.title
    ORDER BY count(*) DESC
    limit 200;

SELECT t.title, AVG(s.salary)
    FROM titles t
    INNER JOIN salaries s
    ON t.emp_no = s.emp_no
    GROUP BY t.title
    ORDER BY count(*) DESC
    limit 200;


SELECT d.dept_no, SUM(s.salary)
    FROM dept_emp d
    INNER JOIN salaries s
    ON d.emp_no = s.emp_no
    WHERE s.from_date > '1990-01-01' AND s.to_date < '1992-01-01' AND d.dept_no = 'd001'
    GROUP BY d.dept_no
    ORDER BY count(*) DESC
    limit 200;