USE UNIVER
EXEC SP_HELPINDEX'AUDITORIUM'

GO
USE UNIVER
CREATE TABLE #LAB9
(
	TIND int,
	TVCHAR varchar(100)
);

CHECKPOINT;
DBCC DROPCLEANBUFFERS;

set nocount on
DECLARE @i int = 0;
while @i<1000
begin
INSERT #LAB9 VALUES (@i,'obama-chernojopiy')
IF @i % 100 = 0 print(@i)
SET @i=@i+1;
end

SELECT * FROM #LAB9 WHERE TIND between 0 and 999 ORDER By TIND


DROP INDEX #LAB9_CLI on #LAB9
CREATE CLUSTERED INDEX #LAB9_CLI on #LAB9(TIND asc)

