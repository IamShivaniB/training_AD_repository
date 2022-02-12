--Synonym
CREATE PUBLIC SYNONYM mgr FOR emp; 
SELECT * FROM emp;
DROP PUBLIC SYNONYM mgr FORCE;

--Oracle Sequence
CREATE SEQUENCE item_seq;
SELECT item_seq.NEXTVAL
FROM dual;
SELECT item_seq.CURRVAL
FROM dual;
SELECT item_seq.NEXTVAL
FROM   dual
CONNECT BY level <= 5;
CREATE TABLE items(
    item_id NUMBER
);

INSERT INTO items(item_id) VALUES(item_seq.NEXTVAL);
INSERT INTO items(item_id) VALUES(item_seq.NEXTVAL);

COMMIT;

SELECT item_id FROM items;

DECLARE
    v_seq NUMBER;
BEGIN
    v_seq  := item_seq.NEXTVAL;
    DBMS_OUTPUT.put_line('v_seq=' || v_seq);
END;

ALTER SEQUENCE item_seq MAXVALUE 100;

DROP SEQUENCE item_seq;

GRANT CREATE SEQUENCE 
TO item_seq;


--groupings

SELECT ENAME, SUM (SAL) FROM EMP
GROUP BY ENAME;  

SELECT empno, hiredate, Count (*)  
FROM emp  
Group BY empno, hiredate; 

SELECT ENAME, SUM(SAL) FROM EMP  
GROUP BY ENAME  
HAVING SUM(SAL)>2000;   

