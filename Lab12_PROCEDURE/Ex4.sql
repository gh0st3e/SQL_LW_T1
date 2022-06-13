USE UNIVER
go

ALTER PROCEDURE PAUDITORIUM_INSERT @a char(20), @n varchar(50), @c int = 0, @t char(10)
AS BEGIN
	DECLARE @rc int =1;
	BEGIN TRY
		INSERT INTO AUDITORIUM(AUDITORIUM,AUDITORIUM_TYPE,AUDITORIUM_CAPACITY,AUDITORIUM_NAME)
		VALUES(@a,@t,@c,@n);
		return @rc
	END TRY
	BEGIN CATCH
		print '����� ������ : '+cast(error_number() as varchar(6));
		print '��������� : '+ error_message()
		print '������� : '+cast(error_severity() as varchar(6));
		print '����� : '+cast(error_state() as varchar(8));
		print '����� ������ : '+cast(error_line() as varchar(8));
		if ERROR_PROCEDURE() is not null
		print '��� ��������� : ' + error_procedure();
		return -1
	END CATCH;
	END


go
declare @rc int;
exec @rc = PAUDITORIUM_INSERT @a='228-3',@n='228-3',@c=100,@t='��';
print '��� ������ : ' + cast(@rc as varchar(3));