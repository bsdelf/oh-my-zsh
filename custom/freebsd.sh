alias zfs-eff="zfs-stats -ED"
alias zpool-io="zpool iostat 1"

alias xsel-pwd="pwd | tr -d '\n' | xsel -b"
alias cd-xsel='cd `xsel -b`'
function xsel-b() {
    if [ $# -ne 0 ]; then
        echo $* | tr -d '\n' | xsel -b
    else
        xsel -b
    fi
}

function svn-co-port() {
    url="https://svn.FreeBSD.org/ports/head/$1"
    cmd="svn co ${url}"
    echo $cmd
    eval $cmd
}

alias svn-diff-port="svn diff > ../`make -VPKGNAME`.diff"
