/*���ϸ�: ex07-select-join.sql

JOIN 
    SQL���� �� �� �̻��� ���̺��� ���õ� ����� �����ϱ� ���� �����Դϴ�.
    
*/

/*
Natural Join
    �� ���̺��� ������ ������ �̸��� ��ġ�ϴ� ���� ������� �ڵ����� 
    ���̺��� ������ �� �ֽ��ϴ�.
*/ 

SELECT department_id, department_name,
        location_id, city
FROM departments
NATURAL JOIN locations;

/* 
USING ���� ����
    ��������� ������ �����ϰ����ϴ� ���� �����ݴϴ�.
*/ 
SELECT employee_id, last_name,
    location_id, department_id
FROM employees JOIN departments
USING (department_id)               

/*
ON ���� ����
    ON ���� ����Ͽ� ���� ������ �����մϴ�.
*/
SELECT e.employees_id, e.last_name, e.department_id,
    d.department_id, d.location_id
FROM employees e JOIN departments d
ON (e.department_id = d.department_id);

SELECT e.employee_id, e.last_name,
    e.department_id, d.location_id
FROM employees e, departments d
WHERE e.department_id = d.department_id;

--���ο� �߰� ���� ����
SELECT e.employee_id, e.last_name, e.department_id,
    d.department_id, d.location_id
FROM employees e JOIN departments d
ON e.department_id = d.department_id
AND e.manager_id = 149;

/*
���̺� ��ü ����
    on ���� ����ϴ� Self Join
*/

SELECT worker,last_name emp, manager.last_name mgr
FROM employees worker JOIN employees manager
ON worker.manager_id = manager.employee_id;


SELECT * FROM




--ON �� ����Ͽ� 3-way ����    ������ �Ǵ� ���� ������.
/*SELECT  e.employee_id,e.last_name, e.first_name, 1.city, d.department_name
FROM employees e 
JOIN departments d 
ON e.department_id = d.department_id
JOIN locations l 
ON d.location_id = 1.location_id; */



/* 
Nonequijoin 
    ��ȣ ������ ���� �ٸ� �����ڸ� �����ϴ� ���� �����Դϴ�.
*/
