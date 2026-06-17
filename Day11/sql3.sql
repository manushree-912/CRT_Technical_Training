/*
------------------------------------------------------------
Day 11 - Campus Recruitment Training (CRT)
------------------------------------------------------------

Topic:
SQL Transactions, DQL, Aggregate Functions and
Built-in Functions

Concepts Covered:
1. Insert Records
2. Update Records
3. Savepoint
4. Rollback
5. Commit
6. Comparison Operators
7. Logical Operators
8. Subqueries
9. Aggregate Functions
10. Group By
11. Mathematical Functions

------------------------------------------------------------
*/




SQL> insert into emp values(111,'Ronny','Hb town' 3467823);
insert into emp values(111,'Ronny','Hb town' 3467823)
                                             *
ERROR at line 1:
ORA-00917: missing comma


SQL> insert into emp values(111,'Ronny','Hb town',3467823);
insert into emp values(111,'Ronny','Hb town',3467823)
            *
ERROR at line 1:
ORA-00947: not enough values


SQL> desc emp
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 EMPID                                              NUMBER(3)
 ENAME                                              CHAR(10)
 ECITY                                              CHAR(10)
 ESAL                                               NUMBER(8,2)
 PINCODE                                            CHAR(6)

SQL> insert into emp values(111,'Ronny','Hb town',3467823,32500);
insert into emp values(111,'Ronny','Hb town',3467823,32500)
                                             *
ERROR at line 1:
ORA-01438: value larger than specified precision allowed for this column


SQL> insert into emp values(111,'Ronny','Hb town',32500,346782);

1 row created.

SQL>
SQL> commit;

Commit complete.

SQL> update emp set ecity='Pune' where empid=102;

1 row updated.

SQL> Savepoint A;

Savepoint created.

SQL> insert into emp values(123,'Ronny','Hb town',32500,346782);

1 row created.

SQL> Savepoint B;

Savepoint created.

SQL> select* from emp;

     EMPID ENAME      ECITY            ESAL PINCOD
---------- ---------- ---------- ---------- ------
       101 Amrit      mumbai          20000 440022
       102 Bali       Pune            40000 440022
       103 chaitanya  delhi           40000 440022
       104 sandy      nagpur          55000 440011
       111 Ronny      Hb town         32500 346782
       123 Ronny      Hb town         32500 346782

6 rows selected.

SQL> rollback to B;

Rollback complete.

SQL> select* from emp;

     EMPID ENAME      ECITY            ESAL PINCOD
---------- ---------- ---------- ---------- ------
       101 Amrit      mumbai          20000 440022
       102 Bali       Pune            40000 440022
       103 chaitanya  delhi           40000 440022
       104 sandy      nagpur          55000 440011
       111 Ronny      Hb town         32500 346782
       123 Ronny      Hb town         32500 346782

6 rows selected.

SQL> select 10+20 from dual;

     10+20
----------
        30

SQL> select sysdate from dual;

SYSDATE
---------
06-JUN-26

SQL> select * from emp where ecity='nagpur';

     EMPID ENAME      ECITY            ESAL PINCOD
---------- ---------- ---------- ---------- ------
       104 sandy      nagpur          55000 440011

SQL> select * from emp where esal=20000;

     EMPID ENAME      ECITY            ESAL PINCOD
---------- ---------- ---------- ---------- ------
       101 Amrit      mumbai          20000 440022

SQL> select * from emp where esal<30000;

     EMPID ENAME      ECITY            ESAL PINCOD
---------- ---------- ---------- ---------- ------
       101 Amrit      mumbai          20000 440022

SQL> select * from emp where esal>30000;

     EMPID ENAME      ECITY            ESAL PINCOD
---------- ---------- ---------- ---------- ------
       102 Bali       Pune            40000 440022
       103 chaitanya  delhi           40000 440022
       104 sandy      nagpur          55000 440011
       111 Ronny      Hb town         32500 346782
       123 Ronny      Hb town         32500 346782

SQL> select * from emp where esal>=30000;

     EMPID ENAME      ECITY            ESAL PINCOD
---------- ---------- ---------- ---------- ------
       102 Bali       Pune            40000 440022
       103 chaitanya  delhi           40000 440022
       104 sandy      nagpur          55000 440011
       111 Ronny      Hb town         32500 346782
       123 Ronny      Hb town         32500 346782

SQL> select * from emp where esal<=30000;

     EMPID ENAME      ECITY            ESAL PINCOD
---------- ---------- ---------- ---------- ------
       101 Amrit      mumbai          20000 440022

SQL> select * from emp where esal<>30000;

     EMPID ENAME      ECITY            ESAL PINCOD
---------- ---------- ---------- ---------- ------
       101 Amrit      mumbai          20000 440022
       102 Bali       Pune            40000 440022
       103 chaitanya  delhi           40000 440022
       104 sandy      nagpur          55000 440011
       111 Ronny      Hb town         32500 346782
       123 Ronny      Hb town         32500 346782

6 rows selected.

SQL> select 30+50 from dual;

     30+50
----------
        80

SQL> commit;

Commit complete.

SQL> select 10+20 from dual;

     10+20
----------
        30

SQL> select sysdate from dual;

SYSDATE
---------
06-JUN-26

SQL> select * from emp where ecity='nagpur';

     EMPID ENAME      ECITY            ESAL PINCOD
---------- ---------- ---------- ---------- ------
       104 sandy      nagpur          55000 440011

SQL> select * from emp where esal=20000;

     EMPID ENAME      ECITY            ESAL PINCOD
---------- ---------- ---------- ---------- ------
       101 Amrit      mumbai          20000 440022

SQL> select * from emp where esal<30000;

     EMPID ENAME      ECITY            ESAL PINCOD
---------- ---------- ---------- ---------- ------
       101 Amrit      mumbai          20000 440022

SQL> select * from emp where esal>30000;

     EMPID ENAME      ECITY            ESAL PINCOD
---------- ---------- ---------- ---------- ------
       102 Bali       Pune            40000 440022
       103 chaitanya  delhi           40000 440022
       104 sandy      nagpur          55000 440011
       111 Ronny      Hb town         32500 346782
       123 Ronny      Hb town         32500 346782

SQL> select * from emp where esal>=30000;

     EMPID ENAME      ECITY            ESAL PINCOD
---------- ---------- ---------- ---------- ------
       102 Bali       Pune            40000 440022
       103 chaitanya  delhi           40000 440022
       104 sandy      nagpur          55000 440011
       111 Ronny      Hb town         32500 346782
       123 Ronny      Hb town         32500 346782

SQL> select * from emp where esal<=30000;

     EMPID ENAME      ECITY            ESAL PINCOD
---------- ---------- ---------- ---------- ------
       101 Amrit      mumbai          20000 440022

SQL> select * from emp where esal<>30000;

     EMPID ENAME      ECITY            ESAL PINCOD
---------- ---------- ---------- ---------- ------
       101 Amrit      mumbai          20000 440022
       102 Bali       Pune            40000 440022
       103 chaitanya  delhi           40000 440022
       104 sandy      nagpur          55000 440011
       111 Ronny      Hb town         32500 346782
       123 Ronny      Hb town         32500 346782

6 rows selected.

SQL> select 30+50 from dual;

     30+50
----------
        80

SQL> commit;

Commit complete.

SQL> select * from emp where esal>ALL(select esal from emp where esal=50000);

     EMPID ENAME      ECITY            ESAL PINCOD
---------- ---------- ---------- ---------- ------
       101 Amrit      mumbai          20000 440022
       111 Ronny      Hb town         32500 346782
       123 Ronny      Hb town         32500 346782
       102 Bali       Pune            40000 440022
       103 chaitanya  delhi           40000 440022
       104 sandy      nagpur          55000 440011

6 rows selected.

SQL> select * from emp where esal>any(select esal from emp where esal>30000);

     EMPID ENAME      ECITY            ESAL PINCOD
---------- ---------- ---------- ---------- ------
       102 Bali       Pune            40000 440022
       103 chaitanya  delhi           40000 440022
       104 sandy      nagpur          55000 440011

SQL> select * from emp where ecity='nagpur'and esal=50000;

no rows selected

SQL> select * from emp where ecity='nagpur'and esal>50000;

     EMPID ENAME      ECITY            ESAL PINCOD
---------- ---------- ---------- ---------- ------
       104 sandy      nagpur          55000 440011


SQL> select* from emp where esal BETWEEN  30000 and 50000;

     EMPID ENAME      ECITY            ESAL PINCOD
---------- ---------- ---------- ---------- ------
       102 Bali       Pune            40000 440022
       103 chaitanya  delhi           40000 440022
       111 Ronny      Hb town         32500 346782
       123 Ronny      Hb town         32500 346782

SQL> select * from emp where ecity in('nagpur','pune');

     EMPID ENAME      ECITY            ESAL PINCOD
---------- ---------- ---------- ---------- ------
       104 sandy      nagpur          55000 440011

SQL> select * from emp where ecity like 'N%';

no rows selected

SQL> select * from emp where ecity in('nagpur','Pune');

     EMPID ENAME      ECITY            ESAL PINCOD
---------- ---------- ---------- ---------- ------
       102 Bali       Pune            40000 440022
       104 sandy      nagpur          55000 440011

SQL> select * from emp where ecity like 'n%';

     EMPID ENAME      ECITY            ESAL PINCOD
---------- ---------- ---------- ---------- ------
       104 sandy      nagpur          55000 440011

SQL> select * from emp where ecity not like 'n%';

     EMPID ENAME      ECITY            ESAL PINCOD
---------- ---------- ---------- ---------- ------
       101 Amrit      mumbai          20000 440022
       102 Bali       Pune            40000 440022
       103 chaitanya  delhi           40000 440022
       111 Ronny      Hb town         32500 346782
       123 Ronny      Hb town         32500 346782

SQL> select * from emp where ecity='nagpur' or ecity='Pune';

     EMPID ENAME      ECITY            ESAL PINCOD
---------- ---------- ---------- ---------- ------
       102 Bali       Pune            40000 440022
       104 sandy      nagpur          55000 440011

SQL> select count(*) from emp;

  COUNT(*)
----------
         6

SQL> select count(ename) from emp;

COUNT(ENAME)
------------
           6

SQL> select count(ecity) from emp;

COUNT(ECITY)
------------
           6

SQL> select count(ecity) from emp where ecity='nagpur';

COUNT(ECITY)
------------
           1

SQL> select * from emp;

     EMPID ENAME      ECITY            ESAL PINCOD
---------- ---------- ---------- ---------- ------
       101 Amrit      mumbai          20000 440022
       102 Bali       Pune            40000 440022
       103 chaitanya  delhi           40000 440022
       104 sandy      nagpur          55000 440011
       111 Ronny      Hb town         32500 346782
       123 Ronny      Hb town         32500 346782

6 rows selected.

SQL> select count(distinct ecity) from emp;

COUNT(DISTINCTECITY)
--------------------
                   5

SQL> select count(distinct ename) from emp;

COUNT(DISTINCTENAME)
--------------------
                   5

SQL> select sum(esal) from emp;

 SUM(ESAL)
----------
    220000

SQL> select sum(esal) as 'total salary' from emp where esal>20000;
select sum(esal) as 'total salary' from emp where esal>20000
                    *
ERROR at line 1:
ORA-00923: FROM keyword not found where expected


SQL> select sum(esal) as "total salary" from emp where esal>20000;

total salary
------------
      200000

SQL> select sum(distinct esal) as "total salary" from emp where esal>20000;

total salary
------------
      127500

SQL> select ecity, sum(esal) as "total salary" from emp group by ecity;

ECITY      total salary
---------- ------------
Pune              40000
nagpur            55000
delhi             40000
mumbai            20000
Hb town           65000


SQL> select avg(esal) from emp;

 AVG(ESAL)
----------
36666.6667

SQL> select avg(esal) as "average salary" from emp;

average salary
--------------
    36666.6667

SQL> select avg(esal) as "average salary" from emp group by ename;

average salary
--------------
         40000
         55000
         32500
         20000
         40000

SQL> select avg(esal) as "average salary" from emp group by ecity;

average salary
--------------
         40000
         55000
         40000
         20000
         32500

SQL> select min(esal) from emp;

 MIN(ESAL)
----------
     20000

SQL> select min(esal) as "minimum salary" from emp;

minimum salary
--------------
         20000

SQL> select min(esal) as "minimum salary" from emp group by ecity;

minimum salary
--------------
         40000
         55000
         40000
         20000
         32500

SQL> select ecity,min(esal) as "minimum salary" from emp group by ecity;

ECITY      minimum salary
---------- --------------
Pune                40000
nagpur              55000
delhi               40000
mumbai              20000
Hb town             32500

SQL> select * from emp;

     EMPID ENAME      ECITY            ESAL PINCOD
---------- ---------- ---------- ---------- ------
       101 Amrit      mumbai          20000 440022
       102 Bali       Pune            40000 440022
       103 chaitanya  delhi           40000 440022
       104 sandy      nagpur          55000 440011
       111 Ronny      Hb town         32500 346782
       123 Ronny      Hb town         32500 346782

6 rows selected.

SQL> select max(esal) as "minimum salary" from emp;

minimum salary
--------------
         55000

SQL> select eciyt,max(esal) as "minimum salary" from emp group by ecity;
select eciyt,max(esal) as "minimum salary" from emp group by ecity
       *
ERROR at line 1:
ORA-00904: "ECIYT": invalid identifier


SQL> select ecity,max(esal) as "minimum salary" from emp group by ecity;

ECITY      minimum salary
---------- --------------
Pune                40000
nagpur              55000
delhi               40000
mumbai              20000
Hb town             32500


SQL> select power(2,4) from dual;

POWER(2,4)
----------
        16

SQL> select (10,20,30,40,50) from dual;
select (10,20,30,40,50) from dual
          *
ERROR at line 1:
ORA-00907: missing right parenthesis


SQL> select greatest(10,20,30,40,50) from dual;

GREATEST(10,20,30,40,50)
------------------------
                      50

SQL>
SQL> select floor(4.7) from emp;

FLOOR(4.7)
----------
         4
         4
         4
         4
         4
         4

6 rows selected.


SQL> select abs(-44) from dual;

  ABS(-44)
----------
        44

SQL> select abs(44) from dual;

   ABS(44)
----------
        44

SQL> select * from emp order by ename;

     EMPID ENAME      ECITY            ESAL PINCOD
---------- ---------- ---------- ---------- ------
       101 Amrit      mumbai          20000 440022
       102 Bali       Pune            40000 440022
       123 Ronny      Hb town         32500 346782
       111 Ronny      Hb town         32500 346782
       103 chaitanya  delhi           40000 440022
       104 sandy      nagpur          55000 440011

6 rows selected.

SQL> select * from emp order by ename desc;

     EMPID ENAME      ECITY            ESAL PINCOD
---------- ---------- ---------- ---------- ------
       104 sandy      nagpur          55000 440011
       103 chaitanya  delhi           40000 440022
       123 Ronny      Hb town         32500 346782
       111 Ronny      Hb town         32500 346782
       102 Bali       Pune            40000 440022
       101 Amrit      mumbai          20000 440022

6 rows selected.

SQL> select * from emp order by ename desc;

     EMPID ENAME      ECITY            ESAL PINCOD
---------- ---------- ---------- ---------- ------
       104 sandy      nagpur          55000 440011
       103 chaitanya  delhi           40000 440022
       123 Ronny      Hb town         32500 346782
       111 Ronny      Hb town         32500 346782
       102 Bali       Pune            40000 440022
       101 Amrit      mumbai          20000 440022

6 rows selected.

SQL> select * from emp order by ename,ecity;

     EMPID ENAME      ECITY            ESAL PINCOD
---------- ---------- ---------- ---------- ------
       101 Amrit      mumbai          20000 440022
       102 Bali       Pune            40000 440022
       123 Ronny      Hb town         32500 346782
       111 Ronny      Hb town         32500 346782
       103 chaitanya  delhi           40000 440022
       104 sandy      nagpur          55000 440011

6 rows selected.

SQL> select * from emp order by ename ASC,ecity DESC;

     EMPID ENAME      ECITY            ESAL PINCOD
---------- ---------- ---------- ---------- ------
       101 Amrit      mumbai          20000 440022
       102 Bali       Pune            40000 440022
       123 Ronny      Hb town         32500 346782
       111 Ronny      Hb town         32500 346782
       103 chaitanya  delhi           40000 440022
       104 sandy      nagpur          55000 440011

6 rows selected.

SQL> select count(empid), ecity from emp group by ecity;

COUNT(EMPID) ECITY
------------ ----------
           1 Pune
           1 nagpur
           1 delhi
           1 mumbai
           2 Hb town

SQL> select count(empid), ecity from emp group by ecity order by count(empid) DESC;

COUNT(EMPID) ECITY
------------ ----------
           2 Hb town
           1 nagpur
           1 mumbai
           1 Pune
           1 delhi

SQL> select emp.ename, count(ecity) as ecityCount from emp;
select emp.ename, count(ecity) as ecityCount from emp
       *
ERROR at line 1:
ORA-00937: not a single-group group function


SQL> select count(empid), ecity from emp group by ecity having count(empid)>2;

no rows selected

SQL> select count(empid), ecity from emp group by ecity having count(empid)>1;

COUNT(EMPID) ECITY
------------ ----------
           2 Hb town

SQL> select count(empid), ecity from emp group by ecity having count(empid)>=2;

COUNT(EMPID) ECITY
------------ ----------
           2 Hb town

SQL> select count(empid), ecity from emp group by ecity having count(empid)>=1;

COUNT(EMPID) ECITY
------------ ----------
           1 Pune
           1 nagpur
           1 delhi
           1 mumbai
           2 Hb town

