if status is-interactive
    switch "$TERM"
        case alacritty foot foot-extra
        case '*'
            fastfetch
    end
end

set fish_greeting

function hl
    start-hyprland $argv
end

function conf
    nvim ~/.config/fish/config.fish
end

# Update system (for Arch/Pacman)
function update
    sudo pacman -Syu
end
function cleanup
    sudo pacman -Rns (pacman -Qtdq)
end

# Git
function g
    git $argv
end
function gs
    git status
end
function ga
    git add .
end
function gc
    git commit -m $argv
end
function gp
    git push
end
function gl
    git log --oneline --graph --decorate
end

function mkcd
    mkdir -p $argv
    cd $argv
end

function f
    rg $argv
end

function killport
    set -l PID (lsof -t -i:$argv)
    if test -n "$PID"
        kill -9 $PID
        echo "Killed process $PID on port $argv"
    else
        echo "No process found on port $argv"
    end
end

function dot
    cd ~/.config/$argv
    ls
end

function extract
    switch $argv
        case '*.tar.gz' '*.tgz'
            tar xzf $argv
        case '*.tar.xz'
            tar xf $argv
        case '*.zip'
            unzip $argv
        case '*'
            echo "Unknown extension"
    end
end

set -g fish_color_autosuggestion 504945
#alias sudo doas
set -gx PATH $HOME/.local/bin $PATH
starship init fish | source
