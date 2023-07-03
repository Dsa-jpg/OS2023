# OS


>> scripty batch|bash

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
