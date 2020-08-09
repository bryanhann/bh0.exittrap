bh0firstrun && bh0export  __DEPTH__  -1
true        && bh0export  __DEPTH__  $(( ${__DEPTH__} + 1 ))

function depth {} {
    echo ${__DEPTH__}
}

function exit {
    echo "leaving depth #${__DEPTH__}"
    [[ "${__DEPTH__}" == "0" ]] || builtin exit
    echo try 'builtin exit'
}

