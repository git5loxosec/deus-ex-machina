#!/bin/bash

VERDE='\033[0;32m'
NC='\033[0m'

echo -e "${VERDE}Configurando Deus Ex Machina v1.0.0...${NC}"

# 1. Configuración del Entorno Virtual
python3 -m venv venv
source venv/bin/activate

# 2. Instalación de Dependencias
if [ -f "requirements.txt" ]; then
    pip install -r requirements.txt
fi

VENV_PYTHON="$(pwd)/venv/bin/python3"

# 3. Instalación del Binario
# Copia el archivo desde la carpeta bin del repositorio al sistema
sudo cp bin/deus-ex-machina /usr/local/bin/deus-ex-machina
sudo chmod +x /usr/local/bin/deus-ex-machina

# 4. Parchear el binario para que use el Python del entorno virtual
sudo sed -i "s|python3 -c|$VENV_PYTHON -c|g" /usr/local/bin/deus-ex-machina

# 5. Configuración del Alias
sed -i '/alias dem=/d' ~/.bashrc
echo "alias dem='source /usr/local/bin/deus-ex-machina INTERACTIVE_MODE'" >> ~/.bashrc

echo -e "${VERDE}Instalación completada.${NC}"
echo "Ejecuta 'source ~/.bashrc' para activar el comando 'dem'."
