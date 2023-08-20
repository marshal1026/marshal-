/*
DCL(Data Control Language)
    DCL�� ���̺� �����͸� ������ �� �ʿ��� ��ȯ�� �����ϴ� ��ɾ�
    
���� Ű����
    CONNECT : �����ͺ��̽��� �����ϴ� ��ȯ�� ����
    RESOUCE : ���̺�, ������ ���ν��� ���� ������ �� �ִ� ��ȯ�� �ο��մϴ�.
    ALTER, DROP : ��ü�� ���� �Ǵ� ���� ��ȯ�� �����մϴ�.
    DBA : �����ͺ��̽��� �����ڷμ� �ý����� ������ ������ �� �ִ� ��ȯ�� �ο��մϴ�.
    
*/

ALTER SESSION SET "_ORACLE_SCRIPT'=true;

--����� �����ϱ�

CREATE USER scott2 IDENTIFIED BY tiger;  --������ �������, ��ȯ�� �־�� ��

--grant ���� ��ȯ�ֱ�
GRANT CREATE SESSION TO scott;
GRANT CONNECT TO scott2;

--OBJECT �����ֱ�
GRANT CREATIVE SEQUENCE TO scott2;
GRANT CREATIVE SYNONYM TO scott2;
GRANT CREATIVE TABLE TO scott2;
GRANT CREATIVE PROCEDURE TO scott2;
GRANT CREATIVE VIEW TO scott2;

-- ��� ��ȯ�ֱ�
GRANT CONNECT, DBA, RESOURCE TO scott2;

--��ȯ �����ϱ�
REVOKE CONNECT, DBA, RESOURCE FROM scott2;

--����� ��й�ȣ ����
ALTER USER scott2 IDENTIFIED BY tiger2;


/*
ROLE - ���� �׷�
*/ 

--role �������
CREATIVE ROLE role01;

--role ���� �Ҵ�
GRANT CREATE SESSION, CREATE TABLE, INSERT ANY TABLE TO role01;

--����ڿ��� role �ο�
GRANT role01 TO scott2;
REVOKE role01 FROM scott2;

--����� �����ϱ�
DROP USER scott2;
DROP USER scott2 CASCADE;



--