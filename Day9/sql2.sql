/*
------------------------------------------------------------
Day 9 - Campus Recruitment Training (CRT)
------------------------------------------------------------

Topic: SQL DML, TCL and DCL Commands

Description:
This practical demonstrates data modification,
transaction control, and user privilege management
using Oracle SQL.

Operations Implemented:
1. Modify Column Data Type
2. Update Records
3. Rollback Transaction
4. Commit Transaction
5. Update Multiple Records
6. Delete Records
7. Insert New Records
8. Grant Privileges
9. Revoke Privileges
10. Create User
11. Drop User

Concepts Covered:
- DML Commands
- TCL Commands
- DCL Commands
- Transaction Management
- User Management
- Privilege Management

------------------------------------------------------------
*/





SQL> CREATE TABLE emp(
  2  empid number(3),
  3  ename char(10),
  4  ecity char(10),
  5  esal number(8,2),
  6  pincode char(6)
  7  );

Table created.

SQL> DESC emp
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 EMPID                                              NUMBER(3)
 ENAME                                              CHAR(10)
 ECITY                                              CHAR(10)
 ESAL                                               NUMBER(8,2)
 PINCODE                                            CHAR(6)

SQL> INSERT INTO emp(empid,ename,ecity,esal,pincode)VALUES(101,'Amrit','mumbai',20000,440022);

1 row created.

SQL> INSERT INTO emp VALUES(102,'Bali','pune',40000,440022);

1 row created.

SQL> INSERT INTO emp VALUES(&empid,&ename,&ecity,&esal,&pincode);
Enter value for empid: 103
Enter value for ename: Chaitanya
Enter value for ecity: nagpur
Enter value for esal: 40000
Enter value for pincode: 440032
old   1: INSERT INTO emp VALUES(&empid,&ename,&ecity,&esal,&pincode)
new   1: INSERT INTO emp VALUES(103,Chaitanya,nagpur,40000,440032)
INSERT INTO emp VALUES(103,Chaitanya,nagpur,40000,440032)
                                     *
ERROR at line 1:
ORA-00984: column not allowed here


SQL> DESC emp
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 EMPID                                              NUMBER(3)
 ENAME                                              CHAR(10)
 ECITY                                              CHAR(10)
 ESAL                                               NUMBER(8,2)
 PINCODE                                            CHAR(6)

SQL> SELECT *FROM emp
  2
SQL> SELECT *FROM emp;

     EMPID ENAME      ECITY            ESAL PINCOD
---------- ---------- ---------- ---------- ------
       101 Amrit      mumbai          20000 440022
       102 Bali       pune            40000 440022

SQL> INSERT INTO emp VALUES(&empid,&ename,&ecity,&esal,&pincode);
Enter value for empid: 103
Enter value for ename: chaitanya
Enter value for ecity: nagpur
Enter value for esal: 400000
Enter value for pincode: 440022
old   1: INSERT INTO emp VALUES(&empid,&ename,&ecity,&esal,&pincode)
new   1: INSERT INTO emp VALUES(103,chaitanya,nagpur,400000,440022)
INSERT INTO emp VALUES(103,chaitanya,nagpur,400000,440022)
                                     *
ERROR at line 1:
ORA-00984: column not allowed here


SQL> INSERT INTO emp VALUES(&empid,'&ename','&ecity',&esal,&pincode);
Enter value for empid: 103
Enter value for ename: chaitanya
Enter value for ecity: nagpur
Enter value for esal: 40000
Enter value for pincode: 440022
old   1: INSERT INTO emp VALUES(&empid,'&ename','&ecity',&esal,&pincode)
new   1: INSERT INTO emp VALUES(103,'chaitanya','nagpur',40000,440022)

1 row created.

SQL> INSERT INTO emp VALUES(&empid,'&ename','&ecity',&esal,&pincode);
Enter value for empid: 104
Enter value for ename: sandy
Enter value for ecity: nagpur
Enter value for esal: 55000
Enter value for pincode: 440011
old   1: INSERT INTO emp VALUES(&empid,'&ename','&ecity',&esal,&pincode)
new   1: INSERT INTO emp VALUES(104,'sandy','nagpur',55000,440011)

1 row created.

SQL> SELECT *FROM emp;

     EMPID ENAME      ECITY            ESAL PINCOD
---------- ---------- ---------- ---------- ------
       101 Amrit      mumbai          20000 440022
       102 Bali       pune            40000 440022
       103 chaitanya  nagpur          40000 440022
       104 sandy      nagpur          55000 440011

SQL> UPDATE emp SET ecity='delhi'where empid=103;

1 row updated.

SQL> SELECT *FROM emp;

     EMPID ENAME      ECITY            ESAL PINCOD
---------- ---------- ---------- ---------- ------
       101 Amrit      mumbai          20000 440022
       102 Bali       pune            40000 440022
       103 chaitanya  delhi           40000 440022
       104 sandy      nagpur          55000 440011

SQL> commit;

Commit complete.

SQL> UPDATE emp2
  2  SET ecity='nagpur';
UPDATE emp2
       *
ERROR at line 1:
ORA-00942: table or view does not exist


SQL> UPDATE emp
  2  SET ecity='nagpur';

4 rows updated.

SQL> SELECT *FROM emp;

     EMPID ENAME      ECITY            ESAL PINCOD
---------- ---------- ---------- ---------- ------
       101 Amrit      nagpur          20000 440022
       102 Bali       nagpur          40000 440022
       103 chaitanya  nagpur          40000 440022
       104 sandy      nagpur          55000 440011

SQL> rollback;

Rollback complete.

SQL> SELECT *FROM emp;

     EMPID ENAME      ECITY            ESAL PINCOD
---------- ---------- ---------- ---------- ------
       101 Amrit      mumbai          20000 440022
       102 Bali       pune            40000 440022
       103 chaitanya  delhi           40000 440022
       104 sandy      nagpur          55000 440011

SQL> CREATE USER sqladmin IDENTIFIED by wizard;

User created.

SQL> GRANT CONNECT TO sqladmin;

Grant succeeded.

SQL> GRANT CONNECT,RESOURCE,DBA TO sqladmin;

Grant succeeded.

SQL> GRANT UNLIMITED TABLESPACE TO sqladmin;

Grant succeeded.

SQL> GRANT INSERT,SELECT,UPDATE,DELETE ON emp TO sqladmin;

Grant succeeded.

SQL> DROP USER sqladmin;

User dropped.

SQL> CREATE USER sqladmin IDENTIFIED by wizard;

User created.

SQL> GRANT CONNECT TO sqladmin;

Grant succeeded.

SQL> GRANT CREATE TABLE TO sqladmin;

Grant succeeded.

SQL> REVOKE CREATE TABLE FROM sqladmin;

Revoke succeeded.

SQL>
