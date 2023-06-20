select * from professor; /* ctrl + enter ���� */
select * from student;
SELECT * FROM student;
SELECT * FROM professor;
select * from department;
select * from salgrade;
select * from tab;
desc student
desc PROFESSOR
select deptno, dname, college, loc from department;
select dname, deptno
from department;
select studno, name, weight
from student;
/* �л� ���̺��� �й�, �̸�, ������ ��� */
select studno, name, weight
from student;
/* ���� ���̺��� ������ȣ, �̸�, �޿� ��� */
desc professor
select profno, name, sal
from professor;
SELECT DISTINCT deptno
FROM student;
/* ���� ���̺� �������� �Ҽӵ� ���� �ߺ��� �����ϰ� ��� */
SELECT DISTINCT deptno
FROM professor;
/* ���� ���̺��� ������ �� ����? */
SELECT DISTINCT position
FROM professor;
SELECT DISTINCT deptno, grade
FROM student;
SELECT dname dept_name, deptno AS DN
FROM department;
/* �л� ���̺��� '�̸�', '�й�', '�а���ȣ'�� ��� */
SELECT name �̸�, STUDNO AS �й�, deptno �а���ȣ
FROM student;
SELECT dname "Department Name", deptno "�μ���ȣ#"
FROM department;
/* ���� ���̺��� �����̸�, �޿�, �а���ȣ ��� */
SELECT name "���� �̸�", sal AS "�޿�$", deptno AS "�а� ��ȣNo"
FROM professor;
SELECT studno, name
FROM Student;
SELECT studno || '  ' || name "Student"
FROM student;
/* ������̺��� �� ���̺��� Employee and Title �̰�,
�޸��� �������� ���е�, �̸��� ����(job)�� ����ǵ���
���. (����� �Ʒ��� ���� ��������) */
SELECT * FROM EMP;
SELECT ENAME || ', ' || JOB "Employee and Title"
FROM EMP;
select name, weight, weight*2.2 AS weight_pound
FROM student;
/* ��� ���̺�(emp)���� ��� ��ȣ, �̸�, ����, �޿� �׸��� 22% ������ �޿��� ���
������ �޿��� �� ���̺��� New Salary */
SELECT EMPNO, ename, job, SAL, SAL*1.22 AS "New Salary"
FROM EMP;
/* �� �������� ���ο� �޿�(New Salary)���� ���� �޿�(SAL)�� ���� ����
�߰�. �߰��� �� ���̺��� Increase */
SELECT EMPNO, ename, job, SAL,
        SAL*1.22 AS "New Salary", SAL*1.22-SAL "Increase"
FROM EMP;
SELECT studno, name, deptno, grade
FROM student
WHERE grade ='1'; /* ''�� �ȳ־ ����Ŭ�� �ȶ��ؼ� ��µǱ� �� */
/* ������ */
SELECT studno, name, deptno, grade
FROM student
WHERE name ='������';
/* ������ �α����� �������� �̸�, ����, �޿� ��� */
SELECT name, position, sal
FROM professor
WHERE position='�α���';
SELECT  studno, name, grade G,
        deptno, weight
FROM    student
WHERE   weight <= 70;
SELECT  studno, name, grade G, weight, deptno
FROM    student
WHERE   grade = '1'
and     weight >= 70;
SELECT  studno, name, weight, deptno, grade G
FROM    student
WHERE   grade = '1'
or      weight >= 70;
/* ������ �����̸鼭 �޿��� 300 �̻��� �����̸�, �޿�, ���� ��� */
SELECT  name "�����̸�", sal as �޿�, position ����
FROM    professor
WHERE   position='����'
AND     sal >= 300;
SELECT  studno, name, weight, deptno
FROM    student
WHERE not deptno = 101
and not     weight < 70;
SELECT  studno, name, weight
FROM    student
WHERE   weight
        between 50 and 70;
        
/************** ���� **************/

/* ������̺��� ����� Į���� ������ Name, �޿�*12�� Annual Salary�� �ο��Ͽ� ��� */
select ENAME "NAME", SAL*12 as "Annual Salary"
FROM emp;

/* ������̺��� ������ �޿��� �Ʒ��� ���� �������� ����� ������. (����� �Ʒ��� ���� ��������) */
select ENAME || ': 1 Month salary = ' || SAL "MONTHLY"
from emp;

/* 101���� 202�� �а��� ������ �ʴ� ��� ������ �̸��� �а���ȣ�� ����ϼ���. */
SELECT NAME, DEPTNO
from PROFESSOR
where not DEPTNO = 101 and not DEPTNO = 202;

/* $2850 �̻��� ����� �̸��� �޿��� ����ϼ���. */
SELECT ENAME, SAL
from emp
where not SAL <= 2850;

/* $1250~$2800�� �ް� 20�� �μ��� ������ �ʴ� ����� �̸��� �޿��� ����ϼ���.
���� ���̺��� Employee�� Monthly Salary�� �ϼ���.(����� �Ʒ��� ������) */
SELECT ENAME, SAL, DEPTNO
from emp
where SAL between 1250 and 2800 and not DEPTNO = 20 ;
