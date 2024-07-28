# chatm1ssi

## Description
Ce projet est une application de chat développée en Flutter, utilisant Firebase pour l'authentification et la gestion des messages. L'application permet aux utilisateurs de s'inscrire, de se connecter et de discuter en temps réel.

## Fonctionnalités
L'application de chat comprend les fonctionnalités suivantes :

### Authentification des utilisateurs
- **Inscription** : Les nouveaux utilisateurs peuvent créer un compte en fournissant leur adresse e-mail et un mot de passe.
- **Connexion** : Les utilisateurs existants peuvent se connecter en utilisant leurs identifiants.
- **Déconnexion** : Les utilisateurs peuvent se déconnecter de l'application.
- **Navigation conditionnelle** : Les utilisateurs sont redirigés vers la page d'accueil ou la page de connexion en fonction de leur état d'authentification.

### Chat en temps réel
- **Envoi de messages** : Les utilisateurs peuvent envoyer des messages en temps réel à d'autres utilisateurs connectés.
- **Réception de messages** : Les messages envoyés par d'autres utilisateurs apparaissent en temps réel dans la conversation.
- **Historique des messages** : Les messages sont stockés dans Firebase et peuvent être consultés à tout moment.

### Interface utilisateur
- **Page d'accueil** : Affiche les discussions disponibles et permet d'accéder aux paramètres de l'application.
- **Page de chat** : Affiche les messages d'une conversation spécifique, permet d'envoyer et de recevoir des messages.
- **Page d'inscription et de connexion** : Permet aux utilisateurs de s'inscrire ou de se connecter.
- **Page des paramètres** : Permet aux utilisateurs de modifier leurs préférences, y compris le thème de l'application.

### Personnalisation de l'interface
- **Thèmes** : Les utilisateurs peuvent basculer entre un thème clair et un thème sombre pour l'application.
- **Composants personnalisés** : Utilisation de boutons, champs de texte et tiroirs de navigation personnalisés pour une meilleure expérience utilisateur.

### Configuration Firebase
- **Options Firebase** : Configuration des options Firebase pour l'application, y compris l'authentification et le stockage des messages.

## Installation
Pour installer et exécuter ce projet localement, suivez ces étapes :

1. Clonez le dépôt :
    ```bash
    git clone <URL_DU_DÉPÔT>
    ```
2. Accédez au répertoire du projet :
    ```bash
    cd <nom_du_dossier_du_projet>
    ```
3. Installez les dépendances :
    ```bash
    flutter pub get
    ```
4. Configurez Firebase en suivant les instructions du fichier `firebase_options.dart`.
5. Exécutez l'application :
    ```bash
    flutter run
    ```

## Contribution
Les contributions sont les bienvenues. Veuillez ouvrir une issue pour discuter de ce que vous aimeriez changer avant de soumettre une pull request.

## Licence
Ce projet est sous licence MIT. Voir le fichier [LICENSE](LICENSE) pour plus de détails.

## Auteurs
- Votre Nom - Développeur Principal
- Autres Contributeurs

---

Merci d'avoir utilisé cette application de chat. Nous espérons que vous trouverez ce projet utile et instructif.

