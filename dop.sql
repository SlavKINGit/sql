CREATE TABLE IF NOT EXISTS chiefs(
	chief_id int PRIMARY KEY,
	chief_name text NOT NULL
);

CREATE TABLE IF NOT EXISTS employees(
	emloyee_id int PRIMARY KEY,
	employee_name text NOT NULL,
	emloyee_departament text NOT NULL,
	chief int REFERENCES chiefs(chief_id)
)