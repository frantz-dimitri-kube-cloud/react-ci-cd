# 🚀 React ToDo App

Bienvenue dans le projet React ToDo App. Ce dépôt contient une application de gestion de tâches utilisée comme base pour la mise en place d'un pipeline CI/CD complet (Intégration Continue et Déploiement Continu).

---

## 📋 Prérequis

### Système d'Exploitation (OS)
Le développement et l'exécution de ce projet sont supportés sur :
* **Ubuntu** (toutes versions LTS)
* **MacOS**

*(Note : Windows n'est pas supporté pour cette configuration spécifique).*

### Installation de Node.js
Node.js est indispensable pour faire tourner l'application. Vous pouvez retrouver toutes les méthodes d'installation via CLI sur la [page officielle de Node.js](https://nodejs.org/en/download/package-manager).

#### 🐧 Installation sur Ubuntu
Exécutez les commandes suivantes dans votre terminal :

```bash
sudo apt update
sudo apt install -y nodejs npm
```

#### 🍎 Installation sur MacOS
Utilisez Homebrew pour une installation simplifiée :

```bash
brew update
brew install node
```

### 🛠️ Installation du Projet

#### Clonage du dépôt :

```bash
git clone [https://github.com/jamezmca/reactjs-todolist.git](https://github.com/jamezmca/reactjs-todolist.git)
cd reactjs-todolist
```

#### Installation des dépendances :

```bash
npm install
```

Note pour DevOps : Toutes les dépendances nécessaires au fonctionnement du projet (librairies, outils de build, etc.) sont répertoriées dans le fichier package.json. Ce fichier est le point d'entrée unique pour comprendre l'écosystème technique de l'application.

### 💻 Développement et Commandes
Pour lancer l'application en mode de développement :

```bash
npm start
```

Important : Les commandes préfixées par npm run ne sont pas universelles. Elles dépendent entièrement de la manière dont le développeur les a configurées dans la section "scripts" du fichier package.json. En tant que DevOps, vérifiez toujours ce fichier avant d'automatiser une commande dans un pipeline.

### 🧪 Tests et Qualité
La validation du code est essentielle pour garantir la stabilité de l'application. Il incombe au développeur d'écrire les tests unitaires et d'intégration, ainsi que de fournir les scripts nécessaires pour les exécuter.

```bash
npm test
```

### 🏗️ Build (Préparation à la production)
Le build transforme le code source en fichiers statiques optimisés pour le déploiement :

```bash
npm run build
```

Une fois le processus terminé, les fichiers compilés sont générés dans l'un des dossiers suivants selon la configuration du projet :

```bash
- build/
- dist/
```

Ce dossier contient l'artéfact final qui sera servi par un serveur web (comme Nginx) dans notre infrastructure conteneurisée.