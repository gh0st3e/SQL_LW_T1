USE UNIVER
set transaction isolation level READ COMMITTED
begin transaction
select count(*) from PULPIT
where FACULTY = '��';

-----t1-------
-----t2-------

select 'update PULPIT' '���������', count(*)
from PULPIT where FACULTY = '��';
commit;

------B----

begin transaction

------t1-----

update PULPIT set FACULTY = '��' where PULPIT = '��';
commit;

------t2------


