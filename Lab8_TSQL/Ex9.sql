USE UNIVER

begin TRY
	DECLARE @A INT ='A'
end try
begin CATCH
	print '��� ��������� ������: ' + convert(varchar,ERROR_NUMBER())
	print '��������� �� ������: ' + ERROR_MESSAGE()
	PRINT '������ � ������� ������: ' + convert(varchar,ERROR_LINE())
	PRINT '��� ��������� ��� null: ' + ERROR_PROCEDURE()
	PRINT '������� ����������� ������: ' + convert(varchar,ERROR_SEVERITY())
	PRINT '����� ������: ' + convert(varchar,ERROR_STATE())
end CATCH
