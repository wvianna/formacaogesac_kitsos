#!/bin/bash

#este script foi desenvolvido para ser executado no GNU/Linux

g=`which wget`

if [ "$g" != "" ]
then
  echo ######################################
  echo "Usando o $g para download dos anexos"
  echo ######################################
  sleep 2
  mkdir videos
  cd videos
  $g -c http://www.antispam.br/videos/cgi-navegar-legendado.wmv
  $g -c http://www.antispam.br/videos/cgi-invasores-legendado.wmv
  $g -c http://www.antispam.br/videos/cgi-spam-legendado.wmv
  $g -c http://www.antispam.br/videos/cgi-defesa-legendado.wmv
  cd ..
  mkdir doc
  cd doc
  $g -c http://cartilha.cert.br/download/cartilha-seguranca-internet.pdf
else
  echo ################
  echo "Instale o wget"
  echo ################
  exit 1
fi
