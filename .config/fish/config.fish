if status is-interactive
    # Commands to run in interactive sessions can go here
    
    #set ZELLIJ_AUTO_ATTACH true
    #set ZELLIJ_AUTO_EXIT false
    #eval "$(zellij setup --generate-auto-start fish)"
end

set -g fish_greeting

if not set -q ZELLIJ
    zellij attach default -c
end

# >>> mamba initialize >>>
# !! Contents within this block are managed by 'micromamba shell init' !!
set -gx MAMBA_EXE "$HOME/.local/bin/micromamba"
set -gx MAMBARC "$XDG_CONFIG_HOME/mamba/mambarc.yml"
set -gx MAMBA_ROOT_PREFIX "$XDG_CONFIG_HOME/mamba"
$MAMBA_EXE shell hook --shell fish --root-prefix $MAMBA_ROOT_PREFIX | source
# <<< mamba initialize <<<

starship init fish | source

zoxide init fish | source

mise activate fish | source
#fish_add_path ~/.local/share/mise/shims
