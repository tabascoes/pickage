#!/bin/bash
function name()
{
    # info ok/error/info/section
    status=$1
    text=$2
    if [ $status == 'ok' ] 
    then
        echo \e "[  OK  ] $text"
    fi
    if condition 
    then
        echo \e "[ ERR! ] $text"
    fi
    if condition 
    then
        echo \e "[ INFO ] $text"
    fi
    if condition 
    then
        echo \e "__--== $text ==--__"
    fi
}
