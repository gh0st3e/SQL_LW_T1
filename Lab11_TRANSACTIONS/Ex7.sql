USE UNIVER
--------A---------
set transaction isolation level SERIALIZABLE
begin transaction
delete TEACHER where TEACHER = '���';
delete TEACHER where TEACHER = '��';
insert TEACHER values ('��', '������� �������� ����������', '�', '��');
update TEACHER set TEACHER = '���' where TEACHER = '��';
select TEACHER from TEACHER where PULPIT = '��';

--------t1---------
select TEACHER from TEACHER where PULPIT = '��';
--------t2---------
commit;

--------B---------
USE UNIVER
begin transaction
delete TEACHER where TEACHER = '���';
insert TEACHER values ('���', '������� �������� ����������', '�', '��');
update TEACHER set TEACHER = '����' where TEACHER = '���';
select TEACHER from TEACHER where PULPIT = '��';

--------t1---------
commit; 
select TEACHER from TEACHER where PULPIT = '��';

--------t2---------
rollback

