# TP Hadoop – Manipulation du système de fichiers HDFS

📂 Ce projet contient un TP sur la gestion de fichiers dans HDFS avec Hadoop (Big Data).

## 🔧 Objectifs

- Créer une arborescence HDFS (cours/TPs en JAVA et CPP)
- Effectuer des opérations : ajout, copie, renommage, suppression
- Utiliser des commandes `hdfs dfs`
- Travailler en cluster ou en Docker

## 📁 Structure

- `commands/hdfs_commands.sh` : script complet des commandes HDFS
- `docker/` : configuration Docker pour cluster Hadoop local
- `rapport/` : rapport PDF ou docs associés

## ▶️ Exécution

```bash
hdfs dfs -mkdir -p /BDDC/JAVA/Cours
hdfs dfs -put CoursJAVA1 /BDDC/JAVA/Cours/
...
