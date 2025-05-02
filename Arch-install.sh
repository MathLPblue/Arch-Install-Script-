# Arch-install.sh 
#!/usr/bin/env -S bash -e
clear 

source kernel.sh 
source localidade.sh 
source root.sh 
source microcodigos.sh 
source logs_msg.sh 



echo -ne "${NEGRITO}${ROSA}
.--------------------------------------------------------.
|  ____                     __     ___           _       |
| | __ )  ___ _ __ ___      \ \   / (_)_ __   __| | ___  |
| |  _ \ / _ \ '_ ` _ \      \ \ / /| | '_ \ / _` |/ _ \ |
| | |_) |  __/ | | | | |      \ V / | | | | | (_| | (_) ||
| |____/ \___|_| |_| |_|       \_/  |_|_| |_|\__,_|\___/ |
|                                                        |
'---------------------------------------------------------
${PADRAO}"
msg_info"Seja bem vindo(a), Arch linux será instalado em seu computador."




