if status is-interactive
    # Commands to run in interactive sessions can go here

    # dir
    abbr -a ets --position anywhere /mnt/c/Users/alexb/OneDrive\\ -\\ ETS
    abbr -a dl --position anywhere /mnt/d/Documents\\ and\\ Settings/alexb/Downloads   

    # alias
    alias cfg='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
    alias htop=btop

    # abbr
    abbr --add nrs "npm run start"
    abbr --add nrb "npm run build"
    abbr --add psh "powershell.exe Start-Process cmd -Verb RunAs"

    # https://github.com/neovim/neovim/blob/master/INSTALL.md
    set editor
    if command -q nvim
        set editor nvim
    else if command -q vim
        set editor vim
    end

    for var in EDITOR GIT_EDITOR VISUAL
        set -gx $var $editor
    end

end

set -U fish_user_paths /opt/nvim-linux-x86_64/bin/ $fish_user_paths
set -U fish_user_paths /opt/gradle/gradle-8.11/bin/ $fish_user_paths
set -U fish_user_paths /opt/mvn/apache-maven-3.9.9/bin/ $fish_user_paths

