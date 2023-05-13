#!/data/data/com.termux/files/usr/bin/bash

RED=$(printf "\033[91m")
GREEN=$(printf "\033[92m")
YELLOW=$(printf "\033[93m")
BLUE=$(printf "\033[94m")
MAGENTA=$(printf "\033[95m")
CYAN=$(printf "\033[96m")
WHITE=$(printf "\033[97m")
RESET=$(printf "\033[00m")

show_banner() {
clear
echo "${MAGENTA}
┌─────────────────────────────────────────────────────────────────┐
│  ______   __  __     __  __     _____     ______     ______     │
│ /\__  _\ /\ \_\ \   /\ \_\ \   /\  __-.  /\  == \   /\  __ \    │
│ \/_/\ \/ \ \  __ \  \ \____ \  \ \ \/\ \ \ \  __<   \ \  __ \   │
│    \ \_\  \ \_\ \_\  \/\_____\  \ \____-  \ \_\ \_\  \ \_\ \_\  │
│     \/_/   \/_/\/_/   \/_____/   \/____/   \/_/ /_/   \/_/\/_/  │
│                                                                 │
│   ${RED}[+] ${YELLOW}Author ${WHITE}> ${GREEN}#D4RK-CL0UD                                      ${MAGENTA}│
│   ${RED}[+] ${YELLOW}Github ${WHITE}> ${GREEN}github.com/grayhatzone                           ${MAGENTA}│
│   ${RED}[+] ${YELLOW}Email  ${WHITE}> ${GREEN}d4rk-cl0ud@hotmail.com                           ${MAGENTA}│
│                                                                 │
└─────────────────────────────────────────────────────────────────┘
"
}

show_banner
echo "${BLUE}[*] ${WHITE}Installing T-Hydra..."
echo
sleep 2
pkg update -y
pkg upgrade -y
pkg install -y x11-repo
pkg install -y clang make openssl openssl-tool wget openssh coreutils gtk2 gtk3
cd $HOME
git clone https://github.com/vanhauser-thc/thc-hydra.git
cd thc-hydra
chmod +x *
./configure --prefix=$PREFIX
make
make install
show_banner
echo "${BLUE}[*] ${WHITE}Hydra installed successfully!"
echo "${BLUE}[*] ${WHITE}Now you can use hydra command in your termux."
echo $RESET
exit 0
