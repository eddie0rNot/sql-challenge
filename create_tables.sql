-- Create tables

CREATE TABLE employee_db.employees
(
    emp_no integer,
    emp_title_id character varying,
    birth_date date,
    first_name character varying,
    last_name character varying,
    sex character(1),
    hire_date date,
    PRIMARY KEY (emp_no)
)
WITH (
    OIDS = FALSE
);

ALTER TABLE employee_db.employees
    OWNER to postgres;

CREATE TABLE employee_db.departments
(
    dept_no character varying,
    dept_name character varying,
    PRIMARY KEY (dept_no)
)
WITH (
    OIDS = FALSE
);

ALTER TABLE employee_db.departments
    OWNER to postgres;
	
CREATE TABLE employee_db.dept_emp
(
    emp_no integer,
    dept_no character varying,
	FOREIGN KEY (emp_no) REFERENCES employee_db.employees,
	FOREIGN KEY (dept_no) REFERENCES employee_db.departments,
	PRIMARY KEY (emp_no,dept_no)
)
WITH (
    OIDS = FALSE
);

ALTER TABLE employee_db.dept_emp
    OWNER to postgres;
	
CREATE TABLE employee_db.dept_manager
(
    dept_no character varying,
	emp_no integer,
	FOREIGN KEY (emp_no) REFERENCES employee_db.employees,
	FOREIGN KEY (dept_no) REFERENCES employee_db.departments,
	PRIMARY KEY (emp_no,dept_no)
)
WITH (
    OIDS = FALSE
);

ALTER TABLE employee_db.dept_manager
    OWNER to postgres;
		
CREATE TABLE employee_db.salaries
(
    emp_no integer,
    salary integer,
	FOREIGN KEY (emp_no) REFERENCES employee_db.employees,
	PRIMARY KEY (emp_no)
)
WITH (
    OIDS = FALSE
);

ALTER TABLE employee_db.salaries
    OWNER to postgres;
	
CREATE TABLE employee_db.titles
(
    title_id character varying,
    title character varying,
    PRIMARY KEY (title_id)
)
WITH (
    OIDS = FALSE
);

ALTER TABLE employee_db.titles
    OWNER to postgres;