#!/bin/sh
#Auteurs BENOIT Baptiste & SEDDAR Naïm | Groupe TD2 TPC

test $# -eq 0 && echo "Be careful kiddo" && exit 1

echo "Instauration du shebang !"
echo " < tableur [-in feuille] [-out resultat] [-scin sep] [-scout sep] [-slin sep] [-slout sep] [-inverse] > "

addition() {
  test $# -ne 2 && echo "La fonction d'addition demande 2 params" && return 1
  add=`expr $1 + $2`
}

soustraction() {
  test $# -ne 2 && echo "La fonction de soustraction demande 2 params" && return 1
}

division() {
  test $# -ne 2 && echo "La fonction de division demande 2 params" && return 1
}

ln() {
  test $# -ne 1 && echo "La fonction ln() demande 1 (pas plus)." && return 1
}

addition 1 2
echo $add



# Lecture fichier ligne par ligne.
#while read line; do
#    echo $line
#done < file.txt
