bash
Copy code
#!/bin/bash

# Nastavte cestu k vašemu CSV souboru
csv_file="cesta/k/vasemu/souboru.csv"

# Určete sloupec, ve kterém se nachází platová data
plat_column="2"

# Přečtení hodnot z CSV souboru a nalezení maximální hodnoty
max_plat=$(tail -n +2 "$csv_file" | cut -d ',' -f "$plat_column" | tr -d ' ' | sort -n | tail -n 1)

# Výpis maximálního platu
echo "Maximální plat: $max_plat"
