# Projet Unix & Shell

L’objectif de ce projet est de réaliser en shell (/bin/sh) un mini tableur. Ce tableur prendra en paramètre une feuille de calculs et devra fournir en retour le tableau complètement renseigné.

## Auteurs

SEDDAR Naïm</br>
MONCHAUX Clément</br>
BENOIT Baptiste</br>

## Execution

```bash
./tableur [-in feuille] [-out résultat] [-scin sep] [-scout sep] [-slin sep] [-slout sep] [-inverse] 
```

## Fonctionalités implémentées
- **[cel]** : permet d’obtenir la valeur de la cellule cel
- **+(val1,val2)** : somme de val1 et val2 où vali est soit un valeur numérique, soit une référence à une cellule, soit le résultat d’un autre calcul (ex : =+(3,+(l2c4,7)) eﬀectue la somme de 3 avec le résultat de la somme de 7 et du contenu de la cellule de ligne numéro 2 et de colonne 4)
- **-(val1,val2)** : diﬀérence entre val1 et val2 
- ***(val1,val2)** : produit de val1 par val2 
- **/(val1,val2)** : quotient de val1 et val2 
- **ˆ(val1,val2)** : élève val1 à la puissance val2 
- **ln(val1)** : calcule le logarithme népérien de val1 
- **e(val1)** : calcule l’exponentiation de e à la puissance val1 
- **sqrt(val1)** : calcule la racine carrée de val1 
- **somme(cel1,cel2)** : calcule la somme des cellules appartenant à l’intervalle de cel1 à cel2 (ex:=somme(l1c1,l2c4) eﬀectue la somme des cellules l1c1, l1c2, l1c3, l1c4, l2c1, l2c2, l2c3, l2c4
- **moyenne(cel1,cel2)** : calcule la moyenne des cellules appartenant à l’intervalle de cel1 à cel2 
- **variance(cel1,cel2)** : calcule la variance des cellules appartenant à l’intervalle de cel1 à cel2 
- **ecarttype(cel1,cel2)** : calcule l’écart type des cellules appartenant à l’intervalle de cel1 à cel2 
- **min(cel1,cel2)** : fournit la plus petite valeur des cellules de l’intervalle de cel1 à cel2 
- **max(cel1,cel2)** : fournit la plus grande valeur des cellules de l’intervalle de cel1 à cel2 
- **concat(val1,val2)** : eﬀectue la concaténation des deux chaînes de caractères val1 et val2 
- **length(val)** : fournit la longueur de la chaîne de caractères val
- **subsitute(val1,val2,val3)** : remplace dans la chaîne de caractères val1, la chaîne val2 par val3 
- **size(val)** : récupère la taille du ﬁchier identiﬁé par val
- **lines(val)** : récupère le nombre de lignes du ﬁchier identiﬁé par val
- **shell(val)** : remplace le contenu de la cellule par le résultat de la commande val

## Difficultés recontrées
Bon Naïm je te laisse raconter ta vie ici ...

## Part de travail
SEDDAR  Naïm - 33%</br>
MONCHAUX  Clément - 33%</br>
BENOIT  Baptiste - 33%</br>