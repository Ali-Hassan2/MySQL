--31. From the following table, write a SQL query to find the unique last name of all employees. Return emp_lname.  

--Sample table: emp_details

 --EMP_IDNO EMP_FNAME       EMP_LNAME         EMP_DEPT
--------- --------------- --------------- ----------
 --  127323 Michale         Robbin                  57
 --  526689 Carlos          Snares                  63
 --  843795 Enric           Dosio                   57
 --  328717 Jhon            Snares                  63
 --  444527 Joseph          Dosni                   47
 --  659831 Zanifer         Emily                   47
 --  847674 Kuleswar        Sitaraman               57
 --  748681 Henrey          Gabriel                 47
 --  555935 Alex            Manuel                  57
 --  539569 George          Mardy                   27
 --  733843 Mario           Saule                   63
 --  631548 Alan            Snappy                  27
 --  839139 Maria           Foster                  57

 CREATE TABLE employees (
    emp_idno INT PRIMARY KEY,
    emp_fname VARCHAR(50),
    emp_lname VARCHAR(50),
    emp_dept INT
);

INSERT INTO employees (emp_idno, emp_fname, emp_lname, emp_dept) VALUES
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

select distinct emp_lname from employees;