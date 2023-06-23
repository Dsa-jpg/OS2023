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
