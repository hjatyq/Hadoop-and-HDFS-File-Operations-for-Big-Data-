#!/bin/bash

# Big Data : Manipulation et gestion des fichiers dans HDFS
# Auteur : [Ton nom]
# Date : [JJ/MM/AAAA]

echo "=== Étape 1 : Création de l'arborescence /BDDC ==="
hdfs dfs -mkdir /BDDC
hdfs dfs -mkdir /BDDC/CPP
hdfs dfs -mkdir /BDDC/CPP/Cours
hdfs dfs -mkdir /BDDC/CPP/TPs
hdfs dfs -mkdir /BDDC/JAVA
hdfs dfs -mkdir /BDDC/JAVA/Cours
hdfs dfs -mkdir /BDDC/JAVA/TPs

echo "=== Étape 2 : Création des fichiers CoursCPP1, 2, 3 (localement) ==="
echo "Contenu du fichier CoursCPP1" > CoursCPP1
echo "Contenu du fichier CoursCPP2" > CoursCPP2
echo "Contenu du fichier CoursCPP3" > CoursCPP3

echo "=== Étape 2 : Upload des fichiers vers HDFS ==="
hdfs dfs -put CoursCPP1 /BDDC/CPP/Cours/
hdfs dfs -put CoursCPP2 /BDDC/CPP/Cours/
hdfs dfs -put CoursCPP3 /BDDC/CPP/Cours/

echo "=== Étape 3 : Affichage du contenu des fichiers CoursCPP ==="
hdfs dfs -cat /BDDC/CPP/Cours/CoursCPP1
hdfs dfs -cat /BDDC/CPP/Cours/CoursCPP2
hdfs dfs -cat /BDDC/CPP/Cours/CoursCPP3

echo "=== Étape 4 : Copier les fichiers dans JAVA/Cours ==="
hdfs dfs -cp /BDDC/CPP/Cours/CoursCPP1 /BDDC/JAVA/Cours/
hdfs dfs -cp /BDDC/CPP/Cours/CoursCPP2 /BDDC/JAVA/Cours/
hdfs dfs -cp /BDDC/CPP/Cours/CoursCPP3 /BDDC/JAVA/Cours/

echo "=== Étape 5 : Suppression + renommage dans JAVA/Cours ==="
hdfs dfs -rm /BDDC/JAVA/Cours/CoursCPP3
hdfs dfs -mv /BDDC/JAVA/Cours/CoursCPP1 /BDDC/JAVA/Cours/CoursJAVA1
hdfs dfs -mv /BDDC/JAVA/Cours/CoursCPP2 /BDDC/JAVA/Cours/CoursJAVA2

echo "=== Étape 6 : Création des fichiers TP localement ==="
echo "Contenu TP1CPP" > TP1CPP
echo "Contenu TP2CPP" > TP2CPP
echo "Contenu TP1JAVA" > TP1JAVA
echo "Contenu TP2JAVA" > TP2JAVA
echo "Contenu TP3JAVA" > TP3JAVA

echo "=== Étape 7 : Upload TP CPP vers HDFS ==="
hdfs dfs -put TP1CPP /BDDC/CPP/TPs/
hdfs dfs -put TP2CPP /BDDC/CPP/TPs/

echo "=== Étape 8 : Upload TP JAVA vers HDFS ==="
hdfs dfs -put TP1JAVA /BDDC/JAVA/TPs/
hdfs dfs -put TP2JAVA /BDDC/JAVA/TPs/

echo "=== Étape 9 : Affichage récursif de /BDDC ==="
hdfs dfs -ls -R /BDDC

echo "=== Étape 10 : Suppression du fichier TP1CPP ==="
hdfs dfs -rm /BDDC/CPP/TPs/TP1CPP

echo "=== Étape 11 : Suppression du répertoire JAVA ==="
hdfs dfs -rm -r /BDDC/JAVA

echo "=== Fin du script  HDFS ==="
