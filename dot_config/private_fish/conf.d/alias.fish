# Alias

# Ls alternatives
alias l "eza --group-directories-first --sort ext"
alias ll "eza --group --header --group-directories-first --long --sort ext"
alias la "eza --group --header --group-directories-first --long --sort ext --all"

# Zoxide complements
alias zf "z (fd --type directory | fzf)"

# Fuzzy finding
alias ff "fd --type file | fzf --preview 'bat --color=always --line-range=:100 {}' | sd '\n' '' | wl-copy" 
alias ffd "fd --type directory | fzf --preview 'erd --human --color force {}' | sd '\n' '' | wl-copy"

# Micromamba
alias mm micromamba

# Codium
alias code codium

# Neovim
alias nv nvim
alias nvl "NVIM_APPNAME=lazyvim nvim"

