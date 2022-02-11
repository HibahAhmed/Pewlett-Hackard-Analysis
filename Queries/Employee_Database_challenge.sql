-- Retrieve the emp_no, first_name, and last_name columns from the Employees table.
-- Retrieve the title, from_date, and to_date columns from the Titles table.
DROP TABLE retirement_titles;
SELECT	emp.emp_no, 
		emp.first_name,
		emp.last_name,
		t.title,
		t.from_date,
		t.to_date
		INTO retirement_titles
		FROM employees as emp
		INNER JOIN titles as t
		ON (emp.emp_no = t.emp_no)
		WHERE emp.birth_date BETWEEN '1952-01-01' AND '1955-12-31'
		ORDER BY emp.emp_no;
		SELECT * FROM retirement_titles;
		
-- Retrieve the employee number, first and last name, and title columns from the Retirement Titles table.
DROP TABLE unique_titles;
DROP TABLE retiring_titles;
SELECT DISTINCT ON (emp_no) emp_no,
				    first_name,
					last_name,
					title
					INTO unique_titles
					FROM retirement_titles;
					SELECT * FROM retirement_titles; 
					SELECT COUNT(title) as count, title
					INTO retiring_titles
					FROM unique_titles
					GROUP BY title
					ORDER BY count DESC;
					SELECT * FROM unique_titles;
					
-- Retrieve the number of employees by their most recent job title who are about to retire.
DROP TABLE retiring_titles;
SELECT COUNT(title) as count, title
							  INTO retiring_titles
							  FROM unique_titles
							  GROUP BY title
							  ORDER BY count DESC;
							  SELECT * FROM retiring_titles;
							  
-- Mentorship Eligibility table that holds the employees who are eligible to participate in a mentorship program
DROP TABLE IF EXISTS mentorship_eligibility;
SELECT DISTINCT ON (emp.emp_no) emp.emp_no, 
					emp.first_name,
					emp.last_name,
					emp.birth_date,
					t.from_date,
					t.to_date,
					t.title
					INTO mentorship_eligibility
					FROM employees as emp
					INNER JOIN dept_emp AS de
					ON (emp.emp_no = de.emp_no)
					INNER JOIN titles AS t
					ON (emp.emp_no = t.emp_no)
					WHERE (de.to_date = '9999-01-01') AND 
	 				(emp.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
					ORDER BY emp.emp_no;
					SELECT * FROM mentorship_eligibility;