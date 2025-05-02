# localidade.sh 
# !/bin/bash 

localidade() {
  user_input "Por favor, insira sua localidade (ex: pt_BR, pt_PT ou digite / para listar as disponíveis):"
  read -r locale
  local local1="${locale// /}"

  case "$local1" in
    pt_BR | pt_BR.UTF-8)
      local1="pt_BR.UTF-8"
      msg_info "$local1 é a localização padrão."
      ;;
    pt_PT | pt_PT.UTF-8)
      local1="pt_PT.UTF-8"
      msg_info "$local1 é a localização principal."
      ;;
    '/')
      sed -E '/^# +|^#$/d;s/^#| *$//g;s/ .*/ (Charset:&)/' /etc/locale.gen | less -M
      clear
      return 1
      ;;
    *)
      if ! grep -q "^#\?$(sed 's/[][().*^$?+|{}]/\\&/g' <<< "$locale") " /etc/locale.gen; then
        msg_error "Localidade inválida ou não suportada. Tente novamente."
        return 1
      fi
      msg_info "$locale será usada como localização principal."
      ;;
  esac
}


