# logs_msg.sh 
# !/bin/bash 

NEGRITO='\e[1m'
ROXO='\e[95m'
AZUL='\e[34m'
BRANCO='\e[97m'
ROSA='\e[95m'
PADRAO='\e[0m'

teste_print(){
  echo -"${NEGRITO}${ROXO}[${AZUL}•${BRANCO}•${ROSA}]$1${PADRAO}"
}


msg_info () {
    echo -e "${STYLE_BOLD}${COLOR_PURPLE}[ ${COLOR_WHITE}•${COLOR_PURPLE} ] $1${COLOR_RESET}"
}

user_input () {
    echo -ne "${STYLE_BOLD}${COLOR_WHITE}[ ${COLOR_PURPLE}•${COLOR_WHITE} ] $1${COLOR_RESET}"
}

msg_error () {
    echo -e "${STYLE_BOLD}${COLOR_PINK}[ ${COLOR_BLUE}•${COLOR_PINK} ] $1${COLOR_RESET}"
}

