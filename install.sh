#!/bin/bash

while true; do
    clear
    echo "+--------------------------------------------------+"
    echo "|                                                  |"
    echo "|              W E L L C O M E                    |"
    echo "|                    T O                          |"
    echo "|      A u t o t u n n e l i p t a b e l          |"
    echo "|                                        ver 1.2    |"
    echo "|                       B Y                       |"
    echo "|                  MR.AminiNezhad                 |"
    echo "|           ---------------------------            |"
    echo "|                                                  |"
    echo "|      ------------ Install Menu ------------      |"
    echo "|                                                  |"
    echo "| 1. Installing Iptable with BBR                   |"
    echo "| 2. Installing Iptable with Hybla                 |"
    echo "| 3. CREDITS                                      |"
    echo "| 0. QUIT                                         |"
    echo "Enter option number: "
    read -p "Enter option number: " choice

    if [ "$choice" == "1" ]; then
        wget -N --no-check-certificate https://raw.githubusercontent.com/MrAminiNezhad/Auto-tunnel-iptables/main/run2.sh && chmod +x run2.sh && sudo bash run2.sh
elif [ "$choice" == "2" ]; then
    wget -N --no-check-certificate https://raw.githubusercontent.com/MrAminiNezhad/Auto-tunnel-iptables/main/run.sh && chmod +x run.sh && sudo bash run.sh
elif [ "$choice" == "3" ]; then
    clear
    echo "########################################"
    echo "#                                      #"
    echo "#                Credits               #"
    echo "#                                      #"
    echo "########################################"
    echo ""
    echo "This bash was created by Soroush Nekoozadeh"
    echo "Special thanks to AtomicBoys Team, alex, and kimi for their contributions."
    echo "This script has been made to make your job faster. So use it appropriately."
    echo "I used a lot of people's code, scripts, and more, which would take a whole day to name. You can find them on GitHub."
    echo "Press ENTER to continue"
    read -s -n 1
elif [ "$choice" == "0" ]; then
    echo "Exiting..."
    echo "Exiting program"
    exit 0
else
    echo "Invalid option. Please choose a valid option."
    echo "Press ENTER to continue"
    read -s -n 1
fi
