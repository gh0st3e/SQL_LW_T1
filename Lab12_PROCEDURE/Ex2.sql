

ALTER PROCEDURE PSUBJECT @p varchar(20), @c int output
as begin
	declare @k int = (select count(*) from SUBJECT);
	print '��������� @p = ' + @p + ',@c = '+cast(@c as varchar(3));
	select SUBJECT_NAME,PULPIT from SUBJECT WHERE PULPIT=@p;
	set @c = @@ROWCOUNT;
	print @@ROWCOUNT
	return @k ;
	end;
go
set nocount on
declare @k int =0,@r int =0 ,@p varchar(20)='����';
exec @k = PSUBJECT @p,@c=@r output;
print '���-�� ������� �����: '+cast(@k as varchar(3));
print '��� �� ������� � ���������� ' + @p + ' = ' + cast(@r as varchar(3))
go
