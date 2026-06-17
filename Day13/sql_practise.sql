/*
------------------------------------------------------------
Day 13 - Campus Recruitment Training (CRT)
------------------------------------------------------------

Topic:
SQL Constraints and Joins

Description:
This practice covers SQL constraints such as Primary Key,
Composite Key and Foreign Key along with table creation,
table alteration and different types of SQL joins.

Concepts Covered:
1. Primary Key
2. Composite Primary Key
3. Foreign Key
4. ALTER TABLE
5. INSERT INTO
6. LEFT JOIN
7. RIGHT JOIN
8. SELF JOIN
9. Relational Database Design

------------------------------------------------------------
*/







SQL*Plus: Release 11.2.0.2.0 Production on Tue Jun 9 10:22:20 2026

Copyright (c) 1982, 2014, Oracle.  All rights reserved.

SQL> connect
Enter user-name: system
Enter password:
Connected.
SQL> CREATE TABLE Person2(
  2  PID number(4) NOT NULL PRIMARY KEY,
  3  FNAME VARCHAR(9) NOT NULL,
  4  LNAME VARCHAR(9),
  5  Age number(30)
  6  );

Table created.

SQL> CREATE TABLE Person3(
  2  PID number(4) NOT NULL,
  3  FNAME VARCHAR(9) NOT NULL,
  4  LNAME VARCHAR(9),
  5  Age number(3),
  6  CONSTRAINT PK_Person PRIMARY KEY(PID,LNAME));

Table created.

SQL> ALTER TABLE Person3 ADD PRIMARY KEY(PID);
ALTER TABLE Person3 ADD PRIMARY KEY(PID)
                        *
ERROR at line 1:
ORA-02260: table can have only one primary key


SQL> ALTER TABLE Person3 DROP PRIMARY KEY;

Table altered.

SQL> ALTER TABLE Person3 ADD PRIMARY KEY(PID);

Table altered.

SQL> DESC Person3;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 PID                                       NOT NULL NUMBER(4)
 FNAME                                     NOT NULL VARCHAR2(9)
 LNAME                                              VARCHAR2(9)
 AGE                                                NUMBER(3)

SQL> DESC Person2;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 PID                                       NOT NULL NUMBER(4)
 FNAME                                     NOT NULL VARCHAR2(9)
 LNAME                                              VARCHAR2(9)
 AGE                                                NUMBER(30)

SQL> ALTER TABLE Person3 ADD PRIMARY KEY(LNAME);
ALTER TABLE Person3 ADD PRIMARY KEY(LNAME)
                        *
ERROR at line 1:
ORA-02260: table can have only one primary key


SQL> DESC Person3;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 PID                                       NOT NULL NUMBER(4)
 FNAME                                     NOT NULL VARCHAR2(9)
 LNAME                                              VARCHAR2(9)
 AGE                                                NUMBER(3)

SQL> ALTER TABLE Person3 DROP PRIMARY KEY;

Table altered.

SQL> ALTER TABLE Person3 ADD PRIMARY KEY(LNAME);

Table altered.

SQL> DESC Person3;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 PID                                       NOT NULL NUMBER(4)
 FNAME                                     NOT NULL VARCHAR2(9)
 LNAME                                     NOT NULL VARCHAR2(9)
 AGE                                                NUMBER(3)

SQL> ALTER TABLE Person3 DROP PRIMARY KEY;

Table altered.

SQL> DESC Person3;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 PID                                       NOT NULL NUMBER(4)
 FNAME                                     NOT NULL VARCHAR2(9)
 LNAME                                              VARCHAR2(9)
 AGE                                                NUMBER(3)

SQL> CREATE TABLE EMP5(
  2  ENO NUMBER(5) NOT NULL PRIMARY KEY,
  3  ENAME CHAR(10);
ENAME CHAR(10)
             *
ERROR at line 3:
ORA-00907: missing right parenthesis


SQL> CREATE TABLE EMP5(
  2  ENO NUMBER(5) NOT NULL PRIMARY KEY,
  3  ENAME CHAR(10),
  4  EMOB NUMBER(10),
  5  ESAL NUMBER(8,2),
  6  EADD VARCHAR(10),
  7  ECITY CHAR(11),
  8  EDOJ DATE );

Table created.

SQL> DESC EMP5;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ENO                                       NOT NULL NUMBER(5)
 ENAME                                              CHAR(10)
 EMOB                                               NUMBER(10)
 ESAL                                               NUMBER(8,2)
 EADD                                               VARCHAR2(10)
 ECITY                                              CHAR(11)
 EDOJ                                               DATE

SQL> CREATE TABLE DEPT5(
  2  DEPTNO NUMBER(5),
  3  DEPTNAME VARCHAR2(10),
  4  ENO NUMBER(5),
  5  ECITY VARCHAR2(9),
  6  FOREIGN KEY (ENO) REFERENCES EMP5(ENO) );

Table created.

SQL> ALTER TABLE DEPT5 ADD FOREIGN KEY (ENO) REFERENCES EMP5(ENO);
ALTER TABLE DEPT5 ADD FOREIGN KEY (ENO) REFERENCES EMP5(ENO)
                      *
ERROR at line 1:
ORA-02275: such a referential constraint already exists in the table


SQL> DESC DEPT5;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 DEPTNO                                             NUMBER(5)
 DEPTNAME                                           VARCHAR2(10)
 ENO                                                NUMBER(5)
 ECITY                                              VARCHAR2(9)



SQL> DESC DEPT5;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 DEPTNO                                             NUMBER(5)
 DEPTNAME                                           VARCHAR2(10)
 ENO                                                NUMBER(5)
 ECITY                                              VARCHAR2(9)

SQL> Create Employee Table
  2  CREATE TABLE emp (
  3      eno INT PRIMARY KEY,
  4      ename VARCHAR(50),
  5      salary DECIMAL(10,2),
  6      ecity VARCHAR(50),
  7      dno INT
  8  );
Create Employee Table
       *
ERROR at line 1:
ORA-00901: invalid CREATE command


SQL> Insert Records
  2  INSERT INTO emp VALUES
  3  (101,'Amit',50000,'Pune',1),
  4  (102,'Neha',55000,'Mumbai',2),
  5  (103,'Rahul',60000,'Pune',1),
  6  (104,'Priya',45000,'Nagpur',3),
  7  (105,'Karan',70000,'Mumbai',2),
  8  (106,'Sneha',52000,'Pune',1),
  9  (107,'Rohit',48000,'Delhi',4),
 10  (108,'Anjali',65000,'Nagpur',3),
 11  (109,'Vikas',58000,'Delhi',4),
 12  (110,'Pooja',62000,'Mumbai',2);
Insert Records
       *
ERROR at line 1:
ORA-00925: missing INTO keyword


SQL> Create Employee Table
  2  CREATE TABLE emp (
  3      eno INT PRIMARY KEY,
  4      ename VARCHAR(50),
  5      salary DECIMAL(10,2),
  6      ecity VARCHAR(50),
  7      dno INT
  8  );
Create Employee Table
       *
ERROR at line 1:
ORA-00901: invalid CREATE command


SQL> Create Employee Table
  2  CREATE TABLE emp (
  3      eno INT PRIMARY KEY,
  4      ename VARCHAR(50),
  5      salary DECIMAL(10,2),
  6      ecity VARCHAR(50),
  7      dno INT
  8
SQL> CREATE TABLE emp (
  2      eno INT PRIMARY KEY,
  3      ename VARCHAR(50),
  4      salary DECIMAL(10,2),
  5      ecity VARCHAR(50),
  6      dno INT
  7  );
CREATE TABLE emp (
             *
ERROR at line 1:
ORA-00955: name is already used by an existing object


SQL> CREATE TABLE employee (
  2      eno INT PRIMARY KEY,
  3      ename VARCHAR(50),
  4      salary DECIMAL(10,2),
  5      ecity VARCHAR(50),
  6      dno INT
  7  );

Table created.

SQL> INSERT INTO employee VALUES
  2  (101,'Amit',50000,'Pune',1),
  3  (102,'Neha',55000,'Mumbai',2),
  4  (103,'Rahul',60000,'Pune',1),
  5  (104,'Priya',45000,'Nagpur',3),
  6  (105,'Karan',70000,'Mumbai',2),
  7  (106,'Sneha',52000,'Pune',1),
  8  (107,'Rohit',48000,'Delhi',4),
  9  (108,'Anjali',65000,'Nagpur',3),
 10  (109,'Vikas',58000,'Delhi',4),
 11  (110,'Pooja',62000,'Mumbai',2);
(101,'Amit',50000,'Pune',1),
                           *
ERROR at line 2:
ORA-00933: SQL command not properly ended


SQL> INSERT INTO employee VALUES
  2  (101,'Amit',50000,'Pune',1),
  3  (102,'Neha',55000,'Mumbai',2),
  4  (103,'Rahul',60000,'Pune',1),
  5  (104,'Priya',45000,'Nagpur',3),
  6  (105,'Karan',70000,'Mumbai',2),
  7  (106,'Sneha',52000,'Pune',1),
  8  (107,'Rohit',48000,'Delhi',4),
  9  (108,'Anjali',65000,'Nagpur',3),
 10  (109,'Vikas',58000,'Delhi',4),
 11  (110,'Pooja',62000,'Mumbai',2);
(101,'Amit',50000,'Pune',1),
                           *
ERROR at line 2:
ORA-00933: SQL command not properly ended


SQL> INSERT INTO employee (emp_id, emp_name, salary, city, dept_id)
  2  VALUES
  3  (101,'Amit',50000,'Pune',1),
  4  (102,'Neha',55000,'Mumbai',2),
  5  (103,'Rahul',60000,'Pune',1),
  6  (104,'Priya',45000,'Nagpur',3),
  7  (105,'Karan',70000,'Mumbai',2),
  8  (106,'Sneha',52000,'Pune',1),
  9  (107,'Rohit',48000,'Delhi',4),
 10  (108,'Anjali',65000,'Nagpur',3),
 11  (109,'Vikas',58000,'Delhi',4),
 12  (110,'Pooja',62000,'Mumbai',2);
(101,'Amit',50000,'Pune',1),
                           *
ERROR at line 3:
ORA-00933: SQL command not properly ended


SQL> CREATE TABLE employee (
  2      eno INT PRIMARY KEY,
  3      ename VARCHAR(50),
  4      salary DECIMAL(10,2),
  5      ecity VARCHAR(50),
  6      dno INT
  7  );
CREATE TABLE employee (
             *
ERROR at line 1:
ORA-00955: name is already used by an existing object


SQL> SELECT * FROM employee;

no rows selected

SQL> INSERT INTO employee
  2  VALUES
  3  (101,'Amit',50000,'Pune',1),
  4  (102,'Neha',55000,'Mumbai',2),
  5  (103,'Rahul',60000,'Pune',1),
  6  (104,'Priya',45000,'Nagpur',3),
  7  (105,'Karan',70000,'Mumbai',2),
  8  (106,'Sneha',52000,'Pune',1),
  9  (107,'Rohit',48000,'Delhi',4),
 10  (108,'Anjali',65000,'Nagpur',3),
 11  (109,'Vikas',58000,'Delhi',4),
 12  (110,'Pooja',62000,'Mumbai',2);
(101,'Amit',50000,'Pune',1),
                           *
ERROR at line 3:
ORA-00933: SQL command not properly ended


SQL> INSERT INTO employee
  2
SQL> INSERT INTO employee VALUES
  2  (101,'Amit',50000,'Pune',1),
  3  (102,'Neha',55000,'Mumbai',2),
  4  (103,'Rahul',60000,'Pune',1),
  5  (104,'Priya',45000,'Nagpur',3),
  6  (105,'Karan',70000,'Mumbai',2),
  7  (106,'Sneha',52000,'Pune',1),
  8  (107,'Rohit',48000,'Delhi',4),
  9  (108,'Anjali',65000,'Nagpur',3),
 10  (109,'Vikas',58000,'Delhi',4),
 11  (110,'Pooja',62000,'Mumbai',2);
(101,'Amit',50000,'Pune',1),
                           *
ERROR at line 2:
ORA-00933: SQL command not properly ended


SQL> INSERT INTO employee VALUES (101,'Amit',50000,'Pune',1);

1 row created.

SQL> INSERT INTO employee VALUES (102,'Neha',55000,'Mumbai',2);

1 row created.

SQL> INSERT INTO employee VALUES (103,'Rahul',60000,'Pune',1);

1 row created.

SQL> INSERT INTO employee VALUES (104,'Priya',45000,'Nagpur',3);

1 row created.

SQL> INSERT INTO employee VALUES (105,'Karan',70000,'Mumbai',2);

1 row created.

SQL> INSERT INTO employee VALUES (106,'Sneha',52000,'Pune',1);

1 row created.

SQL> INSERT INTO employee VALUES (107,'Rohit',48000,'Delhi',4);

1 row created.

SQL> INSERT INTO employee VALUES (108,'Anjali',65000,'Nagpur',3);

1 row created.

SQL> INSERT INTO employee VALUES (109,'Vikas',58000,'Delhi',4);

1 row created.

SQL> INSERT INTO employee VALUES (110,'Pooja',62000,'Mumbai',2);

1 row created.

SQL> SELECT * FROM employee
  2
SQL> SELECT * FROM employee;

       ENO ENAME                                                  SALARY
---------- -------------------------------------------------- ----------
ECITY                                                     DNO
-------------------------------------------------- ----------
       101 Amit                                                    50000
Pune                                                        1

       102 Neha                                                    55000
Mumbai                                                      2

       103 Rahul                                                   60000
Pune                                                        1


       ENO ENAME                                                  SALARY
---------- -------------------------------------------------- ----------
ECITY                                                     DNO
-------------------------------------------------- ----------
       104 Priya                                                   45000
Nagpur                                                      3

       105 Karan                                                   70000
Mumbai                                                      2

       106 Sneha                                                   52000
Pune                                                        1


       ENO ENAME                                                  SALARY
---------- -------------------------------------------------- ----------
ECITY                                                     DNO
-------------------------------------------------- ----------
       107 Rohit                                                   48000
Delhi                                                       4

       108 Anjali                                                  65000
Nagpur                                                      3

       109 Vikas                                                   58000
Delhi                                                       4


       ENO ENAME                                                  SALARY
---------- -------------------------------------------------- ----------
ECITY                                                     DNO
-------------------------------------------------- ----------
       110 Pooja                                                   62000
Mumbai                                                      2


10 rows selected.

SQL> CREATE TABLE department (
  2      dno INT PRIMARY KEY,
  3      dname VARCHAR(50)
  4  );

Table created.

SQL> INSERT INTO department VALUES
  2  (1,'HR'),
  3  (2,'IT'),
  4  (3,'Finance'),
  5  (4,'Marketing'),
  6  (5,'Sales'),
  7  (6,'Admin'),
  8  (7,'Production'),
  9  (8,'Testing'),
 10  (9,'Support'),
 11  (10,'Research');
(1,'HR'),
        *
ERROR at line 2:
ORA-00933: SQL command not properly ended


SQL> INSERT ALL
  2    INTO department VALUES (1,'HR')
  3    INTO department VALUES (2,'IT')
  4    INTO department VALUES (3,'Finance')
  5    INTO department VALUES (4,'Marketing')
  6    INTO department VALUES (5,'Sales')
  7    INTO department VALUES (6,'Admin')
  8    INTO department VALUES (7,'Production')
  9    INTO department VALUES (8,'Testing')
 10    INTO department VALUES (9,'Support')
 11    INTO department VALUES (10,'Research')
 12  SELECT * FROM dual;

10 rows created.

SQL> commit;

Commit complete.

SQL> INSERT ALL
  2    INTO employee VALUES (101,'Amit',50000,'Pune',1)
  3    INTO employee VALUES (102,'Neha',55000,'Mumbai',2)
  4    INTO employee VALUES (103,'Rahul',60000,'Pune',1)
  5    INTO employee VALUES (104,'Priya',45000,'Nagpur',3)
  6    INTO employee VALUES (105,'Karan',70000,'Mumbai',2)
  7    INTO employee VALUES (106,'Sneha',52000,'Pune',1)
  8    INTO employee VALUES (107,'Rohit',48000,'Delhi',4)
  9    INTO employee VALUES (108,'Anjali',65000,'Nagpur',3)
 10    INTO employee VALUES (109,'Vikas',58000,'Delhi',4)
 11    INTO employee VALUES (110,'Pooja',62000,'Mumbai',2)
 12  SELECT * FROM dual;
INSERT ALL
*
ERROR at line 1:
ORA-00001: unique constraint (SYSTEM.SYS_C007099) violated


SQL> select * from employee;

       ENO ENAME                                                  SALARY
---------- -------------------------------------------------- ----------
ECITY                                                     DNO
-------------------------------------------------- ----------
       101 Amit                                                    50000
Pune                                                        1

       102 Neha                                                    55000
Mumbai                                                      2

       103 Rahul                                                   60000
Pune                                                        1


       ENO ENAME                                                  SALARY
---------- -------------------------------------------------- ----------
ECITY                                                     DNO
-------------------------------------------------- ----------
       104 Priya                                                   45000
Nagpur                                                      3

       105 Karan                                                   70000
Mumbai                                                      2

       106 Sneha                                                   52000
Pune                                                        1


       ENO ENAME                                                  SALARY
---------- -------------------------------------------------- ----------
ECITY                                                     DNO
-------------------------------------------------- ----------
       107 Rohit                                                   48000
Delhi                                                       4

       108 Anjali                                                  65000
Nagpur                                                      3

       109 Vikas                                                   58000
Delhi                                                       4


       ENO ENAME                                                  SALARY
---------- -------------------------------------------------- ----------
ECITY                                                     DNO
-------------------------------------------------- ----------
       110 Pooja                                                   62000
Mumbai                                                      2


10 rows selected.

SQL> select * from department;

       DNO DNAME
---------- --------------------------------------------------
         1 HR
         2 IT
         3 Finance
         4 Marketing
         5 Sales
         6 Admin
         7 Production
         8 Testing
         9 Support
        10 Research

10 rows selected.

SQL> CREATE TABLE Orders (
  2      OID INT PRIMARY KEY,
  3      ProductName VARCHAR(50),
  4      Amount DECIMAL(10,2),
  5      eno INT,
  6      dno INT
  7  );

Table created.

SQL> INSERT INTO Orders VALUES
  2  (1001,'Laptop',55000,101,1),
  3  (1002,'Mouse',1000,102,2),
  4  (1003,'Keyboard',1500,103,1),
  5  (1004,'Monitor',12000,105,2),
  6  (1005,'Printer',8000,108,3),
  7  (1006,'Scanner',7000,109,4),
  8  (1007,'Tablet',25000,101,1),
  9  (1008,'Mobile',20000,110,2),
 10  (1009,'Camera',30000,105,2),
 11  (1010,'Speaker',5000,108,3);
(1001,'Laptop',55000,101,1),
                           *
ERROR at line 2:
ORA-00933: SQL command not properly ended


SQL> INSERT ALL
  2    INTO Orders VALUES (1001,'Laptop',55000,101,1)
  3    INTO Orders VALUES (1002,'Mouse',1000,102,2)
  4    INTO Orders VALUES (1003,'Keyboard',1500,103,1)
  5    INTO Orders VALUES (1004,'Monitor',12000,105,2)
  6    INTO Orders VALUES (1005,'Printer',8000,108,3)
  7    INTO Orders VALUES (1006,'Scanner',7000,109,4)
  8    INTO Orders VALUES (1007,'Tablet',25000,101,1)
  9    INTO Orders VALUES (1008,'Mobile',20000,110,2)
 10    INTO Orders VALUES (1009,'Camera',30000,105,2)
 11    INTO Orders VALUES (1010,'Speaker',5000,108,3)
 12  SELECT * FROM dual;

10 rows created.

SQL> select * from Orders;

       OID PRODUCTNAME                                            AMOUNT
---------- -------------------------------------------------- ----------
       ENO        DNO
---------- ----------
      1001 Laptop                                                  55000
       101          1

      1002 Mouse                                                    1000
       102          2

      1003 Keyboard                                                 1500
       103          1


       OID PRODUCTNAME                                            AMOUNT
---------- -------------------------------------------------- ----------
       ENO        DNO
---------- ----------
      1004 Monitor                                                 12000
       105          2

      1005 Printer                                                  8000
       108          3

      1006 Scanner                                                  7000
       109          4


       OID PRODUCTNAME                                            AMOUNT
---------- -------------------------------------------------- ----------
       ENO        DNO
---------- ----------
      1007 Tablet                                                  25000
       101          1

      1008 Mobile                                                  20000
       110          2

      1009 Camera                                                  30000
       105          2


       OID PRODUCTNAME                                            AMOUNT
---------- -------------------------------------------------- ----------
       ENO        DNO
---------- ----------
      1010 Speaker                                                  5000
       108          3


10 rows selected.

SQL> select orders.oid,emp.ename from orders
  2  INNER JOIN emp ON orders.eno=emp.eno;
INNER JOIN emp ON orders.eno=emp.eno
                             *
ERROR at line 2:
ORA-00904: "EMP"."ENO": invalid identifier


SQL> SELECT orders.oid, employee.ename
  2  FROM orders
  3  INNER JOIN employee
  4  ON orders.eno = employee.eno;

       OID ENAME
---------- --------------------------------------------------
      1007 Amit
      1001 Amit
      1002 Neha
      1003 Rahul
      1009 Karan
      1004 Karan
      1010 Anjali
      1005 Anjali
      1006 Vikas
      1008 Pooja

10 rows selected.

SQL> SELECT orders.oid,
  2         orders.ProductName,
  3         employee.ename
  4  FROM orders
  5  LEFT JOIN employee
  6  ON orders.eno = employee.eno;

       OID PRODUCTNAME
---------- --------------------------------------------------
ENAME
--------------------------------------------------
      1007 Tablet
Amit

      1001 Laptop
Amit

      1002 Mouse
Neha


       OID PRODUCTNAME
---------- --------------------------------------------------
ENAME
--------------------------------------------------
      1003 Keyboard
Rahul

      1009 Camera
Karan

      1004 Monitor
Karan


       OID PRODUCTNAME
---------- --------------------------------------------------
ENAME
--------------------------------------------------
      1010 Speaker
Anjali

      1005 Printer
Anjali

      1006 Scanner
Vikas


       OID PRODUCTNAME
---------- --------------------------------------------------
ENAME
--------------------------------------------------
      1008 Mobile
Pooja


10 rows selected.

SQL> SELECT o.oid, o.ProductName, e.ename
  2  FROM orders o
  3  RIGHT JOIN employee e
  4  ON o.eno = e.eno;

       OID PRODUCTNAME
---------- --------------------------------------------------
ENAME
--------------------------------------------------
      1001 Laptop
Amit

      1002 Mouse
Neha

      1003 Keyboard
Rahul


       OID PRODUCTNAME
---------- --------------------------------------------------
ENAME
--------------------------------------------------
      1004 Monitor
Karan

      1005 Printer
Anjali

      1006 Scanner
Vikas


       OID PRODUCTNAME
---------- --------------------------------------------------
ENAME
--------------------------------------------------
      1007 Tablet
Amit

      1008 Mobile
Pooja

      1009 Camera
Karan


       OID PRODUCTNAME
---------- --------------------------------------------------
ENAME
--------------------------------------------------
      1010 Speaker
Anjali


Priya


Sneha


       OID PRODUCTNAME
---------- --------------------------------------------------
ENAME
--------------------------------------------------

Rohit


13 rows selected.

SQL> SELECT o.oid, o.ProductName, e.ename
  2  FROM orders o
  3  LEFT JOIN employee e
  4  ON o.eno = e.eno;

       OID PRODUCTNAME
---------- --------------------------------------------------
ENAME
--------------------------------------------------
      1007 Tablet
Amit

      1001 Laptop
Amit

      1002 Mouse
Neha


       OID PRODUCTNAME
---------- --------------------------------------------------
ENAME
--------------------------------------------------
      1003 Keyboard
Rahul

      1009 Camera
Karan

      1004 Monitor
Karan


       OID PRODUCTNAME
---------- --------------------------------------------------
ENAME
--------------------------------------------------
      1010 Speaker
Anjali

      1005 Printer
Anjali

      1006 Scanner
Vikas


       OID PRODUCTNAME
---------- --------------------------------------------------
ENAME
--------------------------------------------------
      1008 Mobile
Pooja


10 rows selected.

SQL> SELECT o.oid,
  2         o.ProductName,
  3         e.ename
  4  FROM orders o
  5  FULL OUTER JOIN employee e
  6  ON o.eno = e.eno;

       OID PRODUCTNAME
---------- --------------------------------------------------
ENAME
--------------------------------------------------
      1007 Tablet
Amit

      1001 Laptop
Amit

      1002 Mouse
Neha


       OID PRODUCTNAME
---------- --------------------------------------------------
ENAME
--------------------------------------------------
      1003 Keyboard
Rahul


Priya

      1009 Camera
Karan


       OID PRODUCTNAME
---------- --------------------------------------------------
ENAME
--------------------------------------------------
      1004 Monitor
Karan


Sneha


Rohit


       OID PRODUCTNAME
---------- --------------------------------------------------
ENAME
--------------------------------------------------
      1010 Speaker
Anjali

      1005 Printer
Anjali

      1006 Scanner
Vikas


       OID PRODUCTNAME
---------- --------------------------------------------------
ENAME
--------------------------------------------------
      1008 Mobile
Pooja


13 rows selected.

SQL> CREATE TABLE Customer (
  2      CustID INT PRIMARY KEY,
  3      FName VARCHAR2(50),
  4      Area VARCHAR2(50),
  5      PhoneNo VARCHAR2(15)
  6  );

Table created.

SQL> INSERT ALL
  2    INTO Customer VALUES (1,'Amit','Pune','9876543210')
  3    INTO Customer VALUES (2,'Neha','Mumbai','9876543211')
  4    INTO Customer VALUES (3,'Rahul','Nagpur','9876543212')
  5    INTO Customer VALUES (4,'Priya','Delhi','9876543213')
  6    INTO Customer VALUES (5,'Karan','Nashik','9876543214')
  7  SELECT * FROM dual;

5 rows created.

SQL> SELECT * FROM Customer;

    CUSTID FNAME
---------- --------------------------------------------------
AREA                                               PHONENO
-------------------------------------------------- ---------------
         1 Amit
Pune                                               9876543210

         2 Neha
Mumbai                                             9876543211

         3 Rahul
Nagpur                                             9876543212


    CUSTID FNAME
---------- --------------------------------------------------
AREA                                               PHONENO
-------------------------------------------------- ---------------
         4 Priya
Delhi                                              9876543213

         5 Karan
Nashik                                             9876543214


SQL> select fname,area from customer where custid=03;

FNAME
--------------------------------------------------
AREA
--------------------------------------------------
Rahul
Nagpur


SQL> select fname,phoneno from customer;

FNAME                                              PHONENO
-------------------------------------------------- ---------------
Amit                                               9876543210
Neha                                               9876543211
Rahul                                              9876543212
Priya                                              9876543213
Karan                                              9876543214

SQL> select count(*) from customer;

  COUNT(*)
----------
         5


SQL> select fname from customer where area in('Pune','Mumbai','Nagpur');

FNAME
--------------------------------------------------
Amit
Neha
Rahul


SQL> update customer
  2  set area='Nagpur'
  3  where custid=1;

1 row updated.

SQL> select * from customer;

    CUSTID FNAME
---------- --------------------------------------------------
AREA                                               PHONENO
-------------------------------------------------- ---------------
         1 Amit
Nagpur                                             9876543210

         2 Neha
Mumbai                                             9876543211

         3 Rahul
Nagpur                                             9876543212


    CUSTID FNAME
---------- --------------------------------------------------
AREA                                               PHONENO
-------------------------------------------------- ---------------
         4 Priya
Delhi                                              9876543213

         5 Karan
Nashik                                             9876543214


SQL> select fname from customer where fname="a%";
select fname from customer where fname="a%"
                                       *
ERROR at line 1:
ORA-00904: "a%": invalid identifier


SQL> select fname from customer where fname like 'P%';

FNAME
--------------------------------------------------
Priya

SQL> select fname from customer where area like '_a%';

FNAME
--------------------------------------------------
Amit
Rahul
Karan


SQL> update customer
  2  set phoneno=5678895231
  3  where fname='Rahul';

1 row updated.

SQL> select * from customer;

    CUSTID FNAME
---------- --------------------------------------------------
AREA                                               PHONENO
-------------------------------------------------- ---------------
         1 Amit
Nagpur                                             9876543210

         2 Neha
Mumbai                                             9876543211

         3 Rahul
Nagpur                                             5678895231


    CUSTID FNAME
---------- --------------------------------------------------
AREA                                               PHONENO
-------------------------------------------------- ---------------
         4 Priya
Delhi                                              9876543213

         5 Karan
Nashik                                             9876543214


SQL> delete from customer where custid=5;

1 row deleted.

SQL> select * from customer;

    CUSTID FNAME
---------- --------------------------------------------------
AREA                                               PHONENO
-------------------------------------------------- ---------------
         1 Amit
Nagpur                                             9876543210

         2 Neha
Mumbai                                             9876543211

         3 Rahul
Nagpur                                             5678895231


    CUSTID FNAME
---------- --------------------------------------------------
AREA                                               PHONENO
-------------------------------------------------- ---------------
         4 Priya
Delhi                                              9876543213



 select * from department;

       DNO DNAME
---------- --------------------------------------------------
         1 HR
         2 IT
         3 Finance
         4 Marketing
         5 Sales
         6 Admin
         7 Production
         8 Testing
         9 Support
        10 Research

10 rows selected.

SQL> SELECT *
  2  FROM Orders
  3  WHERE Amount > 150;

       OID PRODUCTNAME                                            AMOUNT
---------- -------------------------------------------------- ----------
       ENO        DNO
---------- ----------
      1001 Laptop                                                  55000
       101          1

      1002 Mouse                                                    1000
       102          2

      1003 Keyboard                                                 1500
       103          1


       OID PRODUCTNAME                                            AMOUNT
---------- -------------------------------------------------- ----------
       ENO        DNO
---------- ----------
      1004 Monitor                                                 12000
       105          2

      1005 Printer                                                  8000
       108          3

      1006 Scanner                                                  7000
       109          4


       OID PRODUCTNAME                                            AMOUNT
---------- -------------------------------------------------- ----------
       ENO        DNO
---------- ----------
      1007 Tablet                                                  25000
       101          1

      1008 Mobile                                                  20000
       110          2

      1009 Camera                                                  30000
       105          2


       OID PRODUCTNAME                                            AMOUNT
---------- -------------------------------------------------- ----------
       ENO        DNO
---------- ----------
      1010 Speaker                                                  5000
       108          3


10 rows selected.

SQL> SELECT *
  2  FROM Orders
  3  WHERE Amount BETWEEN 1000 AND 18000;

       OID PRODUCTNAME                                            AMOUNT
---------- -------------------------------------------------- ----------
       ENO        DNO
---------- ----------
      1002 Mouse                                                    1000
       102          2

      1003 Keyboard                                                 1500
       103          1

      1004 Monitor                                                 12000
       105          2


       OID PRODUCTNAME                                            AMOUNT
---------- -------------------------------------------------- ----------
       ENO        DNO
---------- ----------
      1005 Printer                                                  8000
       108          3

      1006 Scanner                                                  7000
       109          4

      1010 Speaker                                                  5000
       108          3


6 rows selected.

SQL> SELECT ProductName, Amount
  2  FROM Orders;

PRODUCTNAME                                            AMOUNT
-------------------------------------------------- ----------
Laptop                                                  55000
Mouse                                                    1000
Keyboard                                                 1500
Monitor                                                 12000
Printer                                                  8000
Scanner                                                  7000
Tablet                                                  25000
Mobile                                                  20000
Camera                                                  30000
Speaker                                                  5000

10 rows selected.

SQL> SELECT dno, COUNT(*) AS Total_Employees
  2  FROM Employee
  3  GROUP BY dno;

       DNO TOTAL_EMPLOYEES
---------- ---------------
         1               3
         2               3
         4               2
         3               2

SQL> SELECT MAX(salary) AS Max_Salary,
  2         MIN(salary) AS Min_Salary
  3  FROM Employee;

MAX_SALARY MIN_SALARY
---------- ----------
     70000      45000

SQL> SELECT AVG(salary) AS Avg_Salary
  2  FROM Employee;

AVG_SALARY
----------
     56500

SQL> SELECT *
  2  FROM Employee
  3  WHERE ecity IN ('Pune','Mumbai');

       ENO ENAME                                                  SALARY
---------- -------------------------------------------------- ----------
ECITY                                                     DNO
-------------------------------------------------- ----------
       101 Amit                                                    50000
Pune                                                        1

       102 Neha                                                    55000
Mumbai                                                      2

       103 Rahul                                                   60000
Pune                                                        1


       ENO ENAME                                                  SALARY
---------- -------------------------------------------------- ----------
ECITY                                                     DNO
-------------------------------------------------- ----------
       105 Karan                                                   70000
Mumbai                                                      2

       106 Sneha                                                   52000
Pune                                                        1

       110 Pooja                                                   62000
Mumbai                                                      2


6 rows selected.

SQL> UPDATE Employee
  2  SET salary = salary + 5000
  3  WHERE eno = 101;

1 row updated.

SQL> select * from employee;

       ENO ENAME                                                  SALARY
---------- -------------------------------------------------- ----------
ECITY                                                     DNO
-------------------------------------------------- ----------
       101 Amit                                                    55000
Pune                                                        1

       102 Neha                                                    55000
Mumbai                                                      2

       103 Rahul                                                   60000
Pune                                                        1


       ENO ENAME                                                  SALARY
---------- -------------------------------------------------- ----------
ECITY                                                     DNO
-------------------------------------------------- ----------
       104 Priya                                                   45000
Nagpur                                                      3

       105 Karan                                                   70000
Mumbai                                                      2

       106 Sneha                                                   52000
Pune                                                        1


       ENO ENAME                                                  SALARY
---------- -------------------------------------------------- ----------
ECITY                                                     DNO
-------------------------------------------------- ----------
       107 Rohit                                                   48000
Delhi                                                       4

       108 Anjali                                                  65000
Nagpur                                                      3

       109 Vikas                                                   58000
Delhi                                                       4


       ENO ENAME                                                  SALARY
---------- -------------------------------------------------- ----------
ECITY                                                     DNO
-------------------------------------------------- ----------
       110 Pooja                                                   62000
Mumbai                                                      2


10 rows selected.

SQL> SELECT *
  2  FROM Employee
  3  ORDER BY ename ASC;

       ENO ENAME                                                  SALARY
---------- -------------------------------------------------- ----------
ECITY                                                     DNO
-------------------------------------------------- ----------
       101 Amit                                                    55000
Pune                                                        1

       108 Anjali                                                  65000
Nagpur                                                      3

       105 Karan                                                   70000
Mumbai                                                      2


       ENO ENAME                                                  SALARY
---------- -------------------------------------------------- ----------
ECITY                                                     DNO
-------------------------------------------------- ----------
       102 Neha                                                    55000
Mumbai                                                      2

       110 Pooja                                                   62000
Mumbai                                                      2

       104 Priya                                                   45000
Nagpur                                                      3


       ENO ENAME                                                  SALARY
---------- -------------------------------------------------- ----------
ECITY                                                     DNO
-------------------------------------------------- ----------
       103 Rahul                                                   60000
Pune                                                        1

       107 Rohit                                                   48000
Delhi                                                       4

       106 Sneha                                                   52000
Pune                                                        1


       ENO ENAME                                                  SALARY
---------- -------------------------------------------------- ----------
ECITY                                                     DNO
-------------------------------------------------- ----------
       109 Vikas                                                   58000
Delhi                                                       4


10 rows selected.

SQL> CREATE TABLE Category(
  2      cat_id VARCHAR2(5) PRIMARY KEY,
  3      cat_name VARCHAR2(30)
  4  );

Table created.