use �������
CREATE table ������
(	������������ nvarchar(50) primary key,
	���� real unique not null,
	���������� int
);
CREATE table ���������
(	������������_����� nvarchar(20) primary key,
	����� nvarchar(50),
	���������_���� nvarchar(20)
);
CREATE table ������
(	�����_������ int primary key,
	������������_������ nvarchar(50) foreign key references ������(������������),
	����_������� real,
	���������� int,
	����_�������� date,
	�������� nvarchar(20) foreign key references ���������(������������_�����)
);

SELECT * FROM ���������