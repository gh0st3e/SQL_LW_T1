USE UNIVER
DROP VIEW [���������� ���������]
GO
CREATE VIEW [���������� ���������]

AS SELECT a.AUDITORIUM_TYPE [���],a.AUDITORIUM [�������� ���������]
FROM AUDITORIUM a
WHERE a.AUDITORIUM_TYPE LIKE '��' WITH CHECK OPTION

GO
INSERT [���������� ���������] values('��','2-4')
SELECT * FROM [���������� ���������]