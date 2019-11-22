#!/bin/sh
# Auteurs 
#   BENOIT Baptiste
#   MONCHAUX Clément
#   SEDDAR Naïm

# L3 Informatique
# Groupe TD2 TPC

test $# -eq 0 && echo "Be careful kiddo" && exit 1

#echo "Instauration du shebang !"
errorMsg="Use : tableur [-in feuille] [-out resultat] [-scin sep] [-scout sep] [-slin sep] [-slout sep] [-inverse] "

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

#addition 1 2
#echo $add

while test $# -ge 1
do
  case $1 in
  "-in") 
    source=$2
    echo "Dans la feuille <$2>";;
  "-out")
    dest=$2 
    echo "Résultat dans <$2>";;
  "-scin") 
    scin=$2
    echo "Séparateur de col en source used <$2>";;
  "-slin")
    slin=$2 
    echo "Séparateur de ligne en source used <$2>";;
  "-scout")
    scout=$2 
    echo "Séparateur de col en dest used <$2>";;
  "-slout") 
    slout=$2
    echo "Séparateur de ligne en dest used <$2>";;
  "-inverse")
    inverse=1
    echo "Inversion des lignes et colonnes";;
  *) echo "Arg <$1 $2> non reconnue. Arrêt du script." && exit 1;;
  esac
  shift
  shift
done
echo "\n"

# les non-spécifié #
test -z $scin && scin="\t" && echo "Default -scin => <$scin>"
test -z $slin && slin="\n" && echo "Default -slin => <$slin>"
test -z $scout && scout=$scin && echo "Default -scout => <$scout>"
test -z $slout && slout=$slin && echo "Default -slout => <$slout>"
test -z $inverse && inverse=0 && echo "Default -inverse => <$inverse>"
# ---------------- #
echo "\n"
# test du fichier en arg '-in' #
if test -n $source -a -e $source
then 
  echo "On lira <$source> plus tard"
else
  echo "On lira la sortie standard"
fi

echo "Note : Le fichier '-in' doit exister pour être utiliser."
# ---------------------------- #
echo "\n"
# test du fichier en arg '-out' #
if test -n $dest -a -e $dest
then 
  echo "Le résultat sera redirigé vers <$dest>"
else
  echo "Le résultat sera affiché sur la sortie standard"
fi

echo "Note : Le fichier '-out' doit exister pour être utiliser."
# ---------------------------- #

# Lecture fichier ligne par ligne.
#while read line; do
#    echo $line
#done < file.txt
