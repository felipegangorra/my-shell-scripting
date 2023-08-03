# Função para obter o status do Git
function git_prompt_info() {
  local ref
  if [[ "$(git config --get oh-my-zsh.hide-status 2>/dev/null)" != "1" ]]; then
    ref=$(git symbolic-ref --quiet --short HEAD 2>/dev/null)
    if [[ -n $ref ]]; then
      echo " - ($ref)"
    else
      return
    fi
  fi
}

# Nome e host
user_prompt='\[\033[38;5;81m\]╭─[\u@\h]\[\033[0m\]'

# Data
date='\[\033[38;5;142m\][\d]\[\033[0m\]'

# Diretório
dir_prompt='\[\033[38;5;209m\]\w\[\033[0m\]'

# Segunda linha
second_line='\[\033[38;5;214m\]╰──>\[\033[0m\]'

# Configuração do prompt
PS1="${user_prompt} in ${dir_prompt} - ${date}\$(git_prompt_info)
${second_line} "
