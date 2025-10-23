# Powerlevel10k Theme: Venezuela Zen
# Colores Venezuela: Amarillo, Azul y Rojo

# Instant prompt
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Función para mostrar directorio con slashes de profundidad
function prompt_my_dir() {
  local depth=0
  local slashes=""
  local basename="${PWD##*/}"

  # Si estamos exactamente en home
  if [[ "$PWD" == "$HOME" ]]; then
    p10k segment -f 203 -t "~"
    return
  fi

  # Si estamos en subcarpeta de home
  if [[ "$PWD" == "$HOME"* ]]; then
    # Contar profundidad desde home
    local relative="${PWD#$HOME/}"
    depth=$(( $(echo "$relative" | grep -o "/" | wc -l | tr -d ' ') + 1 ))

    # Crear slashes
    for ((i=0; i<depth; i++)); do
      slashes+="/"
    done

    # ~ y slashes en rojo Venezuela, carpeta también en rojo
    p10k segment -f 203 -t "%F{203}~${slashes}${basename}%f"
  else
    # Estamos fuera de home (en /)
    depth=$(( $(echo "$PWD" | grep -o "/" | wc -l | tr -d ' ') ))

    # Crear slashes
    for ((i=0; i<depth; i++)); do
      slashes+="/"
    done

    # Slashes en rojo Venezuela, carpeta también en rojo
    p10k segment -f 203 -t "%F{203}~${slashes}${basename}%f"
  fi
}

# Prompt elements
typeset -g POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(
  my_dir                  # Directorio personalizado
  vcs                     # Git status
  prompt_char             # ❯❯❯
)

typeset -g POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(
  command_execution_time  # Tiempo de ejecución (solo >2s)
)

# Prompt style (1 línea, sin iconos)
typeset -g POWERLEVEL9K_MODE=compatible
typeset -g POWERLEVEL9K_ICON_BEFORE_CONTENT=false
typeset -g POWERLEVEL9K_PROMPT_ON_NEWLINE=false
typeset -g POWERLEVEL9K_PROMPT_ADD_NEWLINE=false
typeset -g POWERLEVEL9K_RPROMPT_ON_NEWLINE=false

# My_dir config (directorio personalizado) - Rojo Venezuela #ff6b6b
typeset -g POWERLEVEL9K_MY_DIR_BACKGROUND=none
typeset -g POWERLEVEL9K_MY_DIR_FOREGROUND=203
typeset -g POWERLEVEL9K_MY_DIR_VISUAL_IDENTIFIER_EXPANSION=''

# Git - Azul Venezuela #61afef
typeset -g POWERLEVEL9K_VCS_CLEAN_FOREGROUND=75
typeset -g POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND=75
typeset -g POWERLEVEL9K_VCS_MODIFIED_FOREGROUND=75
typeset -g POWERLEVEL9K_VCS_BACKGROUND=none

# Git indicators: ● para staged, - para unstaged (amarillo Venezuela #ffd700)
typeset -g POWERLEVEL9K_VCS_CLEAN_VISUAL_IDENTIFIER_EXPANSION=''
typeset -g POWERLEVEL9K_VCS_UNTRACKED_VISUAL_IDENTIFIER_EXPANSION='%F{220}-%f'
typeset -g POWERLEVEL9K_VCS_MODIFIED_VISUAL_IDENTIFIER_EXPANSION='%F{220}●%f'

# Eliminar todos los iconos de git
typeset -g POWERLEVEL9K_VCS_BRANCH_ICON=''
typeset -g POWERLEVEL9K_VCS_GIT_ICON=''
typeset -g POWERLEVEL9K_VCS_COMMIT_ICON=''
typeset -g POWERLEVEL9K_VCS_INCOMING_CHANGES_ICON=''
typeset -g POWERLEVEL9K_VCS_OUTGOING_CHANGES_ICON=''
typeset -g POWERLEVEL9K_VCS_TAG_ICON=''
typeset -g POWERLEVEL9K_VCS_REMOTE_BRANCH_ICON=''
typeset -g POWERLEVEL9K_VCS_STAGED_ICON=''
typeset -g POWERLEVEL9K_VCS_UNSTAGED_ICON=''
typeset -g POWERLEVEL9K_VCS_UNTRACKED_ICON=''
typeset -g POWERLEVEL9K_VCS_STASH_ICON=''
typeset -g POWERLEVEL9K_VCS_ACTIONFORMAT_FOREGROUND=75

# Prompt char (❯❯❯) - Venezuela colors: Amarillo > Azul > Rojo
typeset -g POWERLEVEL9K_PROMPT_CHAR_OK_{VIINS,VICMD,VIVIS,VIOWR}_FOREGROUND=220
typeset -g POWERLEVEL9K_PROMPT_CHAR_ERROR_{VIINS,VICMD,VIVIS,VIOWR}_FOREGROUND=203
typeset -g POWERLEVEL9K_PROMPT_CHAR_OK_{VIINS,VICMD,VIVIS,VIOWR}_CONTENT_EXPANSION='%F{220}❯%F{75}❯%F{203}❯%f'
typeset -g POWERLEVEL9K_PROMPT_CHAR_ERROR_{VIINS,VICMD,VIVIS,VIOWR}_CONTENT_EXPANSION='%F{203}❯❯❯%f'
typeset -g POWERLEVEL9K_PROMPT_CHAR_BACKGROUND=none
typeset -g POWERLEVEL9K_PROMPT_CHAR_{OK,ERROR}_VIINS_VISUAL_IDENTIFIER_EXPANSION=''
typeset -g POWERLEVEL9K_PROMPT_CHAR_{OK,ERROR}_VICMD_VISUAL_IDENTIFIER_EXPANSION=''
typeset -g POWERLEVEL9K_PROMPT_CHAR_{OK,ERROR}_VIVIS_VISUAL_IDENTIFIER_EXPANSION=''
typeset -g POWERLEVEL9K_PROMPT_CHAR_{OK,ERROR}_VIOWR_VISUAL_IDENTIFIER_EXPANSION=''

# Command execution time (solo si >2s, amarillo Venezuela)
typeset -g POWERLEVEL9K_COMMAND_EXECUTION_TIME_THRESHOLD=2
typeset -g POWERLEVEL9K_COMMAND_EXECUTION_TIME_PRECISION=1
typeset -g POWERLEVEL9K_COMMAND_EXECUTION_TIME_FOREGROUND=220
typeset -g POWERLEVEL9K_COMMAND_EXECUTION_TIME_BACKGROUND=none
typeset -g POWERLEVEL9K_COMMAND_EXECUTION_TIME_VISUAL_IDENTIFIER_EXPANSION=''

# Separadores invisibles con espacio simple
typeset -g POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR=''
typeset -g POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR=''
typeset -g POWERLEVEL9K_LEFT_SUBSEGMENT_SEPARATOR=' '
typeset -g POWERLEVEL9K_RIGHT_SUBSEGMENT_SEPARATOR=' '
typeset -g POWERLEVEL9K_WHITESPACE_BETWEEN_LEFT_SEGMENTS=' '

# Visual identifiers vacíos por defecto
typeset -g POWERLEVEL9K_VISUAL_IDENTIFIER_EXPANSION=''

# Git config
typeset -g POWERLEVEL9K_VCS_MAX_SYNC_LATENCY_SECONDS=0.05
typeset -g POWERLEVEL9K_VCS_BACKENDS=(git)
