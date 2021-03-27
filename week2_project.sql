SELECT  t.title, 
        COUNT(*)
    FROM titles t
    INNER JOIN employees e
    ON e.emp_no = t.emp_no
    WHERE e.birth_date > '1965-01-01'
    GROUP BY t.title
    ORDER BY count(*) DESC
    limit 200;