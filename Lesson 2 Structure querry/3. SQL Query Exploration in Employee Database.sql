
CREATE TABLE Departments (
      department_id INT PRIMARY KEY,
      department_name VARCHAR(100)
    );
    
    CREATE TABLE Employees (
      employee_id INT PRIMARY KEY,
      name VARCHAR(100),
      age INT,
      department_id INT,
      FOREIGN KEY (department_id) REFERENCES Departments(department_id)
    );
    
INSERT INTO Departments (department_id,department_name)
VALUES 
('1', 'human resource'),
('2', 'network');
SELECT * FROM Employees;
INSERT INTO Employees (employee_id,name,age)
VALUES 
('1','John','24'),
('2','Alex','20'),
('3','Khan','35'),
('4','Joe','27'),
('5','Boing','30'),
('6','Tering','34');


