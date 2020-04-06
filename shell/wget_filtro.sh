#!/bin/bash
# $ GPL2 by yjmenezes at gmail.com versao 1.0 2012-02-17 $
# ver 1.1 2013-06-19
# baixa arquivos, diretorios e subdiretorios filtrando 
if [ $# -lt 1 ]
then
    echo "Se o url_fonte contiver espacos nos diretorios, use %20"
    echo $(basename $0) "url_fonte  [dir_destino_cp]" 1>&2
    exit 1
fi
cd /tmp/
if [ $# -ge 2 ]
then 
    mkdir -p $2
    cd $2
fi
# -nH  Disable generation of host-prefixed directories.
# --no-parent  Do not ever ascend to the parent directory 
# --cut-dirs=2 
wget -r -nH --cut-dirs=2 --no-parent --reject="index.html*"  $1
exit 0
#--------------------------------------------------------------------------
tar cpzvf  saida_$(date +%F).tar.bz2    diretotio/

for i in {1..31}; do printf "http://www.saude.pr.gov.br/arquivos/File/CORONA_%02d032020.pdf\n" $i; done | while read nome; do wget_filtro.sh $nome /tmp/lixo/; done 

http://cartognu.org/q20200331/#6/-24.886/-52.954

for i in *pdf; do pdftotext -layout -eol unix -nopgbrk $i $(basename $i .pdf).txt; done

http://www.saude.pr.gov.br/arquivos/File/CORONA_31032020.pdf

sed 's/./\U&/g' < saida_sem_acento.csv > saida_sem_acento_maiuscula.csv 
