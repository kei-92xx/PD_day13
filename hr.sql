select * from professor; /* ctrl + enter 실행 */
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
/* 학생 테이블에서 학번, 이름, 몸무게 출력 */
select studno, name, weight
from student;
/* 교수 테이블에서 교수번호, 이름, 급여 출력 */
desc professor
select profno, name, sal
from professor;
SELECT DISTINCT deptno
FROM student;
/* 교수 테이블 교수들이 소속된 과를 중복을 제외하고 출력 */
SELECT DISTINCT deptno
FROM professor;
/* 교수 데이블에서 직급은 몇 종류? */
SELECT DISTINCT position
FROM professor;
SELECT DISTINCT deptno, grade
FROM student;
SELECT dname dept_name, deptno AS DN
FROM department;
/* 학생 테이블에서 '이름', '학번', '학과번호'를 출력 */
SELECT name 이름, STUDNO AS 학번, deptno 학과번호
FROM student;
SELECT dname "Department Name", deptno "부서번호#"
FROM department;
/* 교수 테이블에서 교수이름, 급여, 학과번호 출력 */
SELECT name "교수 이름", sal AS "급여$", deptno AS "학과 번호No"
FROM professor;
SELECT studno, name
FROM Student;
SELECT studno || '  ' || name "Student"
FROM student;
/* 사원테이블에서 열 레이블이 Employee and Title 이고,
콤마와 공백으로 구분된, 이름과 직무(job)를 연결되도록
출력. (결과가 아래와 같이 나오도록) */
SELECT * FROM EMP;
SELECT ENAME || ', ' || JOB "Employee and Title"
FROM EMP;
select name, weight, weight*2.2 AS weight_pound
FROM student;
/* 사원 테이블(emp)에서 사원 번호, 이름, 직업, 급여 그리고 22% 증가된 급여를 출력
증가된 급여의 열 레이블은 New Salary */
SELECT EMPNO, ename, job, SAL, SAL*1.22 AS "New Salary"
FROM EMP;
/* 위 문제에서 새로운 급여(New Salary)에서 예전 급여(SAL)를 빼는 열을
추가. 추가한 열 레이블은 Increase */
SELECT EMPNO, ename, job, SAL,
        SAL*1.22 AS "New Salary", SAL*1.22-SAL "Increase"
FROM EMP;
SELECT studno, name, deptno, grade
FROM student
WHERE grade ='1'; /* ''을 안넣어도 오라클이 똑똑해서 출력되긴 함 */
/* 조명훈 */
SELECT studno, name, deptno, grade
FROM student
WHERE name ='조명훈';
/* 직급이 부교수인 교수들의 이름, 직급, 급여 출력 */
SELECT name, position, sal
FROM professor
WHERE position='부교수';
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
/* 직급이 교수이면서 급여가 300 이상인 교수이름, 급여, 직급 출력 */
SELECT  name "교수이름", sal as 급여, position 직급
FROM    professor
WHERE   position='교수'
AND     sal >= 300;
SELECT  studno, name, weight, deptno
FROM    student
WHERE not deptno = 101
and not     weight < 70;
SELECT  studno, name, weight
FROM    student
WHERE   weight
        between 50 and 70;
        
/************** 문제 **************/

/* 사원테이블에서 사원명 칼럼의 별명은 Name, 급여*12는 Annual Salary로 부여하여 출력 */
select ENAME "NAME", SAL*12 as "Annual Salary"
FROM emp;

/* 사원테이블의 사원명과 급여를 아래와 같은 포맷으로 출력해 보세요. (결과가 아래와 같이 나오도록) */
select ENAME || ': 1 Month salary = ' || SAL "MONTHLY"
from emp;

/* 101번과 202번 학과에 속하지 않는 모든 교수의 이름과 학과번호를 출력하세요. */
SELECT NAME, DEPTNO
from PROFESSOR
where not DEPTNO = 101 and not DEPTNO = 202;

/* $2850 이상인 사원의 이름과 급여를 출력하세요. */
SELECT ENAME, SAL
from emp
where not SAL <= 2850;

/* $1250~$2800을 받고 20번 부서에 속하지 않는 사원의 이름과 급여를 출력하세요.
열의 레이블을 Employee와 Monthly Salary로 하세요.(결과는 아래와 같도록) */
SELECT ENAME, SAL, DEPTNO
from emp
where SAL between 1250 and 2800 and not DEPTNO = 20 ;
