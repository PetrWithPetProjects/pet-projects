@echo off
chcp 65001 > nul
echo ========================================
echo       ЗАПУСК TO-DO LIST
echo ========================================
echo.

REM Укажи путь к своей папке с проектом
cd /d "C:\Users\Петр\source\repos\todo\todo"

echo 1. Запускаю сервер...
start "To-Do List Server" python todo.py

echo 2. Жду 3 секунды пока сервер запустится...
timeout /t 3 /nobreak > nul

echo 3. Открываю браузер...
start "" "http://localhost:5000"

echo.
echo ========================================
echo ВСЁ ЗАПУЩЕНО!
echo.
echo  Сервер работает в отдельном окне
echo  Браузер открыт с приложением
echo.
echo  Чтобы закрыть приложение:
echo  1. Закрой это окно
echo  2. Закрой окно "To-Do List Server"
echo  3. Закрой браузер
echo ========================================
echo.
pause