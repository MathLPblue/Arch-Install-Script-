# root.sh 
#!/bin/bash 

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

nome_host(){
  user_input"Por favor, insira seu nome de usuário host:"
  read -r nomehost 
  if [[ -z "$nomehost" ]]; then 
    msg_error"Você precisa ter um nome de usuário host"
    return 1 
  fi 
  return 0
}


