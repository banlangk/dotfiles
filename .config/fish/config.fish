set -gx fish_greeting

source ~/.config/fish/aliases.fish
source ~/.config/fish/env.fish

fish_vi_key_bindings

function dfm
    git --git-dir=$HOME/.dfm/ --work-tree=$HOME $argv
end

function yy
    set tmp (mktemp -t "yazi-cwd.XXXXXX")
    yazi $argv --cwd-file="$tmp"
    if set cwd (cat -- "$tmp"); and [ -n "$cwd" ]; and [ "$cwd" != "$PWD" ]
        cd -- "$cwd"
    end
    rm -f -- "$tmp"
end
