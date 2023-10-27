#!/bin/bash

echo "Please select an option:"
echo "1- Installing Iptable with BBR"
echo "2- Installing Iptable with Hybla"
read -p "Enter your choice (1 or 2): " choice

if [ "$choice" == "1" ]; then
    wget -N --no-check-certificate https://raw.githubusercontent.com/MrAminiNezhad/Auto-tunnel-iptables/main/run2.sh && chmod +x run2.sh && sudo bash run2.sh
elif [ "$choice" == "2" ]; then
    wget -N --no-check-certificate https://raw.githubusercontent.com/MrAminiNezhad/Auto-tunnel-iptables/main/run.sh && chmod +x run.sh && sudo bash run.sh
else
    echo "Invalid choice. Please enter 1 or 2."
fi
