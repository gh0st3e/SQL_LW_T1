CREATE TRIGGER FAC_INSTEAD_OF on FACULTY instead of DELETE AS
	raiserror('� ���� ������ ������� ���������, ��� � ���� �������?!??!?!',10,1);
	RETURN;
GO

DELETE FROM FACULTY WHERE FACULTY='���'