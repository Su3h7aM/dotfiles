function take
    mkdir -p $argv

    if type -q z
        z $argv
    else
        cd $argv
    end
end
