USE UNIVER
GO

ALTER PROCEDURE PADUDITORIUM_INSERTX @a char(20), @n varchar(50), @c int = 0, @t char(10), @tn varchar(50) AS
	BEGIN
		DECLARE @rc int = 1;
		BEGIN TRY
			SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;
			BEGIN TRAN
			INSERT INTO AUDITORIUM_TYPE(AUDITORIUM_TYPE,AUDITORIUM_TYPENAME) VALUES(@t,@tn);
			WAITFOR DELAY '00:00:01'
			
			EXEC @rc =  PAUDITORIUM_INSERT @a,@t,@c,@n;
			COMMIT TRAN;
			RETURN @rc;
			
		END TRY
		BEGIN CATCH
			print '����� ������ : '+cast(error_number() as varchar(6));
			print '��������� : '+ error_message()
			print '������� : '+cast(error_severity() as varchar(6));
			print '����� : '+cast(error_state() as varchar(8));
			print '����� ������ : '+cast(error_line() as varchar(8));
			if ERROR_PROCEDURE() is not null
			print '��� ��������� : ' + error_procedure();
			if @@TRANCOUNT > 0 ROLLBACK TRAN;
			return -1
		END CATCH
	END
GO

DECLARE @rc int;
EXEC @rc = PADUDITORIUM_INSERTX @a = '667-6',@t='��', @n='667-6',@c=67,@tn='��������';
print cast(@rc as varchar(3));