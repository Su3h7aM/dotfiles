function ffd
    if test $argv
        fd --type directory --full-path $argv | fzf | sd '\n' '' | wl-copy
    else
        fd --type directory | fzf | sd '\n' '' | wl-copy
    end
end
