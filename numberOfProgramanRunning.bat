# Skript zkontroluje, zda je první argument (%~1) prázdný. Pokud je prázdný, použije příkaz tasklist s parametrem find /c "winword.exe", který spočítá počet běžících procesů s názvem "winword.exe".

# Pokud je první argument zadán, použije příkaz tasklist s parametrem find /c "%~1", který spočítá počet běžících procesů s názvem zadaným v argumentu.
# Nachtman Filip 

@echo off
IF "%~1" equ "" (
   tasklist | find /c "winword.exe"
) ELSE (
   tasklist | find /c "%~1"
)
pause >nul
