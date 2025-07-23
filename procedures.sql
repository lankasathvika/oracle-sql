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
