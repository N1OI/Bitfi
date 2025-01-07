#!/bin/bash

BOLD='\033[1m'
UNDERLINE='\033[4m'
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
CYAN='\033[0;36m'
BLUE='\033[0;34m'
MAGENTA='\033[0;35m'
WHITE='\033[1;37m'
NC='\033[0m' # No Color (reset)
YELLOW_ON_WHITE='\033[1;33m\033[47m'
YELLOW_ON_BLACK='\033[1;33m\033[0;30m'


echo -e "${YELLOW}Installing Required Packages ...${NC}"
sudo apt-get install build-essential automake autoconf libtool libgmp3-dev p7zip-full tmux git

echo -e "${YELLOW}Cloning Bitfi ...${NC}"
git clone https://github.com/n-azimi/Bitfi.git

echo -e "${YELLOW}Navigating to the Bitfi directory ...${NC}"
cd Bitfi

echo -e "${YELLOW}Unzipping Bitfi.zip ...${NC}"
7z x Bitfi.zip

echo -e "${YELLOW}Displaying the List.txt content ...${NC}"
cat List.txt | head -c 100

echo -e "${YELLOW}\nDisplaying the List.txt in Hexadecimal Format ...${NC}"
hexdump -C List.txt | head

echo -e "${YELLOW}Removing Byte Order Mark (BOM) from List.txt ...${NC}"
sed -i '1s/^\xEF\xBB\xBF//' List.txt

echo -e "${YELLOW}Displaying the List.txt in Hexadecimal Format ...${NC}"
hexdump -C List.txt | head

chmod +x Bitfi

echo -e "${CYAN}Do you want to clear the terminal history (y or n)?${NC}"
read -r cinput

if [ "$cinput" == "y" ]; then
	history -c
	clear
fi

tmux new-session -d -s "Session" -n "Bitfi"

tmux send-keys -t "Session:0" "xargs ./Bitfi -t 3 < List.txt" C-m

tmux new-window -t "Session:1" -n "List"
tmux send-keys -t "Session:1" "ls -lh" C-m

tmux new-window -t "Session:2" -n "Top"
tmux send-keys -t "Session:2" "top" C-m

sleep 0.2
tmux send-keys -t "Session:2" "d"
sleep 0.2
tmux send-keys -t "Session:2" "1"
sleep 0.2
tmux send-keys -t "Session:2" C-m
sleep 0.2
tmux send-keys -t "Session:2" "L"
sleep 0.2
tmux send-keys -t "Session:2" "Bitfi"
sleep 0.2
tmux send-keys -t "Session:2" C-m
sleep 0.2

tmux attach-session -t "Session"



