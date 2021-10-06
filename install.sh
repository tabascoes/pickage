#!/bin/bash
# Exec format might be
# curl XXX | sudo bash jp/en
lang=$1

function ie()
{
    # info o/e/i/s text
    status=$1
    text=$2
    if [ $status == 'o' ] 
    then
        echo \e "[  OK  ] $text"
    fi
    if [ $status == 'e' ] 
    then
        echo \e "[ ERR! ] $text"
    fi
    if [ $status == 'i' ] 
    then
        echo \e "[ INFO ] $text"
    fi
    if [ $status == 's' ] 
    then
        echo \e "__--== $text ==--__"
    fi
}

ie "s" "You can CANCEL installer CTRL + C"
ie "i" "installer will install in /usr/local/bin/pickage"
ie "i" "Waiting 5 seconds"
sleep 5
ie "i" "No interrupt, CONTINUE"

ie "s" "Starting/Configuring installer"
ie "i" "Checking for authorization"
sudo echo \e "Authorized"
ie "i" "Making system directory"
mkdir /usr/local/bin/pickage
ie "o" "Finished"
ie "i" "Making change for directory"
cd /usr/local/bin/pickage
sudo chmod 110 /usr/local/bin/pickage
ie "o" "Finished"

ie "s" "Installing translation file"
ie "i" "installer will install $lang package"
mkdir translate
cd tlanslate

