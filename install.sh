#!/bin/bash

# Crear venv
python3 -m venv venv
source venv/bin/activate
VENV_PYTHON="$(pwd)/venv/bin/python3"

# Copiar el binario al sistema
sudo cp bin/deus-ex-machina /usr/local/bin/deus-ex-machina
sudo chmod +x /usr/local/bin/deus-ex-machina

# Ajustar el binario para que use el Python del venv
sudo sed -i "s|python3 -c|$VENV_PYTHON -c|g" /usr/local/bin/deus-ex-machina

# Configurar alias
sed -i '/alias dem=/d' ~/.bashrc
echo "alias dem='source /usr/local/bin/deus-ex-machina INTERACTIVE_MODE'" >> ~/.bashrc

echo "Done. Restart your terminal or run 'source ~/.bashrc'"
