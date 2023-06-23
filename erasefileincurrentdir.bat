# Skript kontroluje přítomnost argumentu pro velikost souborů (%~1). Pokud argument chybí, vypíše chybové hlášení a ukončí skript.

# Následuje nastavení proměnných limit a simulation na hodnoty získané z argumentů.

# Skript získává aktuální adresář pomocí proměnné %CD% a uloží jej do proměnné current_dir.

# Pokud je přítomný argument -s (simulace), skript vypíše informace o simulaci (aktuální adresář a limit velikosti souborů).

# Skript používá smyčku for k procházení všech souborů v aktuálním adresáři.

# Pro každý soubor se kontroluje, zda je jeho velikost (%%~zF, %%F představuje aktuální soubor) větší než zadaný limit.

# Pokud je velikost souboru větší, skript buď vypíše informaci o mazání souboru (v případě simulace) nebo provede skutečné mazání souboru pomocí příkazu del.

# Skript pokračuje v procházení a kontrole dalších souborů v adresáři.

# Na konci skriptu je použit příkaz endlocal k ukončení lokálního prostředí a návratu k původním nastavením proměnných.


@echo off
setlocal

REM Kontrola argumentů
if "%~1"=="" (
    echo Chybějící hodnota limitu velikosti souborů.
    echo Použití: %~nx0 [velikost] [-s]
    exit /b 1
)

REM Nastavení hodnot z argumentů
set "limit=%~1"
set "simulation=%~2"

REM Získání aktuálního adresáře
set "current_dir=%CD%"

REM Vypsání simulace
if "%simulation%"=="-s" (
    echo Simulace mazání souborů v adresáři: %current_dir%
    echo Limit velikosti souborů: %limit% B
    echo.
)

REM Procházení souborů v aktuálním adresáři
for %%F in ("%current_dir%\*") do (
    REM Kontrola, zda je soubor větší než limit
    if %%~zF GTR %limit% (
        REM Mazání souboru nebo výpis simulace
        if "%simulation%"=="-s" (
            echo Mazání souboru: %%~nxF
        ) else (
            echo Mazání souboru: %%~nxF
            del "%%F"
        )
    )
)

endlocal
