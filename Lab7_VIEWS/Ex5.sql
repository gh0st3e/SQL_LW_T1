USE UNIVER
DROP VIEW [����������]
GO
CREATE VIEW [����������]

AS SELECT TOP 150 s.SUBJECT [��� ��������], s.SUBJECT_NAME [�������� ��������], s.PULPIT [�������]
FROM SUBJECT s
ORDER BY s.SUBJECT

GO

SELECT * FROM [����������]