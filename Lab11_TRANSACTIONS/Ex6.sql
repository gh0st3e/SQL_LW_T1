--------A---------
use UNIVER
set transaction isolation level REPEATABLE READ
begin transaction
select TEACHER FROM TEACHER
WHERE PULPIT = '����';

--------t1---------
--------t2---------

select case
    when TEACHER = '����' THEN 'insert TEACHER'
	else ' '
	end '���������', TEACHER
FROM TEACHER WHERE PULPIT = '����';
commit;

--- B ---	
begin transaction 	  
--- t1 --------------------
insert TEACHER values ('����', '������ ���� ��������', '�', '����');
commit; 
--- t2 --------------------

select * from TEACHER
