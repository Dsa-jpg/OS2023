# @echo off: Tento příkaz zamezuje zobrazení příkazů ve skriptu v konzoli.

# for /F "tokens=1-5 delims=," %%A in ('tasklist /FI "Status eq Running" /FO csv') do ...: Tento příkaz získá seznam běžících procesů pomocí příkazu tasklist s filtrací na "Status eq Running" (běžící procesy) a výstupem ve formátu CSV. Poté iteruje přes každý řádek výstupu a uloží hodnoty jednotlivých sloupců do proměnných %%A, %%B, %%C, %%D a %%E.

# setlocal enabledelayedexpansion: Tento příkaz povoluje rozšířené zpracování proměnných s použitím vykřičníku !.

# set "value=%%E": Tento příkaz uloží hodnotu z pátého sloupce (%%E) do proměnné value.

# if !value! GTR 2 ( echo %%B, %%A, !value! ): Tato podmínka porovnává hodnotu value s číslem 2. Pokud je hodnota větší než 2, zobrazí se v konzoli hodnoty druhého (%%B), prvního (%%A) sloupce a hodnota value.

# endlocal: Tento příkaz ukončuje rozsah platnosti rozšířeného zpracování proměnných.

# Nachtman Filip



echo off

for /F "tokens=1-5 delims=," %%A in ('
   tasklist /FI "Status eq Running" /FO csv
') do (
   setlocal enabledelayedexpansion
   set "value=%%E"
   if !value! GTR 2 (
      echo %%B, %%A, !value!
   )
   endlocal
)

pause >nul
