#!/bin/bash
#!/bin/bash

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
MAGENTA='\033[0;35m'
CYAN='\033[0;36m'
GRAY='\033[0;37m'
NC='\033[0m' # No Color
 #Check if user is root
if [ "$(id -u)" != "0" ]; then
    echo "This script must be run as root"
    sleep .5 
    #su -s /bin/bash -c "$0 $*" root
   # exit 1
fi
echo "Running as root..."
sleep .5
clear
while true; do
    clear
    echo -e "${YELLOW}+--------------------------------------------------+${NC}"
    echo -e "${YELLOW}|                                                  |${NC}"
    echo -e "${GREEN}|${GREEN}              W E L L C O M E                 ${GREEN}|${NC}"
    echo -e "${BLUE}|${GREEN}                    T O                         ${BLUE}|${NC}"
    echo -e "${BLUE}|${GREEN}      A u t o t u n n e l i p t a b e l         ${BLUE}|${NC}"
    echo -e "${BLUE}|                                        ${RED}ver 1.2 ${NC}  ${BLUE}|${NC}"
    echo -e "${BLUE}|${NC}                       B Y                      ${BLUE}|${NC}"
    echo -e "${BLUE}|${NC}                  MR.AminiNezhad                ${BLUE}|${NC}"
    echo -e "${BLUE}|           ---------------------------            |${NC}"
    echo -e "${BLUE}|                                                  |${NC}"
    echo -e "${BLUE}|${GREEN}      ------------ Install Menu ------------      ${BLUE}|${NC}"
    echo -e "${BLUE}|                                                  |${NC}"
    echo -e "${BLUE}|${YELLOW} 1.${NC} ${CYAN}Installing Iptable with BBR${NC}         ${BLUE}|${NC}"
    echo -e "${BLUE}|${YELLOW} 2.${NC} ${GRAY}Installing Iptable with Hybla${NC}       ${BLUE}|${NC}"
    echo -e "${BLUE}|${YELLOW}3.${NC} ${GREEN}CREDITS${NC}                                       ${BLUE}|${NC}"
    echo -e "${BLUE}|${YELLOW}0.${NC} ${RED}QUIT${NC}                                          ${BLUE}|${NC}"
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
done
