CREATE TABLE IF NOT EXISTS employees_chiefs(
	employee_id INT PRIMARY KEY,
	employee_name VARCHAR(255) NOT NULL,
	employee_departament VARCHAR(255) NOT NULL,
	chief_id INT,
	FOREIGN KEY (chief_id) REFERENCES employees_chiefs(employee_id)
)
