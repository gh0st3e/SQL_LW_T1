USE UNIVER
DECLARE @A_Capacity int = (SELECT SUM(AUDITORIUM_CAPACITY) as int from AUDITORIUM)

if @A_Capacity	> 200
	begin

	DECLARE @avg_cap numeric(8,0), @count_aud numeric(8,0), @under_avg_cap numeric(8,0);

	SET @count_aud = (SELECT COUNT(AUDITORIUM) from AUDITORIUM)
	SET @avg_cap = (SELECT AVG(AUDITORIUM_CAPACITY) from AUDITORIUM)
	SET @under_avg_cap = (SELECT COUNT(AUDITORIUM) from AUDITORIUM WHERE AUDITORIUM.AUDITORIUM_CAPACITY<@avg_cap)

	print '����� ���-�� ���� > 200'
	print '���������� ' + convert(varchar,@count_aud)
	print '������� ����������� ' + convert(varchar,@avg_cap)
	print '���-�� ���������, ����������� ������ ������� ' + convert(varchar,@under_avg_cap)
	print '������� ' + cast(@under_avg_cap/@count_aud*100 as varchar)
	end
else 
	print'����� ���-�� ���� ' + convert (varchar,@A_capacity)