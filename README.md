# ⚡ Deus Ex Machina v1.0.0

**Deus Ex Machina** es un wrapper autónomo para la terminal de Linux diseñado para la ejecución inteligente de tareas mediante lenguaje natural. Actúa como un agente de Bash capaz de interpretar comandos, analizar el sistema de archivos y ejecutar scripts complejos sin intervención manual constante.

Desarrollado específicamente para entornos de bajo nivel, investigación de seguridad y automatización de flujos de trabajo en arquitecturas ARM64 (Android/Termux) y sistemas Linux estándar.

## 🛠️ Características Core

* **Motor Autónomo:** Traduce lenguaje natural a comandos Bash puros de forma instantánea.
* **Context Aware:** El agente conoce su ubicación actual y los archivos presentes en el directorio de trabajo.
* **Seguridad por Diseño:** Filtrado automático de comandos `sudo` y validación de ejecución manual para scripts sensibles.
* **Entorno Aislado:** Implementación nativa con soporte para entornos virtuales (venv), garantizando cero conflictos con las librerías del sistema.
* **Optimizado para Velocidad:** Uso del modelo `gemini-2.5-flash-lite` para respuestas de baja latencia.

## 🚀 Instalación

1. **Clonar el repositorio:**
   ```
   git clone https://github.com/git5loxosec/deus-ex-machina.git
   ```
   ```
   cd deus-ex-machina
   ```
 * Configurar la API Key:
   ```
   export GEMINI_API_KEY='tu_api_key_aqui'
   ```
 * Ejecutar el instalador:
   ```
   chmod +x install.sh
   ```
   y
   ```
   ./install.sh
   ```

 * Recargar la configuración:
   ```
   source ~/.bashrc
   ```
⌨️ Uso
Modo Interactivo
Inicia una sesión dedicada donde el agente mantiene el control de la shell:
dem

Comandos Rápidos
Envía una instrucción directa desde cualquier lugar de la terminal:
deus-ex-machina "genera un script en rust para persistencia basica"

🏗️ Estructura del Proyecto
 * bin/: Contiene el binario ejecutable del motor.
 * install.sh: Script de despliegue y configuración de alias.
 * requirements.txt: Dependencias de Python congeladas para el venv.
 * .gitignore: Configuración para excluir el entorno virtual y temporales.
⚠️ Aviso Legal
Esta herramienta ha sido creada para fines de desarrollo, administración de sistemas e investigación de seguridad. El autor no se hace responsable del uso indebido de los comandos generados por el agente. Siempre revisa el código propuesto antes de confirmar su ejecución ([S/n]).

Desarrollado por git5 | LoxoSec
