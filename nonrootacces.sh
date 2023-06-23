# Definuje se proměnná directory pro cestu k adresáři, který bude prohledáván.

# Používá se cyklus for k procházení souborů v zadaném adresáři.

# Kontroluje se vlastník každého souboru pomocí příkazu stat -c "%U" "$file". Pokud vlastník není "root", pokračuje se dále.

# Zjišťují se oprávnění souboru pomocí příkazu stat -c "%a" "$file". Kontroluje se, zda jsou nastavena oprávnění pro spuštění programu (111 v binárním zápisu).

# Dále se kontroluje, zda mají ostatní uživatelé oprávnění pro zápis (2 v binárním zápisu).




#!/bin/bash

# Cesta k adresáři, který chcete prohledat
directory="3"

# Procházení souborů v adresáři
for file in "$directory"/*; do
    # Kontrola vlastníka souboru
    owner=$(stat -c "%U" "$file")
    if [[ "$owner" != "root" ]]; then
        # Kontrola oprávnění pro spuštění programu
        permissions=$(stat -c "%a" "$file")
        if (( permissions & 111 )); then
            # Kontrola oprávnění pro zápis ostatních uživatelů
            if (( permissions & 2 )); then
                echo "Soubor: $file"
            fi
        fi
    fi
done
