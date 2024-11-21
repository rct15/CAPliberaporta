#!/usr/bin/bash

#--------------------------------------------------#
# CAPliberaporta                                   #
# Atalho para liberação de porta no SELinux        #
#--------------------------------------------------#
# Como usar:                                       #
# ✪ Configure permissão de execução:               #
#   sudo chmod +x ./liberaporta.sh                 #
# ✪ Execute ./liberaporta.sh PORTA (1-65535)       #
#--------------------------------------------------#
# Versão 0.1a                                      #
# Feito por ✪ Lima 立馬沒                          #
# 21 de novembro de 2024                           #
# Capivara REPUBLICA - capivararepublica.com.br    #
#--------------------------------------------------#

if (($EUID != 0)); then
  if [[ -t 1 ]]; then
    sudo "$0" "$@"
  else
    exec 1>output_file
    gksu "$0 $@"
  fi
  exit
fi

for f; do
  echo ">$f<"
done

semanage port -a -t http -p tcp $1
