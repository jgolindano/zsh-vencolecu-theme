# zsh VenColEcu Theme

Tema de terminal inspirado en los colores de **Venezuela** 🇻🇪, **Colombia** 🇨🇴 y **Ecuador** 🇪🇨.

Un tema minimalista y elegante que celebra la hermandad entre estos tres países hermanos, usando Powerlevel10k como base.

## 🎨 Características

- **VenColEcu Zen:** Tema principal con colores inspirados en las banderas de Venezuela, Colombia y Ecuador
- **Powerlevel10k:** Prompt rápido y personalizable
- **Configuración zsh:** Incluye alias y configuraciones personalizadas
- **Colores suaves:** Diseñado para reducir fatiga visual durante largas sesiones de código
    - 🟡 Amarillo: Riqueza y sol de nuestras tierras
    - 🔵 Azul: Océanos y cielos que compartimos
    - 🔴 Rojo: La sangre de nuestros libertadores

## Requisitos

- zsh
- git
- Nerd Font (recomendado: MesloLGS NF)

## Instalación

### 1. Clonar este repositorio

```bash
git clone <tu-repo-url> ~/zsh-vencolecu-theme
cd ~/zsh-vencolecu-theme
```

### 2. Ejecutar el script de instalación

```bash
./install.sh
```

El script automáticamente:
- Instala Powerlevel10k en `~/powerlevel10k`
- **Agrega** la configuración al final de tu `.zshrc` existente (no lo reemplaza)
- Detecta si ya está instalado para evitar duplicados
- Instala los temas personalizados (hace backup de archivos `.p10k` existentes)
- Configura **VenColEcu Zen** como tema activo

### 3. Instalar Nerd Font

Powerlevel10k requiere una Nerd Font para mostrar los iconos correctamente.

**Opción recomendada:** MesloLGS NF
- [Descargar de aquí](https://github.com/romkatv/powerlevel10k#fonts)
- Instalar la fuente en tu sistema
- Configurar tu terminal para usar MesloLGS NF

### 4. Reiniciar terminal

```bash
source ~/.zshrc
```

## 📂 Estructura del repositorio

```
zsh-vencolecu-theme/
├── README.md
├── install.sh
└── zsh/
    ├── .zshrc
    ├── .p10k-ven-col-ecu-zen.zsh
    └── .p10k-cyvenpunk.zsh
```

## Personalización

### Modificar el tema activo

Edita el archivo `~/.p10k.zsh` (o el tema específico) para personalizar:
- Colores
- Segmentos del prompt
- Iconos
- Formato

### Agregar alias o configuraciones

Edita `~/.zshrc` para agregar:
- Alias personalizados
- Variables de entorno
- Plugins adicionales

## Troubleshooting

### Los iconos no se muestran correctamente
- Asegúrate de tener instalada una Nerd Font
- Configura tu terminal para usar la fuente correcta

### El tema no se aplica
```bash
source ~/.zshrc
```

### Remover la configuración de dotfiles
Si quieres remover la configuración agregada, edita tu `~/.zshrc` y elimina todo desde:
```bash
# === Dotfiles Configuration ===
```
hasta el final (o hasta la siguiente sección si agregaste más cosas después)

## 🙏 Créditos

- [Powerlevel10k](https://github.com/romkatv/powerlevel10k) por romkatv
- Tema VenColEcu Zen: Inspirado en la hermandad de tres naciones
