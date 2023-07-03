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


import sys
from PyQt5.QtWidgets import QApplication, QWidget, QVBoxLayout, QPushButton

class MainWindow(QWidget):
    def __init__(self):
        super().__init__()
        self.initUI()

    def initUI(self):
        layout = QVBoxLayout()

        # Vytvoření tlačítek
        tlacitko1 = QPushButton("Tlačítko 1")
        tlacitko2 = QPushButton("Tlačítko 2")
        tlacitko3 = QPushButton("Tlačítko 3")
        tlacitko4 = QPushButton("Tlačítko 4")

        # Přiřazení funkcí k tlačítkům
        tlacitko1.clicked.connect(self.otevrit_okno1)
        tlacitko2.clicked.connect(self.otevrit_okno2)
        tlacitko3.clicked.connect(self.otevrit_okno3)
        tlacitko4.clicked.connect(self.otevrit_okno4)

        # Přidání tlačítek do layoutu
        layout.addWidget(tlacitko1)
        layout.addWidget(tlacitko2)
        layout.addWidget(tlacitko3)
        layout.addWidget(tlacitko4)

        self.setLayout(layout)
        self.setWindowTitle("Úvodní obrazovka")
        self.show()

    def otevrit_okno1(self):
        # Kód pro otevření prvního okna

    def otevrit_okno2(self):
        # Kód pro otevření druhého okna

    def otevrit_okno3(self):
        # Kód pro otevření třetího okna

    def otevrit_okno4(self):
        # Kód pro otevření čtvrtého okna

if __name__ == "__main__":
    app = QApplication(sys.argv)
    window = MainWindow()
    sys.exit(app.exec_())
