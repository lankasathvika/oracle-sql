CREATE OR REPLACE TRIGGER before_insert_students
BEFORE INSERT ON students
FOR EACH ROW
BEGIN
  DBMS_OUTPUT.PUT_LINE('Inserting student record...');
END;
