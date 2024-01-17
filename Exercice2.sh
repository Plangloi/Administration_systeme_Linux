#!/bin/bash

#Demander à l'utilisateur de saisir deux entiers a et b [1 Points]
# Calculer, puis afficher la somme de tous les entiers entre a et b [4 Points]

sum=-1


read -p "Entre un Entier :" entier1
read -p "Entre le 2 Entier :" entier2


for ((i=entier1; i<entier2; i++)); do
    sum=$((sum + i))
done

echo "La somme des nombres entre $entier1 et $entier2 est : $sum"


