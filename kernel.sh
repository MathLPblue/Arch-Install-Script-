# kernel.sh 
#!/bin/bash 

selecionar_kernel(){
  msg_info "Lista de kernels:"
  msg_info "1) Stable"
  msg_info "2) Hardened"
  msg_info "3) LTS"
  msg_info "4) LTS"
  msg_info "Selecione o número respectivo ao kernel:"
  
  read -r selecionar_kernel
  case $selecionar_kernel in 
    1 )kernel="linux"
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
