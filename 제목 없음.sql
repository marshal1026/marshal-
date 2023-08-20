/* 
���ϸ�: ex10-select-with.sql

WITH �� 
    WITH ���� �������� ����� �ӽ÷� �����ϰ� ����� �� �ִ� ����Դϴ�. 
    �������̺�ǥ���� CTE(Common Table EXpression)
    
    �ַ� ������ ������ �����ϰ� �ۼ��ϰų� �������� ���̴µ� Ȱ��˴ϴ�.
    
*/ 

--�μ��� ��� �޿��� ����ϴ� ����
WITH AvgSalByDept AS (
    SELECT
        department_id,
        AVG(salary) AS avgsalary
    FROM employees
    GROUP BY department_id
)
SELECT d.department_name, AvgSalByDept.avgsalary
FROM departments d
JOIN AvgSalByDept
ON d.department_id = AvgSalByDept.department_id
AND d.department_id = 10

UNION ALL

SELECT d.department_name, AvgSalByDept.avgsalary



WITH RescursiveCTE (id, name, manager_id, depth) AS (
    SELECT employee_id, last_name, manager_id, 0
    FROM employees
    WHERE manager_id IS NULL --�ֻ��� �Ŵ���
    UNION ALL 
    SELECT e.employee_id, e.last_name, e.manager_id, re.depth + 1
    FROM employees e 
    INNER JOIN RecursiveCTE re ON e.manager_id = re.id
)
SELECT id, name, manager_id, depth
FROM RecursiveCTE
;




