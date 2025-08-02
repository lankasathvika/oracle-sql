CREATE OR REPLACE PROCEDURE greet_user IS
BEGIN
  DBMS_OUTPUT.PUT_LINE('Hello, Sathvika!');
END;

EXEC greet_user;


----in parameter 
CREATE OR REPLACE PROCEDURE greet_user(name IN VARCHAR2)

----out parameter
CREATE OR REPLACE PROCEDURE get_square(num IN NUMBER, result OUT NUMBER)

----IN OUT Parameter Procedure
CREATE OR REPLACE PROCEDURE double_number(num IN OUT NUMBER)

----stored procedure
CREATE TABLE departments (
  dept_id NUMBER PRIMARY KEY,              
  dept_name VARCHAR2(50)                    
);

CREATE TABLE students (
  id NUMBER PRIMARY KEY,            
  name VARCHAR2(50),                      
  dept_id NUMBER,                         
  FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);
INSERT INTO departments VALUES (1, 'CSE');
INSERT INTO students VALUES (101, 'Sathvika', 1);

CREATE OR REPLACE PROCEDURE get_dept_name(p_id IN NUMBER) IS
  v_dept_name departments.dept_name%TYPE;
BEGIN
  SELECT d.dept_name
  INTO v_dept_name
  FROM students s
  JOIN departments d ON s.dept_id = d.dept_id
  WHERE s.id = p_id;

  DBMS_OUTPUT.PUT_LINE('Department: ' || v_dept_name);
END;

  





