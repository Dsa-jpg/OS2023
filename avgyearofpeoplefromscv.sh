#!/bin/bash

# ----------------------------------------------------------|
#                                                           |
#   Průměrný věk pracovníků -> z csv s awk příkazem         |
#                                                           |
# ----------------------------------------------------------|

# Extrahovat věkové údaje
vek=$(cut -d';' -f5 pracovnici-utf8.csv | tail -n +2)
# cut k extrakci kokretních částí textu | parametr -d určuje oddělovač polí | parametr -f5 specifikuje že chceme extrahovat celé páté pole |nástroj tail a param -n +2 specifikuje že checeme vypsat všechny řádky po 2 řadku včetně 


# Spočítat průměr věku přes awk
prumer=$(echo "$vek" | awk '{sum += $1} END {print sum / NR}')
# NR interní proměnné co uchovává počet řádků v awk

echo "Průměr věků pracovníků: $prumer"



@echo off
setlocal enabledelayedexpansion

set "inputFile=procovnici.csv"
set /A maxSalary=0

for /F "tokens=3 delims=;" %%a in (%inputFile%) do (
  if %%a gtr !maxSalary! (
    set /A maxSalary=%%a
  )
)

echo Maximální plat: !maxSalary!

pause


-----------------------

@echo off
setlocal enabledelayedexpansion

set "inputFile=procovnici.csv"
set /A sum=0
set /A count=0

for /F "tokens=3 delims=;" %%a in (%inputFile%) do (
  set /A sum+=%%a
  set /A count+=1
)

if %count% gtr 0 (
  set /A average=sum/count
  echo Průměrný plat: !average!
) else (
  echo Nebyly nalezeny žádné hodnoty platu.
)

pause


-----------------------




@echo off
setlocal enabledelayedexpansion

set "inputFile=procovnici.csv"
set /A minSalary=9999999

for /F "tokens=3 delims=;" %%a in (%inputFile%) do (
  if %%a lss !minSalary! (
    set /A minSalary=%%a
  )
)

echo Minimální plat: !minSalary!

pause







