
# ls with directories on top, without group, without . and .. and with human-readable sizes
alias ll='ls -lAhGp --group-directories-first --color'
alias l='ll'

# same as above but with absolute paths
alias la='l -d -1 "$PWD/"*'

# I always get into a directory and then see its contents - just make the terminal do that for me
function cdandls(){
        cd "$1"
        ll
}

alias c='cdandls'

# much quicker to go up one directory, but it breaks 'cd -'
alias x='c ..'