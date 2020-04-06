clear
#cat << eof  | awk -F\; '{ if ($1 != K) { printf "\naaa;%sqqqq",$0 } 
# else {  printf " ;bbb;%s;wwww->1",$0 }; K=$1 } END { print } '   
#A;zz
#A;xx
#B;zz
#C;zz
#C;xx
#D;zz
#D;xx
#E;zz
#F;zz
#F;xx
#G;zz
#G;xx
#H;zz
#eof
#
cat LISTA1.csv LISTA2.csv | grep -v ^"MUN;CONF" | sort -t ';' -k 1 | \
awk -F\; '{ if ($1 != K) { printf "\n%s",$0 } else {  printf " ;%s",$0 }; K=$1 } END { print } '

