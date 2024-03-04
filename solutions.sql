-- 1. Selezionare tutti gli studenti nati nel 1990 (160)
SELECT * 
FROM `students`
WHERE YEAR(`date_of_birth`) = 1990;

-- 2. Selezionare tutti i corsi che valgono più di 10 crediti (479)
SELECT * 
FROM `courses`
WHERE `cfu` > 10;

-- 3. Selezionare tutti gli studenti che hanno più di 30 anni
SELECT * 
FROM `students`
WHERE 2024 - YEAR(`date_of_birth`) > 30;

-- 4. Selezionare tutti i corsi del primo semestre del primo anno di un qualsiasi corso di laurea (286)
SELECT * 
FROM `courses`
WHERE `period` = 'I semestre'
AND `year` = 1;

-- 5. Selezionare tutti gli appelli d'esame che avvengono nel pomeriggio (dopo le 14) del 20/06/2020 (21)
SELECT * 
FROM `exams`
WHERE `date` = '2020-06-20'
AND TIME(`hour`) > '14:00:00';

-- 6. Selezionare tutti i corsi di laurea magistrale (38)
SELECT * 
FROM `degrees`
WHERE `level` = 'magistrale';

-- 7. Da quanti dipartimenti è composta l'università? (12)
SELECT COUNT(*) AS `number_departments`
FROM `departments`;


-- 8. Quanti sono gli insegnanti che non hanno un numero di telefono? (50)
SELECT COUNT(`phone`) AS 'teachers_without_phone'
FROM `teachers`;

-- 9. Contare quanti iscritti ci sono stati ogni anno
SELECT COUNT(*) AS `total_students`, YEAR(`enrolment_date`) AS `enrolment_year` 
FROM `students` 
GROUP BY `enrolment_year`;

-- 10. Contare gli insegnanti che hanno l'ufficio nello stesso edificio
SELECT COUNT(*) AS `total_teachers`, `office_address`
FROM `teachers`
GROUP BY `office_address`;

-- 11. Calcolare la media dei voti di ogni appello d'esame
SELECT ROUND(AVG(`vote`), 0) AS `average_vote`, `exam_id`  
FROM `exam_student`
GROUP BY `exam_id`;

--12. Contare quanti corsi di laurea ci sono per ogni dipartimento
SELECT COUNT(*) AS `total_degrees`, `department_id` 
FROM `degrees`
GROUP BY `department_id`;

--13. Selezionare tutti gli studenti iscritti al Corso di Laurea in Economia
SELECT S.`id`, S.`name` AS 'student_name', S.`surname` AS 'student_surname',  D.`name` AS 'degree_name'
FROM `students` AS S
JOIN `degrees` AS D
ON D.`id` = S.`degree_id`
WHERE D.`name` = 'Corso di Laurea in Economia';

--14. Selezionare tutti i Corsi di Laurea del Dipartimento di Neuroscienze
SELECT DEG.`id` AS 'degrees_id', DEG.`name` AS 'degrees_name', DEP.`name` AS 'department_name' 
FROM `degrees` AS DEG
JOIN `departments` AS DEP
ON DEP.`id` = DEG.`department_id`
WHERE DEP.`name` = 'Dipartimento di Neuroscienze';