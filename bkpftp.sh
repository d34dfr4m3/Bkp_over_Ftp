#!/bin/bash
HOST='ip_addr'
USER='usuario_ftp'
PASS='senha_ftp'
SAFE_DIR='/dir/remoto/pra/guardar/arquivos'
BKP_DIR='/dir/pra/jogar/pro/remoto/*'

ftp -inv $HOST <<EOF
user $USER $PASS 
pass
cd $SAFE_DIR
mput $BKP_DIR
bye
EOF
