USE UNIVER
DROP VIEW [���������� ������]
GO
CREATE VIEW [���������� ������]

AS SELECT f.FACULTY [���������], COUNT(p.PULPIT) [���-�� ������]
FROM FACULTY f inner join PULPIT p on f.FACULTY=p.FACULTY
GROUP BY f.FACULTY

go
INSERT [���������� ������] values('��',2)
SELECT * FROm [���������� ������]