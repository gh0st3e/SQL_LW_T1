USE UNIVER
GO

ALTER VIEW [���������� ������] WITH SCHEMABINDING

AS SELECT f.FACULTY [���������], COUNT(p.PULPIT) [���-�� ������]
FROM dbo.FACULTY f inner join dbo.PULPIT p on f.FACULTY=p.FACULTY
GROUP BY f.FACULTY
