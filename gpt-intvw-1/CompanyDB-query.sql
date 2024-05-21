-- Create the Departments table
CREATE TABLE Departments (
    DepartmentID SERIAL PRIMARY KEY,
    DepartmentName VARCHAR(100) NOT NULL
);

-- Create the Employees table
CREATE TABLE Employees (
    EmployeeID SERIAL PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    DepartmentID INT,
    ManagerID INT,
    Salary DECIMAL(10, 2),
    DateHired DATE,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID),
    FOREIGN KEY (ManagerID) REFERENCES Employees(EmployeeID)
);

-- Create the Projects table
CREATE TABLE Projects (
    ProjectID SERIAL PRIMARY KEY,
    ProjectName VARCHAR(100) NOT NULL,
    StartDate DATE,
    EndDate DATE,
    Budget DECIMAL(10, 2)
);

-- Create the EmployeeProjects table (junction table)
CREATE TABLE EmployeeProjects (
    EmployeeProjectID SERIAL PRIMARY KEY,
    EmployeeID INT,
    ProjectID INT,
    Role VARCHAR(50),
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID),
    FOREIGN KEY (ProjectID) REFERENCES Projects(ProjectID)
);

-- Insert data into Departments table
INSERT INTO Departments (DepartmentName)
VALUES ('HR'), ('Finance'), ('IT'), ('Marketing');

-- Insert data into Employees table
INSERT INTO Employees (FirstName, LastName, DepartmentID, ManagerID, Salary, DateHired)
VALUES 
('John', 'Doe', 3, NULL, 75000, '2020-01-15'),
('Jane', 'Smith', 2, 1, 60000, '2019-03-12'),
('Michael', 'Brown', 3, 1, 80000, '2018-07-23'),
('Emily', 'Davis', 1, NULL, 50000, '2021-10-01');

-- Insert data into Projects table
INSERT INTO Projects (ProjectName, StartDate, EndDate, Budget)
VALUES 
('Project Alpha', '2022-01-01', '2022-12-31', 150000),
('Project Beta', '2021-06-01', '2022-05-31', 200000);

-- Insert data into EmployeeProjects table
INSERT INTO EmployeeProjects (EmployeeID, ProjectID, Role)
VALUES 
(1, 1, 'Developer'),
(2, 1, 'Analyst'),
(3, 2, 'Manager'),
(4, 2, 'HR Specialist');
