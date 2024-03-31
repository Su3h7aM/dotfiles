#set -x MAMBARC $XDG_CONFIG_HOME/mamba/mambarc.yml

#set -x CONDARC $XDG_CONFIG_HOME/conda/condarc.yml
#set -x CONDA_ROOT $XDG_CONFIG_HOME/conda
#set -x CONDA_ENVS_PATH $XDG_DATA_HOME/conda/envs
#set -x CONDA_PKGS_DIRS $XDG_CACHE_HOME/conda/pkgs

#set -x PATH $XDG_CONFIG_HOME/conda/bin $PATH

if not contains $HOME/.local/bin $PATH
    set -x PATH $HOME/.local/bin $PATH
end

set -x MISE_ENV_FILE ".env"

#set -x FZF_DEFAULT_OPTS "--preview 'bat --color=always --line-range=:100 {}'"
set -x MANPAGER "bat -l man"
set -x PAGER bat
set -x VISUAL nvim
set -x EDITOR nvim
