SELECT * FROM Homework;

-- Отримання всіх записів Lesson, включаючи дані Homework
SELECT Lesson.*, Homework.name AS homework_name, Homework.description AS homework_description
FROM Lesson
JOIN Homework ON Lesson.homework_id = Homework.id;

-- Отримання всіх записів Lesson (включаючи дані Homework) відсортованих за часом оновлення
SELECT Lesson.*, Homework.name AS homework_name, Homework.description AS homework_description
FROM Lesson
JOIN Homework ON Lesson.homework_id = Homework.id
ORDER BY Lesson.updatedAt;

-- Отримання всіх записів Schedule, включаючи дані Lesson
SELECT schedule.*, Lesson.name AS lesson_name, Lesson.updatedAt AS lesson_updatedAt
FROM Schedule
JOIN Lesson ON Schedule.lesson_id = Lesson.id;

-- Отримання кількості Lesson для кожного Schedule
SELECT Schedule.name AS schedule_name, COUNT(Lesson.id) AS lesson_count
FROM Schedule
JOIN Lesson ON Schedule.lesson_id = Lesson.id
GROUP BY Schedule.name;
