#!/bin/bash
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

read -p "Enter your choice (1 or 2): " choice

if [ "$choice" == "1" ]; then
    wget -N --no-check-certificate https://raw.githubusercontent.com/MrAminiNezhad/Auto-tunnel-iptables/main/run2.sh && chmod +x run2.sh && sudo bash run2.sh
elif [ "$choice" == "2" ]; then
    wget -N --no-check-certificate https://raw.githubusercontent.com/MrAminiNezhad/Auto-tunnel-iptables/main/run.sh && chmod +x run.sh && sudo bash run.sh
else
    echo "Invalid choice. Please enter 1 or 2."
fi
