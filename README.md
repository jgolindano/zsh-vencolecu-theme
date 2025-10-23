# zsh VenColEcu Theme

Tema de terminal inspirado en los colores de **Venezuela** 🇻🇪, **Colombia** 🇨🇴 y **Ecuador** 🇪🇨.

Un tema minimalista y elegante que celebra la hermandad entre estos tres países hermanos, usando Powerlevel10k como base.

## 🎨 Características

- **VenColEcu Zen:** Tema principal con colores inspirados en las banderas de Venezuela, Colombia y Ecuador
- **Tema alternativo:** Cyvenpunk
- **Powerlevel10k:** Prompt rápido y personalizable
- **Configuración zsh:** Incluye alias y configuraciones personalizadas
- **Colores suaves:** Diseñado para reducir fatiga visual durante largas sesiones de código

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

## 🎨 Temas disponibles

### VenColEcu Zen (activo por defecto)
Tema minimalista y zen inspirado en los colores de las banderas de Venezuela, Colombia y Ecuador:
- 🟡 Amarillo: Riqueza y sol de nuestras tierras
- 🔵 Azul: Océanos y cielos que compartimos
- 🔴 Rojo: La sangre de nuestros libertadores

Diseñado con colores suaves para reducir la fatiga visual.

### Cyvenpunk
Tema alternativo inspirado en cyberpunk

## 🔄 Cambiar de tema

Para cambiar al tema Cyvenpunk:

```bash
ln -sf ~/.p10k-cyvenpunk.zsh ~/.p10k.zsh
source ~/.zshrc
```

Para volver a VenColEcu Zen:

```bash
ln -sf ~/.p10k-ven-col-ecu-zen.zsh ~/.p10k.zsh
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

## 💛💙❤️ Sobre VenColEcu

Este tema es un homenaje a la hermandad entre Venezuela, Colombia y Ecuador. Nuestros países comparten historia, cultura y colores en sus banderas, representando:

- **Amarillo**: La abundancia de nuestras tierras y el sol que nos ilumina
- **Azul**: Los océanos que nos rodean y los cielos que compartimos
- **Rojo**: La valentía y sangre de quienes lucharon por nuestra libertad

## 🙏 Créditos

- [Powerlevel10k](https://github.com/romkatv/powerlevel10k) por romkatv
- Tema VenColEcu Zen: Inspirado en la hermandad de tres naciones
- Tema Cyvenpunk: Inspiración cyberpunk
