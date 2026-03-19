📌 Tecnologías utilizadas

Python 🐍

Robot Framework 🤖

SeleniumLibrary 🌐 (Web)

AppiumLibrary 📱 (Mobile)

Appium

ChromeDriver

📁 Estructura del proyecto
📦 proyecto
 ┣ 📂 resources
 ┃ ┣ 📜 common.resource
 ┃ ┣ 📜 common_mobile.resource
 ┃ ┗ 📂 pages
 ┃    ┗ 📜 practice_form_page.resource
 ┣ 📂 tests
 ┃ ┣ 📜 practice_form_test.robot
 ┃ ┗ 📜 practice_form_mobile_test.robot
 ┣ 📜 report.html
 ┣ 📜 log.html
 ┗ 📜 output.xml
🧩 Descripción

resources/ → Contiene keywords reutilizables

pages/ → Implementación de Page Object Model

tests/ → Casos de prueba

report.html → Reporte generado

log.html → Detalle de ejecución

⚙️ Requisitos previos

Asegúrate de tener instalado:

Python 3.8 o superior

pip

Git

Node.js (para Appium)

Appium

Android Studio (para pruebas mobile)

Verificar instalaciones:

python --version
pip --version
git --version
📥 Instalación
1. Clonar repositorio
git clone <URL_DEL_REPOSITORIO>
cd <NOMBRE_DEL_PROYECTO>
2. Crear entorno virtual
python -m venv venv

Activar entorno:

Windows
venv\Scripts\activate
Mac/Linux
source venv/bin/activate
3. Instalar dependencias

Crear archivo requirements.txt:

robotframework
robotframework-seleniumlibrary
robotframework-appiumlibrary

Instalar:

pip install -r requirements.txt
▶️ Ejecución de pruebas
Ejecutar todos los tests
robot tests/
Ejecutar pruebas Web
robot tests/practice_form_test.robot
Ejecutar pruebas Mobile
robot tests/practice_form_mobile_test.robot
📊 Reportes

Después de ejecutar las pruebas se generan:

report.html → Resumen de ejecución

log.html → Detalle completo

Abrir reportes:

Windows
start report.html
Mac
open report.html
🌐 Configuración Web

Instalar Google Chrome

Descargar ChromeDriver compatible

Opcional (recomendado):

pip install webdriver-manager
📱 Configuración Mobile
Instalar Appium
npm install -g appium
Ejecutar Appium
appium
Requisitos adicionales

Android Studio instalado

Emulador o dispositivo físico

Variables de entorno configuradas:

ANDROID_HOME

🧪 Buenas prácticas implementadas

✅ Page Object Model (POM)
✅ Separación de Web y Mobile
✅ Reutilización de keywords
✅ Estructura escalable

🚀 Scripts de ejecución (opcional)
Windows (run_tests.bat)
venv\Scripts\activate
robot tests\
Mac/Linux (run_tests.sh)
#!/bin/bash
source venv/bin/activate
robot tests/
📌 Notas

Asegúrate de tener Appium corriendo antes de ejecutar pruebas mobile

Verifica compatibilidad entre Chrome y ChromeDriver

Ejecutar dentro del entorno virtual

👨‍💻 Autor

Kelvin Sanchez
