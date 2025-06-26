#!/bin/bash

# Script de déploiement automatique de l'application QCM TSSR
# Nécessite : Git, Node.js, compte GitHub, Vercel CLI (npm install -g vercel)

echo "=== Initialisation du dépôt Git ==="
git init
git add .
git commit -m "Initial commit QCM TSSR"

echo "=== Création du dépôt GitHub (manuellement ou via GitHub CLI) ==="
echo "Veuillez créer un dépôt GitHub vide (ex: qcm-tssr) puis entrer son URL :"
read -p "URL du dépôt GitHub (https://github.com/monuser/qcm-tssr.git) : " REPO_URL

git remote add origin $REPO_URL
git push -u origin master

echo "=== Déploiement sur Vercel ==="
echo "Connexion requise à votre compte Vercel..."

# Déployer avec Vercel
vercel --prod

echo "=== Fin du déploiement ==="
echo "Votre application est en ligne ! 🎉"
