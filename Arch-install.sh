#!/usr/bin/env -S bash -e 
clear 

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

selecionar_kernel(){
  msg_info "Lista de kernels:"
  msg_info "1) Stable"
  msg_info "2) Hardened"
  msg_info "3) LTS"
  msg_info "4) LTS"
  msg_info "Selecione o número respectivo ao kernel:"
  
  read -r selecionar_kernel
  case $selecionar_kernel in 
    1 )
      kernel="linux"
      msg_info "Kernel selecionado: Stable"
      ;;
    2 )
      kernel="linux-hardened"
      msg_info "Kernel selecionado: Hardened"
      ;;
    3 )
      kernel="linux-lts"
      msg_info "Kernel selecionado: LTS"
      ;;
    4 )
      kernel="linux-lts"
      msg_info "Kernel selecionado: LTS"
      ;;
    * )
      msg_error "Opção inválida!"
      return 1
      ;;
  esac
}

root_senha(){
  user_input"Por favor, escolha sua senha para o usuário root:"
  read -r -s rootsenha 
  if [[ -z "$rootsenha" ]]; then 
    echo 
    msg_error"Você precisa escolher uma senha para usuário root, tente de novo."
    return 1
  fi 
  echo 
  user_input"Por favor, coloque sua senha de novo."
  read -r -s rootsenha2 
  echo
  if [[ "$rootsenha"!="$rootsenha2" ]]; then
    msg_error"As senhas não são iguais, tente de novo."
    return 1
  fi 

}

microcodes(){
  PROCESSADOR=$(grep vendor_id /proc/cpuinfo)
  if [[ "$PROCESSADOR" == *"AuthenticAMD"* ]]; then
    msg_info"Um processador da AMD foi detectado"
    msg_info"Os microcodes da AMD serão instalados!"
    microcode="amd-ucode"

  else 
    msg_info"Um processador da Intel foi detectado"
    msg_info"Os microcodes da Intel serão instalados!"
    microcode="intel-ucode"
  fi 
}

nome_host(){

}


