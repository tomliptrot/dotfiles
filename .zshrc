autoload -Uz compinit
compinit
export EDITOR=nano
export VISUAL="$EDITOR"

eval "$(direnv hook zsh)"
source /Users/tomliptrot/.docker/init-zsh.sh || true # Added by Docker Desktop

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

eval "$(uv generate-shell-completion zsh)"


alias python="uv run python"
alias python3="uv run python3"

alias gcam='git commit --all --message'
alias l='lsd -al --header'
alias glo="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

eval "$(starship init zsh)"
export PATH="/usr/local/opt/postgresql@15/bin:$PATH"

# Created by `pipx` on 2025-01-15 16:11:02
export PATH="$PATH:/Users/tomliptrot/.local/bin"

eval "$(uv generate-shell-completion zsh)"
eval "$(uvx --generate-shell-completion zsh)"

# https://github.com/astral-sh/uv/issues/8432#issuecomment-2453494736
_uv_run_mod() {
    if [[ "$words[2]" == "run" && "$words[CURRENT]" != -* ]]; then
        _arguments '*:filename:_files'
    else
        _uv "$@"
    fi
}
compdef _uv_run_mod uv

