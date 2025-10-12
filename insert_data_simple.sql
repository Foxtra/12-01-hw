
-- Очистка существующих данных
TRUNCATE TABLE employees RESTART IDENTITY CASCADE;
TRUNCATE TABLE people RESTART IDENTITY CASCADE;
TRUNCATE TABLE departments RESTART IDENTITY CASCADE;
TRUNCATE TABLE department_types RESTART IDENTITY CASCADE;
TRUNCATE TABLE positions RESTART IDENTITY CASCADE;
TRUNCATE TABLE projects RESTART IDENTITY CASCADE;
TRUNCATE TABLE offices RESTART IDENTITY CASCADE;

-- 1. Заполнение типов подразделений
INSERT INTO department_types ("name") VALUES 
('Отдел'),
('Группа'),
('Департамент');

-- 2. Заполнение должностей
INSERT INTO positions ("name") VALUES 
('ведущий QA инженер'),
('специалист'),
('специалист по персоналу'),
('ведущий разработчик'),
('ведущий инженер'),
('руководель проектов по интеграции'),
('старший инженер'),
('инженер'),
('руководель сервисных проектов'),
('разработчик'),
('старший разработчик'),
('ведущий архектор'),
('старший архектор'),
('руководель проектов'),
('руководель направления разработки');

-- 3. Заполнение офисов
INSERT INTO offices ("address") VALUES 
('Приморский край, г. Владивосток, ул Нижнепортовая, д. 1'),
('Краснодарский край, г. Краснодар, ул Путевая, д. 1'),
('Ростовская обл, г. Ростов-на-Дону, ул 2-я Краснодарская, д. 135/2');

-- 4. Заполнение проектов
INSERT INTO projects ("name") VALUES 
('Итэлма Инженерный корпус'),
('Севастополь ТВ'),
('Кристалл Доп объем'),
('Ростелеком. Гончарная,ВТБ Башня PM'),
('Газпромбанк Бирюзова'),
('Гпб Оазис Кабинет З.'),
('Комплекс Pine Creek Доп работы'),
('Сбербанк Нижний Новгород'),
('Рособоронэкспорт _ PM'),
('Ростелеком Академик'),
('Оформление планировочных Итэлма'),
('ТМК. Сколково'),
('16120_1_TUL (ДС5)'),
('ИКСпФОН (РД)'),
('Европлан'),
('Газпромбанк Аквамарин АН,Гурзуф'),
('Департамент финансов и кадров'),
('Пансионат Дельфин (Крым)'),
('Ледовая Арена Кристалл РД АИ'),
('Сколково'),
('Билайн. Ставрополь,ТПУ Томск'),
('РТИ'),
('ИТЭЛМА'),
('Билайн. Нижний Новгород,Итэлма АМО ЗИЛ'),
('Общественное пространство Норильск'),
('17110_2_TMK'),
('Открытие Спартаковская'),
('ВТБ Башня PM');

-- 5. Заполнение отделов
INSERT INTO departments ("name", "type_id") VALUES 
('Центр компетенций QA Москва', 1), -- Отдел
('Группа сервисной поддержки', 2), -- Группа
('Центр разработки продуктов для digital-маркетинга', 1), -- Отдел
('Департамент Техническая поддержка', 3), -- Департамент
('Группа CRM 2', 2), -- Группа
('Группа первичной диагностики №2', 2), -- Группа
('Группа Billing', 2), -- Группа
('Группа DOC', 2), -- Группа
('Группа ODS', 2), -- Группа
('Группа Rating', 2), -- Группа
('Центр управления сервисами', 1), -- Отдел
('Департамент FBF', 3), -- Департамент
('Центр анализа и архектуры Medio', 1), -- Отдел
('Центр разработки Medio', 1), -- Отдел
('Группа инфраструктуры', 2), -- Группа
('Департамент Rating and Charging', 3); -- Департамент

-- 6. Заполнение людей и сотрудников
-- Суханова Арина Руслановна
INSERT INTO people ("name", "surname", "patronymic", "full_name") VALUES ('Арина', 'Суханова', 'Руслановна', 'Суханова Арина Руслановна');
INSERT INTO employees ("person_id", "employment_date", "salary", "department_id", "position_id", "project_id", "office_id") 
VALUES (1, '2020-01-13', 103333.00, 1, 1, 1, 1);

-- Баранов Георгий Александрович
INSERT INTO people ("name", "surname", "patronymic", "full_name") VALUES ('Георгий', 'Баранов', 'Александрович', 'Баранов Георгий Александрович');
INSERT INTO employees ("person_id", "employment_date", "salary", "department_id", "position_id", "project_id", "office_id") 
VALUES (2, '2031-02-17', 12130.00, 2, 2, 2, 2);

-- Вишневская Виктория Матвеевна
INSERT INTO people ("name", "surname", "patronymic", "full_name") VALUES ('Виктория', 'Вишневская', 'Матвеевна', 'Вишневская Виктория Матвеевна');
INSERT INTO employees ("person_id", "employment_date", "salary", "department_id", "position_id", "project_id", "office_id") 
VALUES (3, '2017-11-17', 12130.00, 2, 3, 3, 2);

-- Алексеев Константин Николаевич
INSERT INTO people ("name", "surname", "patronymic", "full_name") VALUES ('Константин', 'Алексеев', 'Николаевич', 'Алексеев Константин Николаевич');
INSERT INTO employees ("person_id", "employment_date", "salary", "department_id", "position_id", "project_id", "office_id") 
VALUES (4, '2020-06-20', 12366.00, 2, 3, 4, 3);

-- Лаптев Владислав Даниилович
INSERT INTO people ("name", "surname", "patronymic", "full_name") VALUES ('Владислав', 'Лаптев', 'Даниилович', 'Лаптев Владислав Даниилович');
INSERT INTO employees ("person_id", "employment_date", "salary", "department_id", "position_id", "project_id", "office_id") 
VALUES (5, '2016-06-22', 71000.00, 3, 4, 5, 3);

-- Коновалов Даниил Матвеевич
INSERT INTO people ("name", "surname", "patronymic", "full_name") VALUES ('Даниил', 'Коновалов', 'Матвеевич', 'Коновалов Даниил Матвеевич');
INSERT INTO employees ("person_id", "employment_date", "salary", "department_id", "position_id", "project_id", "office_id") 
VALUES (6, '2013-11-26', 62000.00, 3, 4, 6, 2);

-- Фролов Тимур Тимофеевич
INSERT INTO people ("name", "surname", "patronymic", "full_name") VALUES ('Тимур', 'Фролов', 'Тимофеевич', 'Фролов Тимур Тимофеевич');
INSERT INTO employees ("person_id", "employment_date", "salary", "department_id", "position_id", "project_id", "office_id") 
VALUES (7, '2017-03-22', 55000.00, 3, 5, 7, 3);

-- Левина Елизавета Артёмовна
INSERT INTO people ("name", "surname", "patronymic", "full_name") VALUES ('Елизавета', 'Левина', 'Артёмовна', 'Левина Елизавета Артёмовна');
INSERT INTO employees ("person_id", "employment_date", "salary", "department_id", "position_id", "project_id", "office_id") 
VALUES (8, '2013-03-10', 33000.00, 4, 6, 8, 2);

-- Сафонов Леонид Максимович
INSERT INTO people ("name", "surname", "patronymic", "full_name") VALUES ('Леонид', 'Сафонов', 'Максимович', 'Сафонов Леонид Максимович');
INSERT INTO employees ("person_id", "employment_date", "salary", "department_id", "position_id", "project_id", "office_id") 
VALUES (9, '2013-11-23', 60615.00, 5, 5, 9, 2);

-- Журавлев Денис Георгиевич
INSERT INTO people ("name", "surname", "patronymic", "full_name") VALUES ('Денис', 'Журавлев', 'Георгиевич', 'Журавлев Денис Георгиевич');
INSERT INTO employees ("person_id", "employment_date", "salary", "department_id", "position_id", "project_id", "office_id") 
VALUES (10, '2016-03-26', 33300.00, 5, 7, 10, 2);

-- Ильина Злата Игоревна
INSERT INTO people ("name", "surname", "patronymic", "full_name") VALUES ('Злата', 'Ильина', 'Игоревна', 'Ильина Злата Игоревна');
INSERT INTO employees ("person_id", "employment_date", "salary", "department_id", "position_id", "project_id", "office_id") 
VALUES (11, '2016-05-13', 33250.00, 5, 7, 11, 2);

-- Дементьев Лев Маркович
INSERT INTO people ("name", "surname", "patronymic", "full_name") VALUES ('Лев', 'Дементьев', 'Маркович', 'Дементьев Лев Маркович');
INSERT INTO employees ("person_id", "employment_date", "salary", "department_id", "position_id", "project_id", "office_id") 
VALUES (12, '2013-03-23', 31000.00, 6, 8, 12, 2);

-- Шилов Глеб Николаевич
INSERT INTO people ("name", "surname", "patronymic", "full_name") VALUES ('Глеб', 'Шилов', 'Николаевич', 'Шилов Глеб Николаевич');
INSERT INTO employees ("person_id", "employment_date", "salary", "department_id", "position_id", "project_id", "office_id") 
VALUES (13, '2017-01-31', 32000.00, 7, 7, 13, 2);

-- Еремеев Денис Степанович
INSERT INTO people ("name", "surname", "patronymic", "full_name") VALUES ('Денис', 'Еремеев', 'Степанович', 'Еремеев Денис Степанович');
INSERT INTO employees ("person_id", "employment_date", "salary", "department_id", "position_id", "project_id", "office_id") 
VALUES (14, '2017-10-23', 60300.00, 8, 5, 14, 2);

-- Тарасова Анастасия Даниловна
INSERT INTO people ("name", "surname", "patronymic", "full_name") VALUES ('Анастасия', 'Тарасова', 'Даниловна', 'Тарасова Анастасия Даниловна');
INSERT INTO employees ("person_id", "employment_date", "salary", "department_id", "position_id", "project_id", "office_id") 
VALUES (15, '2015-12-31', 33752.00, 9, 7, 15, 2);

-- Высоцкая Ольга Константиновна
INSERT INTO people ("name", "surname", "patronymic", "full_name") VALUES ('Ольга', 'Высоцкая', 'Константиновна', 'Высоцкая Ольга Константиновна');
INSERT INTO employees ("person_id", "employment_date", "salary", "department_id", "position_id", "project_id", "office_id") 
VALUES (16, '2017-03-16', 55000.00, 10, 8, 16, 2);

-- Богданова Софья Никитична
INSERT INTO people ("name", "surname", "patronymic", "full_name") VALUES ('Софья', 'Богданова', 'Никитична', 'Богданова Софья Никитична');
INSERT INTO employees ("person_id", "employment_date", "salary", "department_id", "position_id", "project_id", "office_id") 
VALUES (17, '2017-01-31', 56000.00, 10, 7, 17, 2);

-- Новиков Марк Евгеньевич
INSERT INTO people ("name", "surname", "patronymic", "full_name") VALUES ('Марк', 'Новиков', 'Евгеньевич', 'Новиков Марк Евгеньевич');
INSERT INTO employees ("person_id", "employment_date", "salary", "department_id", "position_id", "project_id", "office_id") 
VALUES (18, '2013-07-10', 65600.00, 11, 9, 18, 2);

-- Гусева Екатерина Марковна
INSERT INTO people ("name", "surname", "patronymic", "full_name") VALUES ('Екатерина', 'Гусева', 'Марковна', 'Гусева Екатерина Марковна');
INSERT INTO employees ("person_id", "employment_date", "salary", "department_id", "position_id", "project_id", "office_id") 
VALUES (19, '2017-07-16', 60000.00, 12, 10, 19, 2);

-- Воробьев Герман Ильич
INSERT INTO people ("name", "surname", "patronymic", "full_name") VALUES ('Герман', 'Воробьев', 'Ильич', 'Воробьев Герман Ильич');
INSERT INTO employees ("person_id", "employment_date", "salary", "department_id", "position_id", "project_id", "office_id") 
VALUES (20, '2020-07-13', 136000.00, 12, 11, 20, 2);

-- Григорьева Вера Константиновна
INSERT INTO people ("name", "surname", "patronymic", "full_name") VALUES ('Вера', 'Григорьева', 'Константиновна', 'Григорьева Вера Константиновна');
INSERT INTO employees ("person_id", "employment_date", "salary", "department_id", "position_id", "project_id", "office_id") 
VALUES (21, '2012-03-10', 135200.00, 13, 12, 21, 2);

-- Осипов Андрей Алексеевич
INSERT INTO people ("name", "surname", "patronymic", "full_name") VALUES ('Андрей', 'Осипов', 'Алексеевич', 'Осипов Андрей Алексеевич');
INSERT INTO employees ("person_id", "employment_date", "salary", "department_id", "position_id", "project_id", "office_id") 
VALUES (22, '2012-03-23', 116600.00, 13, 13, 22, 2);

-- Назарова Мария Альбертовна
INSERT INTO people ("name", "surname", "patronymic", "full_name") VALUES ('Мария', 'Назарова', 'Альбертовна', 'Назарова Мария Альбертовна');
INSERT INTO employees ("person_id", "employment_date", "salary", "department_id", "position_id", "project_id", "office_id") 
VALUES (23, '2017-05-23', 151600.00, 14, 4, 23, 2);

-- Лаптева Анна Максимовна
INSERT INTO people ("name", "surname", "patronymic", "full_name") VALUES ('Анна', 'Лаптева', 'Максимовна', 'Лаптева Анна Максимовна');
INSERT INTO employees ("person_id", "employment_date", "salary", "department_id", "position_id", "project_id", "office_id") 
VALUES (24, '2017-01-25', 33000.00, 14, 10, 24, 2);

-- Ситникова Эмилия Николаевна
INSERT INTO people ("name", "surname", "patronymic", "full_name") VALUES ('Эмилия', 'Ситникова', 'Николаевна', 'Ситникова Эмилия Николаевна');
INSERT INTO employees ("person_id", "employment_date", "salary", "department_id", "position_id", "project_id", "office_id") 
VALUES (25, '2013-03-30', 132132.00, 14, 11, 25, 2);

-- Кузнецова Любовь Даниэльевна
INSERT INTO people ("name", "surname", "patronymic", "full_name") VALUES ('Любовь', 'Кузнецова', 'Даниэльевна', 'Кузнецова Любовь Даниэльевна');
INSERT INTO employees ("person_id", "employment_date", "salary", "department_id", "position_id", "project_id", "office_id") 
VALUES (26, '2013-07-27', 75300.00, 14, 11, 26, 2);

-- Трофимов Вячеслав Романович
INSERT INTO people ("name", "surname", "patronymic", "full_name") VALUES ('Вячеслав', 'Трофимов', 'Романович', 'Трофимов Вячеслав Романович');
INSERT INTO employees ("person_id", "employment_date", "salary", "department_id", "position_id", "project_id", "office_id") 
VALUES (27, '2013-07-26', 67100.00, 15, 5, 27, 2);

-- Пантелеева Есения Серафимовна
INSERT INTO people ("name", "surname", "patronymic", "full_name") VALUES ('Есения', 'Пантелеева', 'Серафимовна', 'Пантелеева Есения Серафимовна');
INSERT INTO employees ("person_id", "employment_date", "salary", "department_id", "position_id", "project_id", "office_id") 
VALUES (28, '2017-03-13', 76550.00, 16, 14, 4, 2);

-- Зуев Георгий Ильич
INSERT INTO people ("name", "surname", "patronymic", "full_name") VALUES ('Георгий', 'Зуев', 'Ильич', 'Зуев Георгий Ильич');
INSERT INTO employees ("person_id", "employment_date", "salary", "department_id", "position_id", "project_id", "office_id") 
VALUES (29, '2012-11-21', 135000.00, 16, 15, 20, 2);

-- Вывод статистики по заполненным данным
SELECT 'DepartmentTypes' as TableName, COUNT(*) as RecordCount FROM DepartmentTypes
UNION ALL
SELECT 'Departments', COUNT(*) FROM Departments
UNION ALL
SELECT 'Positions', COUNT(*) FROM Positions
UNION ALL
SELECT 'Projects', COUNT(*) FROM Projects
UNION ALL
SELECT 'Offices', COUNT(*) FROM Offices
UNION ALL
SELECT 'People', COUNT(*) FROM People
UNION ALL
SELECT 'Employees', COUNT(*) FROM Employees
ORDER BY TableName;
