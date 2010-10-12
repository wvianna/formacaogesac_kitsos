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
  cd ..
  mkdir softwares
  cd softwares
  $g -c http://dl1.avgate.net/package/wks_avira/win32/ptbr/pecl/avira_antivir_personal_ptbr.exe
  $g -c http://download833.avast.com/iavs5x/setup_av_free_por.exe
  $g -c http://www.spybotupdates.com/files/spybotsd162.exe
  $g -c http://download.bleepingcomputer.com/protected/dd22d4a60702ee4a38e111a47ec957e9/4cb4691b/ComboFix.exe
  cd ..
else
  echo ################
  echo "Instale o wget"
  echo ################
  exit 1
fi
