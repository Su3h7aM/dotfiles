function code
    if command -sq codium
        codium $argv
    else
        flatpak run com.vscodium.codium $argv
    end
end
