#!/bin/bash

# cat notes.txt

cpt_echec=0

while read note; do
	set -- $line

	moyenne=$(bc -l <<<"scale=0; ( $1 / 3 ")
	sommeDesMoy=$(bc -l <<<"scale=2; $sommeDesMoy + $moyenne ")

    if [[ "$moyenne" -lt 60 ]]; then #notes en bas de 60 sont en echecs
        ((cpt_echec++))

    fi
done < notes.txt

moyenne_group=$(bc -l <<<"scale=2; $sommeDesMoy / $cpt_echec ")
calEchecs=$(bc -l <<<"scale=2; ($echecCpt / $cpt_echec) * 100")

echo "La moyenne Echechs de la classe est de  : $calEchecs  "
echo "La moyenne de la classe est : $moyenne_group % "
