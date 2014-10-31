#!/bin/bash
#
#   @(#) 擬似乱数を生成・表示し、引数にマッチするまでループします
#
#   Usage:
#       iiyo_koiyo.sh [num]
#       command | iiyo_koiyo.sh
#
#   Author:
#       @84____ (Masaya Tk.)
#

base=${0##*/}

_error() {
    echo "${base%.sh}: invaild argument" 1>&2
    exit 1
}

_randCreate() {
    rand=$((${RANDOM} % 10))
    printf ${rand}
}

if [ -p /dev/stdin ]; then
    iiyo=$(cat -)
elif [ -n "${1}" ]; then
    iiyo=${1}
else
    _error
fi

if $(echo ${iiyo} | grep '[^0-9]' >/dev/null 2>&1); then
    _error
fi

while :;
do
    _randCreate

    i=${i}${rand}

    if $(echo ${i} | grep "${iiyo}$" >/dev/null 2>&1); then
        break
    fi

    if [ ${#i} -eq ${#iiyo} ]; then
        i=${i:1}
    fi
done

exit 0
