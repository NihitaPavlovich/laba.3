CREATE TABLE department (
  id INT PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  faculty VARCHAR(50) NOT NULL
);

CREATE TABLE student_group (
  id INT PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  department_id INT,
  FOREIGN KEY (department_id) REFERENCES department(id)
);

CREATE TABLE student (
  id INT PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  passport VARCHAR(10) NOT NULL,
  group_id INT,
  FOREIGN KEY (group_id) REFERENCES student_group(id)
);

INSERT INTO department (id, name, faculty) VALUES
  (1, 'Кафедра ИТ', 'Факультет ИТ'),
  (2, 'Кафедра кибер безопасности', 'Факультет КиБ');

INSERT INTO student_group (id, name, department_id) VALUES
  (1, 'БИБ2205', 1),
  (2, 'КиБ2206', 1),
  (3, 'БВТ2206', 2),
  (4, 'БВТ2207', 2);

INSERT INTO student (id, name, passport, group_id) VALUES
  (1, 'Анастасия Симонова', 'AB123456', 1),
  (2, 'Кирилл Заболоцкий', 'CD789012', 1),
  (3, 'Семен Миносов', 'EF345678', 1),
  (4, 'Наталья Будапешт', 'GH901234', 1),
  (5, 'Сэм Вилсон', 'IJ567890', 1),
  (6, 'Дарья Воронина', 'KL123456', 2),
  (7, 'Мирон Воробьев', 'MN789012', 2),
  (8, 'Егор Соловьев', 'OP345678', 2),
  (9, 'Антон Смирнов', 'QR901234', 2),
  (10, 'Максим Ембулатов', 'ST567890', 2),
  (11, 'Кристина Шель', 'UV123456', 3),
  (12, 'Милана Жван', 'WX789012', 3),
  (13, 'Оливия Пирс', 'YZ345678', 3),
  (14, 'Максим Сигуре', 'AB901234', 3),
  (15, 'Даниил Комаров', 'CD567890', 3),
  (16, 'Никита Лозинский', 'EF123456', 4),
  (17, 'Егор Коршунов', 'GH789012', 4),
  (18, 'Галим Шарапов', 'IJ345678', 4),
  (19, 'Мария Фролова', 'KL901234', 4),
  (20, 'Виталий Недопекин', 'MN567890', 4);
  
  SELECT department_id FROM student_group;