USE UNIVER

set transaction isolation level READ UNCOMMITTED
begin transaction

-----t1----------

select @@SPID, 'insert FACULTY' '���������', *  --���������� ��������� ������������� ��������
from FACULTY WHERE FACULTY = '���';
select @@SPID, 'update PULPIT' '���������', *
from PULPIT WHERE FACULTY = '���';
commit;
-----t2----------

-----B-----------

begin transaction
select @@SPID
insert FACULTY VALUES ('���','�������������� ����������');
update PULPIT set FACULTY = '���' WHERE PULPIT = '����'

-----t1----------
-----t2----------

ROLLBACK;