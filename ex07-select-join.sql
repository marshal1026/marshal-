/*파일명: ex07-select-join.sql

JOIN 
    SQL에서 두 개 이상의 테이블에서 관련된 행들을 결합하기 위한 연산입니다.
    
*/

/*
Natural Join
    두 테이블에서 데이터 유형과 이름이 일치하는 열을 기반으로 자동으로 
    테이블을 조인할 수 있습니다.
*/ 

SELECT department_id, department_name,
        location_id, city
FROM departments
NATURAL JOIN locations;

/* 
USING 절로 조인
    명시적으로 결합을 수행하고자하는 열을 정해줍니다.
*/ 
SELECT employee_id, last_name,
    location_id, department_id
FROM employees JOIN departments
USING (department_id)               

/*
ON 절로 조인
    ON 절을 사용하여 조인 조건을 지정합니다.
*/
SELECT e.employees_id, e.last_name, e.department_id,
    d.department_id, d.location_id
FROM employees e JOIN departments d
ON (e.department_id = d.department_id);

SELECT e.employee_id, e.last_name,
    e.department_id, d.location_id
FROM employees e, departments d
WHERE e.department_id = d.department_id;

--조인에 추가 조건 적용
SELECT e.employee_id, e.last_name, e.department_id,
    d.department_id, d.location_id
FROM employees e JOIN departments d
ON e.department_id = d.department_id
AND e.manager_id = 149;

/*
테이블 자체 조인
    on 절을 사용하는 Self Join
*/

SELECT worker,last_name emp, manager.last_name mgr
FROM employees worker JOIN employees manager
ON worker.manager_id = manager.employee_id;


SELECT * FROM




--ON 절 사용하여 3-way 조인    기준이 되는 것을 정하자.
/*SELECT  e.employee_id,e.last_name, e.first_name, 1.city, d.department_name
FROM employees e 
JOIN departments d 
ON e.department_id = d.department_id
JOIN locations l 
ON d.location_id = 1.location_id; */



/* 
Nonequijoin 
    등호 연산자 외의 다른 연산자를 포함하는 조인 조건입니다.
*/
