# ============================
# Basic Zsh Settings
# ============================

# Completion
autoload -Uz compinit
compinit

# ============================
# Environment
# ============================

export EDITOR="${EDITOR:-nvim}"

# Auto-start tmux for interactive shells (but not inside tmux already)
if command -v tmux >/dev/null 2>&1; then
  if [[ -o interactive ]] && [[ -z "$TMUX" ]]; then
    # Attach to "main" if it exists, otherwise create it
    tmux attach -t main || tmux new -s main
  fi
fi
