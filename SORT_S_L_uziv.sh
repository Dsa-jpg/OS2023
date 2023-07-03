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
    
    
    import sys
from PyQt5.QtWidgets import QApplication, QMainWindow, QPushButton

class MainWindow(QMainWindow):
    def __init__(self):
        super().__init__()
        self.initUI()

    def initUI(self):
        self.setWindowTitle("Hlavní okno")

        # Vytvoření tlačítek
        tlacitko1 = QPushButton("Tlačítko 1", self)
        tlacitko1.clicked.connect(self.otevrit_okno1)

        tlacitko2 = QPushButton("Tlačítko 2", self)
        tlacitko2.clicked.connect(self.otevrit_okno2)

        tlacitko3 = QPushButton("Tlačítko 3", self)
        tlacitko3.clicked.connect(self.otevrit_okno3)

        tlacitko4 = QPushButton("Tlačítko 4", self)
        tlacitko4.clicked.connect(self.otevrit_okno4)

        # Umístění tlačítek v hlavním okně
        self.layout = self.centralWidget()
        self.layout.layout().addWidget(tlacitko1)
        self.layout.layout().addWidget(tlacitko2)
        self.layout.layout().addWidget(tlacitko3)
        self.layout.layout().addWidget(tlacitko4)

    def otevrit_okno1(self):
        # Kód pro otevření prvního plnohodnotného okna s dalšími možnostmi na výběr
        okno1 = QMainWindow()
        # Vytvoření widgetů a layoutu pro první okno
        # ...

        okno1.setWindowTitle("Okno 1")
        okno1.show()

    def otevrit_okno2(self):
        # Kód pro otevření druhého plnohodnotného okna s dalšími možnostmi na výběr
        okno2 = QMainWindow()
        # Vytvoření widgetů a layoutu pro druhé okno
        # ...

        okno2.setWindowTitle("Okno 2")
        okno2.show()

    def otevrit_okno3(self):
        # Kód pro otevření třetího plnohodnotného okna s dalšími možnostmi na výběr
        okno3 = QMainWindow()
        # Vytvoření widgetů a layoutu pro třetí okno
        # ...

        okno3.setWindowTitle("Okno 3")
        okno3.show()

    def otevrit_okno4(self):
        # Kód pro otevření čtvrtého plnohodnotného okna s dalšími možnostmi na výběr
        okno4 = QMainWindow()
        # Vytvoření widgetů a layoutu pro čtvrté okno
    
    
