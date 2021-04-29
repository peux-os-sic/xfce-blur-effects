#!/bin/bash

PASSWD="$(zenity --password --title=Authentication)\n"

echo "changing directory"
cd ../
echo -e $PASSWD | sudo -S bash xfce-blur-effects/xfwm-effects-install.sh
rm -rf xfce-blur-effects
