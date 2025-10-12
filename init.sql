-- База данных company_db уже создана через переменную окружения POSTGRES_DB
-- Подключение к базе данных
\c company_db;

-- Создание таблицы People (Люди)
CREATE TABLE people (
    "id" SERIAL PRIMARY KEY,
    "name" VARCHAR(100) NOT NULL,
    "surname" VARCHAR(100) NOT NULL,
    "patronymic" VARCHAR(100),
    "full_name" VARCHAR(255) NOT NULL
);

-- Создание таблицы Department_Types (Типы отделов)
CREATE TABLE department_types (
    "id" SERIAL PRIMARY KEY,
    "name" VARCHAR(100) NOT NULL UNIQUE
);

-- Создание таблицы Departments (Отделы)
CREATE TABLE departments (
    "id" SERIAL PRIMARY KEY,
    "name" VARCHAR(200) NOT NULL,
    "type_id" INTEGER REFERENCES department_types("id") ON DELETE SET NULL
);

-- Создание таблицы Positions (Должности)
CREATE TABLE positions (
    "id" SERIAL PRIMARY KEY,
    "name" VARCHAR(200) NOT NULL UNIQUE
);

-- Создание таблицы Projects (Проекты)
CREATE TABLE projects (
    "id" SERIAL PRIMARY KEY,
    "name" VARCHAR(200) NOT NULL UNIQUE
);

-- Создание таблицы Offices (Офисы)
CREATE TABLE offices (
    "id" SERIAL PRIMARY KEY,
    "address" TEXT NOT NULL
);

-- Создание таблицы Employees (Сотрудники)
CREATE TABLE employees (
    "id" SERIAL PRIMARY KEY,
    "person_id" INTEGER REFERENCES people("id") ON DELETE CASCADE,
    "employment_date" DATE NOT NULL,
    "salary" DECIMAL(10,2) NOT NULL,
    "department_id" INTEGER REFERENCES departments("id") ON DELETE SET NULL,
    "position_id" INTEGER REFERENCES positions("id") ON DELETE SET NULL,
    "project_id" INTEGER REFERENCES projects("id") ON DELETE SET NULL,
    "office_id" INTEGER REFERENCES offices("id") ON DELETE SET NULL
);

-- Добавление комментариев к таблицам
COMMENT ON TABLE people IS 'Таблица с информацией о людях (сотрудниках)';
COMMENT ON TABLE department_types IS 'Типы отделов компании';
COMMENT ON TABLE departments IS 'Отделы компании';
COMMENT ON TABLE positions IS 'Должности в компании';
COMMENT ON TABLE projects IS 'Проекты компании';
COMMENT ON TABLE offices IS 'Офисы компании';
COMMENT ON TABLE employees IS 'Основная таблица сотрудников с их рабочими данными';
