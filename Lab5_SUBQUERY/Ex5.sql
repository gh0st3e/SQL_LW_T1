SELECT FACULTY.FACULTY_NAME FROM FACULTY
WHERE not exists (SELECT * FROM PULPIT
	WHERE PULPIT.FACULTY = FACULTY.FACULTY)