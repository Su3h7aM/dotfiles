function ff
    if test $argv
        fd --type file --full-path $argv | fzf --preview 'bat --color=always --line-range=:100 {}' | sd '\n' '' | wl-copy
    else
        fd --type file | fzf --preview 'bat --color=always --line-range=:100 {}' | sd '\n' '' | wl-copy
    end
end
