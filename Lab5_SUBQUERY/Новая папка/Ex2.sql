USE UNIVER
SELECT PULPIT.PULPIT_NAME
FROM PULPIT INNER JOIN FACULTY
ON PULPIT.FACULTY = FACULTY.FACULTY
WHERE FACULTY.FACULTY IN (SELECT PROFESSION.FACULTY FROM PROFESSION WHERE(PROFESSION.PROFESSION_NAME LIKE '%технология%' OR PROFESSION.PROFESSION_NAME LIKE '%технологии%'))

