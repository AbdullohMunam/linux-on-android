### by abdulloh

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

alias graph="git log --all --decorate --oneline --graph"
# alias pemrograman="cd /sdcard/.1Belajar/Pemrograman"

function pemrograman () {
    pemlocation="/sdcard/.1Belajar/Pemrograman"

    case $1 in
        js )
            cd $pemlocation/JavaScript
        ;;
        java )
            cd $pemlocation/Java
        ;;
        * )
            cd $pemlocation
        ;;
    esac
}
