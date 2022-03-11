DROP TABLE Departments

CREATE TABLE Departments (
    dept_no VARCHAR,
    dept_name VARCHAR NOT NULL,
	PRIMARY KEY (dept_no)
);

SELECT * FROM Departments

DROP TABLE Employees

CREATE TABLE Employees (
    emp_no INT NOT NULL,
	emp_title VARCHAR NOT NULL,
    birth_date DATE NOT NULL,
    first_name VARCHAR NOT NULL,
    last_name VARCHAR NOT NULL,
    sex VARCHAR NOT NULL,
    hire_date DATE NOT NULL,
	PRIMARY KEY (emp_no)
);

SELECT * FROM Employees

DROP TABLE Dept_Employees

CREATE TABLE Dept_Employees (
    emp_no INT NOT NULL,
    dept_no VARCHAR NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES Employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES Departments(dept_no)
);

SELECT * FROM Dept_Employees

DROP TABLE Dept_Managers

CREATE TABLE Dept_Managers (
    dept_no VARCHAR NOT NULL,
	emp_no INT NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES Departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES Employees(emp_no)
);

SELECT * FROM Dept_Managers

DROP TABLE Salaries

CREATE TABLE Salaries (
   	emp_no INT NOT NULL,
	salary NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES Employees(emp_no)
);

SELECT * FROM Salaries

DROP TABLE Titles

CREATE TABLE Titles (
   	emp_no INT NOT NULL,
	title NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES Employees(emp_no)
);

SELECT * FROM Titles