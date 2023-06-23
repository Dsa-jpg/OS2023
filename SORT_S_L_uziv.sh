#!/bin/bash

# Získání seznamu přihlášených uživatelů pomocí příkazu who
users=$(who | awk '{print $1}')

# Inicializace polí pro liché a sudé uživatele
l=()
s=()

# Roztřídění uživatelů podle jejich UID
for user in $users; do
    uid=$(id -u "$user")
    if (( uid % 2 == 0 )); then
        s+=("$user")  # Přiřazení sudého uživatele do pole s[]
    else
        l+=("$user")  # Přiřazení lichého uživatele do pole l[]
    fi
done

# Výpis lichých uživatelů
echo "Lichí uživatelé:"
for user in "${l[@]}"; do
    echo "$user"
done

# Výpis sudých uživatelů
echo "Sudí uživatelé:"
for user in "${s[@]}"; do
    echo "$user"
done

#-------------------------------------------------------------------------------------------------
# pts



#!/bin/bash

# Získání seznamu přihlášených uživatelů pomocí pts
users=$(pts mem)

# Inicializace polí pro liché a sudé uživatele
l=()
s=()

# Roztřídění uživatelů podle jejich UID
for user in $users; do
    uid=$(id -u "$user")
    if (( uid % 2 == 0 )); then
        s+=("$user")  # Přiřazení sudého uživatele do pole s[]
    else
        l+=("$user")  # Přiřazení lichého uživatele do pole l[]
    fi
done

# Výpis lichých uživatelů
echo "Lichí uživatelé:"
for user in "${l[@]}"; do
    echo "$user"
done

# Výpis sudých uživatelů
echo "Sudí uživatelé:"
for user in "${s[@]}"; do
    echo "$user"
done



