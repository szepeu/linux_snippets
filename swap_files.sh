# swap(): swap two files or directories

function swap(){
    if [ -z "$1" ]; then
        echo "No targets provided!"
        return
    elif [ -z "$2" ]; then
        echo "No 2nd target provided!"
        return
    fi

    if [[ ! -f "$1" ]] && [[ ! -d "$1" ]]; then
        echo "ERROR: $1 does not exist!"
        return
    elif [[ ! -f "$2" ]] && [[ ! -d "$2" ]]; then
        echo "ERROR: $2 does not exist!"
        return
    fi

    if ([[ -f "$1" ]] && [[ -f "$2" ]]) || ([[ -d "$1" ]] && [[ -d "$2" ]]); then
        # echo "Info: swapping two of the same kind"
        echo -n ""
    else
        # you can throw an error here if you don't want to swap directories with files
        echo -n "WARNING: swapping "
        if [[ -f "$1" ]]; then
            echo " file $1 with directory $2!"
        else
            echo " directory $1 with file $2!"
        fi
    fi

    mv $1 swapTmp
    mv $2 $1
    mv swapTmp $2
}