USE UNIVER
DROP VIEW [���������]
GO
CREATE VIEW [���������]

AS SELECT a.AUDITORIUM_TYPE [���],a.AUDITORIUM [�������� ���������]
FROM AUDITORIUM a
WHERE a.AUDITORIUM_TYPE LIKE '��'

go
INSERT [���������] values('��','220-4')
SELECT * FROm [���������] 