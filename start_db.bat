@echo off
chcp 65001 >nul
echo ========================================
echo    Пересоздание базы данных
echo ========================================
echo.

echo Остановка контейнеров...
docker-compose down

echo Удаление старых данных...
docker volume rm 12-01-hw_postgres_data 2>nul

echo Запуск с чистой базой...
docker-compose up -d

echo.
echo Ожидание инициализации (10 сек)...
timeout /t 10 /nobreak >nul

echo.
echo ========================================
echo          ИНФОРМАЦИЯ ДЛЯ ПОДКЛЮЧЕНИЯ
echo ========================================
echo.
echo 🐘 PostgreSQL:
echo    Host: localhost:5432
echo    Database: company_db
echo    User: postgres
echo    Password: password
echo.
echo 🌐 pgAdmin: http://localhost:8080
echo    Email: admin@admin.com
echo    Password: admin
echo.
echo ========================================
echo ✅ Готово!
echo.
pause
