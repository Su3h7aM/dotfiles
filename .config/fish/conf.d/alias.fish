# Alias

# Ls alternatives
alias l "eza --icons --group-directories-first --sort ext"
alias ll "l --long --group --header"
alias la "ll --all"
alias lt "l --tree"

# Zoxide complements
alias zf "z (fd --type directory | fzf)"

# Git for managing dotfiles
alias .f "git --git-dir=$HOME/.dotfiles --work-tree=$HOME"

# Fuzzy finding
#alias ff "fd --type file | fzf --preview 'bat --color=always --line-range=:100 {}' | sd '\n' '' | wl-copy" 
#alias ffd "fd --type directory $argv | fzf --preview 'erd --human --color force {}' | sd '\n' '' | wl-copy"

# Micromamba
alias mm micromamba

# Neovim
alias nv nvim
alias nvl "NVIM_APPNAME=lazyvim nvim"
