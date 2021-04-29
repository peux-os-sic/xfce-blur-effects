#!/bin/bash

###########################################################
# Author - DN-debug
# Description - XFWM-BLUR installation script
###########################################################


if zenity --question --text="Want to proceed?"
then 
    PASSWD="$(zenity --password --title=Authentication)\n"

    echo "changing directory"
    cd ../
    echo -e $PASSWD | sudo -S bash xfce-blur-effects/xfwm-effects-install.sh

else
    notify-send "Operation skipped!"
fi

rm -rf /tmp/fetcher/xfce-blur-effects
notify-send "Done!"