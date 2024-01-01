if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -g fish_greeting

rtx activate fish | source
zoxide init fish | source

# >>> mamba initialize >>>
# !! Contents within this block are managed by 'mamba init' !!
set -gx MAMBA_EXE "/home/matheus/.local/bin/micromamba"
set -gx MAMBA_ROOT_PREFIX "/home/matheus/.micromamba"
$MAMBA_EXE shell hook --shell fish --root-prefix $MAMBA_ROOT_PREFIX | source
# <<< mamba initialize <<<
