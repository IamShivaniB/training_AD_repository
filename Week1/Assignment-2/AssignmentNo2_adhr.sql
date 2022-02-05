--1-Display all the information of the EMP table?
SELECT * FROM emp;
    SELECT empno ,ename ,job,mgr ,hiredate ,sal  ,comm ,deptno ,branchno  
    FROM emp;

--2-Display unique Jobs from EMP table?
SELECT 
    DISTINCT job
FROM
    emp;

--3-List the emps in the asc order of their Salaries? 
SELECT 
      empno,ename,sal
FROM 
      emp
ORDER BY sal;      

--4-List the details of the emps in asc order of the Dptnos and desc of Jobs?
SELECT
    ename,sal,deptno,job
FROM
    emp
ORDER BY
    deptno ASC , job DESC;

--5-Display all the unique job groups in the descending order?   
SELECT 
    DISTINCT job
FROM
    emp
ORDER BY 
        job DESC;

--6-Display all the details of all ‘Mgrs’
SELECT 
      mgr
FROM
      emp;

--7-List the emps who joined before 1981      
SELECT
    ename,hiredate, Months_between(sysdate , hiredate)/12 
FROM
    emp;

--8- List the Empno, Ename, Sal, Daily sal of all emps in the asc order of Annsal
SELECT empno,ename,sal,ROUND(sal/30),sal*12
FROM
    emp
ORDER BY
    sal*12;

--9-Display the Empno, Ename, job, Hiredate, Exp of all Mgrs
SELECT empno,ename,job,hiredate,mgr exp
FROM emp
WHERE
    mgr IN (SELECT mgr FROM emp);

--10- List the Empno, Ename, Sal, Exp of all emps working for Mgr 7369
SELECT 
     empno,ename,sal,mgr  exp
FROM 
     emp
WHERE
     mgr=7369
     
--11-Display all the details of the emps whose Comm  Is more than their Sal
SELECT 
    EMPNO ,ENAME ,JOB ,MGR ,HIREDATE ,SAL ,COMM ,DEPTNO 
FROM
    EMP

WHERE 
     comm>sal
     
--12- List the emps along with their Exp and Daily Sal is more than Rs 100
SELECT
    ENAME,SAL EXP, SAL/30
FROM
    EMP
WHERE
    SAL/30>100;
    
--13-List the emps who are either ‘CLERK’ or ‘ANALYST’ in the desc order
SELECT 
    empno,ename,job
FROM
    emp
WHERE
    job='Clerk' OR job='Analyst'

--14- List the emps who joined on 1-MAY-81,3-DEC-81,17-DEC-81,19-JAN-80 in asc order of seniority
SELECT * FROM emp
WHERE hiredate in (’01-may-81’,’03-dec-81’,’17-dec81’,’19-jan-80’) 
ORDER BY hiredate ASC;

--15-List the emp who are working for the Deptno 10 or20
SELECT
     empno,ename,deptno
FROM
     emp
WHERE 
    deptno=10 OR deptno=20
ORDER BY 
     deptno;
     
--16- List the emps who are joined in the year 81    
SELECT 
empno,ename,hiredate
FROM 
emp
WHERE
hiredate BETWEEN '1981-01-01' AND '1981-12-31';

--17- List the emps Who Annual sal ranging from 22000 and 45000
SELECT 
   empno,ename,sal*12 AS annual_sal
FROM  
   emp
WHERE
    sal*12 BETWEEN 22000 AND 45000;
    
--18-List the Enames those are having five characters in their Names
SELECT 
ename
FROM
emp
WHERE 
LENGTH(ename)=5;

--19-List the Enames those are starting with ‘S’ and with five characters
SELECT 
ename
FROM
emp
WHERE 
LENGTH(ename)=5 AND ename LIKE 'S%';

--20- List the emps those are having four chars and third character must be ‘r’
SELECT 
ename
FROM
emp
WHERE 
LENGTH(ename)=4 AND ename LIKE '@@R%';

--21- List the Five character names starting with ‘S’ and ending with ‘H’
SELECT 
ename
FROM
emp
WHERE 
LENGTH(ename)=5 AND ename LIKE 'S%' AND ename LIKE '%H';

--22- List the emps who joined in January
SELECT 
ename,hiredate
FROM
emp
WHERE 
TO_CHAR(hiredate,'MON')='JAN';

--23-List the emps whose names having a character set ‘ll’ together
SELECT 
ename
FROM
emp
WHERE 
 ename LIKE '_LL__'; 

--24- List the emps who does not belong to Deptno 20
SELECT
     empno,ename,deptno
FROM
     emp
WHERE 
    deptno!=20
ORDER BY 
     deptno;
     
--25- List all the emps except ‘PRESIDENT’ & ‘MGR” in asc order of Salaries
SELECT 
    ENAME,JOB,SAL,DEPTNO
FROM
    EMP
WHERE
    JOB NOT IN 'MANAGER' AND JOB NOT IN 'PRESIDENT'
ORDER BY 
    SAL; 
    
--26- List the emps whose Empno not starting with digit78
SELECT 
    ENAME,EMPNO,JOB,SAL,DEPTNO
FROM
    EMP
WHERE
    EMPNO NOT LIKE'78%';
--27- List the emps who are working under ‘MGR’
SELECT 
    ENAME,EMPNO,JOB,SAL,DEPTNO
FROM
    EMP
WHERE
    JOB IN 'MANAGER';
--28- List the emps who joined in any year but not belongs to the month of March

--29- List all the Clerks of Deptno 20
SELECT 
    ENAME,EMPNO,JOB,SAL,HIREDATE
FROM
    EMP
WHERE
TO_CHAR(HIREDATE,'MON') NOT IN 'MAR';
--30-List the emps of Deptno 30 or 10 joined in the year 1981
SELECT 
    ENAME,EMPNO,JOB,SAL,HIREDATE
FROM
    EMP
WHERE
    DEPTNO = 30 OR DEPTNO = 10 AND  TO_CHAR(HIREDATE,'YEAR')='1981';
--31-Display the details of SMITH
SELECT 
    empno,ename,job,mgr,hiredate,sal,comm,deptno
FROM
    emp
WHERE
    ENAME = 'SMITH';
--32- Display the location of SMITH
SELECT 
    empno,ename,job,mgr,hiredate,sal,comm,deptno
FROM
    emp
WHERE
    ENAME = 'SMITH';