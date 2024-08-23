--11. From the following table, write a SQL query to find the details of all employees whose last name is ‘Dosni’ or ‘Mardy’. Return emp_idno, emp_fname, emp_lname, and emp_dept.  

--Sample table : emp_details

 --EMP_IDNO EMP_FNAME       EMP_LNAME         EMP_DEPT
--------- --------------- --------------- ----------
  -- 127323 Michale         Robbin                  57
  -- 526689 Carlos          Snares                  63
  -- 843795 Enric           Dosio                   57
  -- 328717 Jhon            Snares                  63
  -- 444527 Joseph          Dosni                   47
  -- 659831 Zanifer         Emily                   47
  -- 847674 Kuleswar        Sitaraman               57
  -- 748681 Henrey          Gabriel                 47
  -- 555935 Alex            Manuel                  57
  -- 539569 George          Mardy                   27
  -- 733843 Mario           Saule                   63
  -- 631548 Alan            Snappy                  27
  -- 839139 Maria           Foster                  57

-- Create the employees table
CREATE TABLE employees10 (
    EMP_IDNO INTEGER PRIMARY KEY,
    EMP_FNAME varchar(255),
    EMP_LNAME varchar(255),
    EMP_DEPT INTEGER
);

-- Insert the values into the employees table
INSERT INTO employees10 (EMP_IDNO, EMP_FNAME, EMP_LNAME, EMP_DEPT) VALUES
    (127323, 'Michale', 'Robbin', 57),
    (526689, 'Carlos', 'Snares', 63),
    (843795, 'Enric', 'Dosio', 57),
    (328717, 'Jhon', 'Snares', 63),
    (444527, 'Joseph', 'Dosni', 47),
    (659831, 'Zanifer', 'Emily', 47),
    (847674, 'Kuleswar', 'Sitaraman', 57),
    (748681, 'Henrey', 'Gabriel', 47),
    (555935, 'Alex', 'Manuel', 57),
    (539569, 'George', 'Mardy', 27),
    (733843, 'Mario', 'Saule', 63),
    (631548, 'Alan', 'Snappy', 27),
    (839139, 'Maria', 'Foster', 57);

	select * from employees10 where EMP_LNAME='Dosni' or EMP_LNAME= 'Mardy';