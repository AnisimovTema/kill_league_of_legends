@echo off
chcp 65001 >nul
title Завершение процессов League of Legends
echo Завершаю процессы LoL...
taskkill /F /IM LeagueClientUx.exe /IM LeagueClientUxRender.exe /IM LeagueClient.exe /IM LeagueCrashHandler64.exe /IM "League of Legends.exe" 2>nul
echo Готово.
pause