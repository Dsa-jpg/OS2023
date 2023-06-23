#!/bin/bash

# bash aa.sh cesta k dir

path="$1"  # Uložení zadané cesty jako proměnnou 'path'
counter=1  # Inicializace počítadla

# ------------------------------------------------------------------------------

if [ -z "$path" ]; then
  echo "Chyba: Nebyla zadána cesta k adresáři."
  exit 1
fi

# Kontrola, zda byla zadána cesta k adresáři
# Pokud ne, vypíše se chybové hlášení a skript se ukončí s návratovým kódem 1

# ------------------------------------------------------------------------------

if [ ! -d "$path" ]; then
  echo "Chyba: Adresář '$path' neexistuje."
  exit 1
fi

# Kontrola, zda zadaný adresář existuje
# Pokud ne, vypíše se chybové hlášení a skript se ukončí s návratovým kódem 1

# ------------------------------------------------------------------------------

cd "$path"

# ------------------------------------------------------------------------------

# Přechod do zadaného adresáře

for file in *.jpe; do
  if [ -f "$file" ]; then

    # Kontrola, zda soubor existuje
    # Pokud ano, pokračuje se s přejmenováním souboru

    extension="${file##*.}"  # Extrahování přípony souboru
    new_name="image$(printf "%03d" $counter).jpeg"  # Sestavení nového jména souboru
    mv "$file" "$new_name"  # Přejmenování souboru
    echo "Přejmenován soubor '$file' na '$new_name'."  # Výpis informace o provedeném přejmenování
    counter=$((counter + 1))  # Zvýšení počítadla o 1

  fi
done

# Cyklus prochází všechny soubory s příponou '.jpe' v adresáři
# Přejmenuje je na soubory ve formátu 'imageNNN.jpeg', kde NNN je pořadové číslo
# Vypíše informaci o provedeném přejmenování

# ------------------------------------------------------------------------------
