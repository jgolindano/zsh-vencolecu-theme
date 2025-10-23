# Powerlevel10k Theme: CyVenPunk
# Venezuela Cyberpunk - Amarillo, Azul y Rojo neón

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
    p10k segment -f 197 -t "~"
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

    # ~ y slashes en rojo neón, carpeta también en rojo neón
    p10k segment -f 197 -t "%F{197}~${slashes}${basename}%f"
  else
    # Estamos fuera de home (en /)
    depth=$(( $(echo "$PWD" | grep -o "/" | wc -l | tr -d ' ') ))

    # Crear slashes
    for ((i=0; i<depth; i++)); do
      slashes+="/"
    done

    # Slashes en rojo neón, carpeta también en rojo neón
    p10k segment -f 197 -t "%F{197}${slashes}${basename}%f"
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

# My_dir config (directorio personalizado) - Rojo neón Venezuela #FF0040
typeset -g POWERLEVEL9K_MY_DIR_BACKGROUND=none
typeset -g POWERLEVEL9K_MY_DIR_FOREGROUND=197
typeset -g POWERLEVEL9K_MY_DIR_VISUAL_IDENTIFIER_EXPANSION=''

# Git - Azul neón Venezuela #0099FF
typeset -g POWERLEVEL9K_VCS_CLEAN_FOREGROUND=39
typeset -g POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND=39
typeset -g POWERLEVEL9K_VCS_MODIFIED_FOREGROUND=39
typeset -g POWERLEVEL9K_VCS_BACKGROUND=none

# Git indicators: ● para staged, - para unstaged (amarillo neón)
typeset -g POWERLEVEL9K_VCS_CLEAN_VISUAL_IDENTIFIER_EXPANSION=''
typeset -g POWERLEVEL9K_VCS_UNTRACKED_VISUAL_IDENTIFIER_EXPANSION='%F{226}-%f'
typeset -g POWERLEVEL9K_VCS_MODIFIED_VISUAL_IDENTIFIER_EXPANSION='%F{226}●%f'

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
typeset -g POWERLEVEL9K_VCS_ACTIONFORMAT_FOREGROUND=39

# Prompt char (❯❯❯) - Venezuela neon colors
# OK: Amarillo (#FFD700) > Azul (#0099FF) > Rojo (#FF0040)
# Error: Rojo neón Venezuela
typeset -g POWERLEVEL9K_PROMPT_CHAR_OK_{VIINS,VICMD,VIVIS,VIOWR}_FOREGROUND=226
typeset -g POWERLEVEL9K_PROMPT_CHAR_ERROR_{VIINS,VICMD,VIVIS,VIOWR}_FOREGROUND=197
typeset -g POWERLEVEL9K_PROMPT_CHAR_OK_{VIINS,VICMD,VIVIS,VIOWR}_CONTENT_EXPANSION='%F{226}❯%F{39}❯%F{197}❯%f'
typeset -g POWERLEVEL9K_PROMPT_CHAR_ERROR_{VIINS,VICMD,VIVIS,VIOWR}_CONTENT_EXPANSION='%F{197}❯❯❯%f'
typeset -g POWERLEVEL9K_PROMPT_CHAR_BACKGROUND=none
typeset -g POWERLEVEL9K_PROMPT_CHAR_{OK,ERROR}_VIINS_VISUAL_IDENTIFIER_EXPANSION=''
typeset -g POWERLEVEL9K_PROMPT_CHAR_{OK,ERROR}_VICMD_VISUAL_IDENTIFIER_EXPANSION=''
typeset -g POWERLEVEL9K_PROMPT_CHAR_{OK,ERROR}_VIVIS_VISUAL_IDENTIFIER_EXPANSION=''
typeset -g POWERLEVEL9K_PROMPT_CHAR_{OK,ERROR}_VIOWR_VISUAL_IDENTIFIER_EXPANSION=''

# Command execution time (solo si >2s, rojo neón Venezuela)
typeset -g POWERLEVEL9K_COMMAND_EXECUTION_TIME_THRESHOLD=2
typeset -g POWERLEVEL9K_COMMAND_EXECUTION_TIME_PRECISION=1
typeset -g POWERLEVEL9K_COMMAND_EXECUTION_TIME_FOREGROUND=197
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
