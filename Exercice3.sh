#!/bin/bash

# Ecrire un script Bash qui permet de :
# 1. Lire le contenu d’un fichier notes.txt ligne par ligne [1 Point]
# 2. Calculer la moyenne de la classe [3 Points]
# 3. Afficher le pourcentage des échecs [3 Points]

sommeDesMoy=0
cpt=0
echecCpt=0

while read line ; do
	set -- $line
	(( cpt++ ))
	moyenne=$(bc -l <<<"scale=0; ( $3 + $4 + $5 ) / 3 ")
	sommeDesMoy=$(bc -l <<<"scale=2; $sommeDesMoy + $moyenne ")
	echo "La moyenne de $1 $2 est : $moyenne %"

    if [[ "$moyenne" -lt 60 ]]; then
    ((echecCpt++))

    fi

done < notes.txt

moyenne_group=$(bc -l <<<"scale=2; $sommeDesMoy / $cpt ")
pourcentageEchecs=$(bc -l <<<"scale=2; ($echecCpt / $cpt) * 100")

echo ""
echo "============================================================="
echo ""
echo "La moyenne Echechs de la classe est de  : $pourcentageEchecs % "
echo "La moyenne de la classe est : $moyenne_group % "


# notes.txt
# Patrice Langlois 80 60 80
# Martin Langlois 60 60 80
# Paul Tranbley 54 10 80
