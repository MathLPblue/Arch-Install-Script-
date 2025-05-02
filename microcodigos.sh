# microcodigos.sh 
# !/bin/bash

microcodigos(){
  PROCESSADOR=$(grep vendor_id /proc/cpuinfo)
  if [[ "$PROCESSADOR" == *"AuthenticAMD"* ]]; then
    msg_info"Um processador da AMD foi detectado"
    msg_info"Os microcódigos da AMD serão instalados!"
    microcode="amd-ucode"

  else 
    msg_info"Um processador da Intel foi detectado"
    msg_info"Os microcódigos da Intel serão instalados!"
    microcode="intel-ucode"
  fi 
}

