<h2 align="center">Projet de Développement Web avec JEE</h2><br><br>

<h3 align="center" >Création d"un site web qui propose des projets IoT</h3><br><br><br>

![IotCraft Logo](lien-vers-votre-logo.png)  
<h3 align="center">IotCraft - Plateforme de Projets IoT</h3><br><br><br><br><br><br><br><br><br><br><br>








Réalisé par : <br>
&nbsp;&nbsp;&nbsp;&nbsp;Nouhaila Sabri<br><br><br><br>
<h4 align="center">Année universitaire 2023/2024</h4><br><br>

# Table of Contents
1. [Introduction Générale](#introduction-générale)
2. [Description du Projet](#description-du-projet)
   1. [Description](#description)
   2. [Fonctionnalités Utilisateur](#fonctionnalités-utilisateur)
   3. [Fonctionnalités Administrateur](#fonctionnalités-administrateur)
3. [Outils Utilisés](#outils-utilisés)
    1. [Java Enterprise Edition (JEE)](#java-enterprise-edition-jee)
    2. [Eclipse IDE](#eclipse-ide)
    3. [MySQL Database](#mysql-database)
   4. [Apache Tomcat](#apache-tomcat)
4. [Frontend](#frontend)
    1. [Technologies Utilisées](#technologies-utilisées)
    2. [Pages Développées](#pages-développées)
        1. [Page d'Accueil (Home)](#page-daccueil-home)
        2. [Page de Connexion (Sign In)](#page-de-connexion-sign-in)
        3. [Page d'Inscription (Sign Up)](#page-dinscription-sign-up)
        4. [Espace Utilisateur](#espace-utilisateur)
        5. [Espace Administrateur](#espace-administrateur)
5. [Backend](#backend)
     1. [Gestion des Utilisateurs](#gestion-des-utilisateurs)
      1. [Établissement de la Connexion avec MySQL](#établissement-de-la-connexion-avec-mysql)
      2. [Gestion de la Table des Utilisateurs](#gestion-de-la-table-des-utilisateurs)
      3. [Inscription d'un Utilisateur (Sign Up)](#inscription-dun-utilisateur-sign-up)
      4. [Connexion d'un Utilisateur (Sign In)](#connexion-dun-utilisateur-sign-in)
      5. [Espace Utilisateur](#espace-utilisateur)
   2. [Gestion des Projets](#gestion-des-projets)
      1. [Gestion de la Table des Projets](#gestion-de-la-table-des-projets)
      2. [Ajout de Projets par l'Utilisateur](#ajout-de-projets-par-lutilisateur)
      3. [Ajout, Modification et Suppression de Projets par l'Administrateur](#ajout-modification-et-suppression-de-projets-par-ladministrateur)
      4. [Page d'Accueil Personnalisée](#page-daccueil-personnalisée)
   3. [Gestion des Recherches](#gestion-des-recherches)
      1. [Fonctionnement](#fonctionnement)
      2. [Résultats](#résultats)
      3. [Cohérence de l'Expérience Utilisateur](#cohérence-de-lexpérience-utilisateur)
6. [Conclusion](#conclusion)

# Introduction Générale
<p align="justify">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;IotCraft résulte d'une analyse approfondie de la croissance remarquable du domaine de l'Internet des objets (IoT). Dans un contexte de connectivité et de technologie en rapide expansion, l'IoT émerge comme un secteur clé, redéfinissant fondamentalement nos interactions avec le monde environnant.

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Face à l'essor exponentiel de l'IoT, de nouvelles perspectives émergent, suscitant un intérêt accru pour l'exploration et la collaboration au sein de ce domaine dynamique. Dans ce contexte opportun, IotCraft se positionne comme une plateforme web dédiée à l'IoT, intégrant la puissance de Java Enterprise Edition (JEE) pour simplifier tant la gestion que le développement.
    
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Notre objectif fondamental est de créer un espace en ligne novateur, facilitant l'exploration, la découverte et l'engagement dans des projets IoT. En tirant parti de la robustesse de JEE, notre ambition est de simplifier les processus, d'offrir une expérience utilisateur transparente et d'encourager l'engagement actif des passionnés d'IoT.
  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Le choix délibéré de Java Enterprise Edition (JEE) comme cadre de développement pour IotCraft est motivé par la nécessité de garantir une gestion efficiente, une extensibilité et une sécurité accrue. JEE offre une architecture robuste, nous permettant de relever les défis spécifiques de l'IoT, tout en assurant une expérience utilisateur fluide.
 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Notre plateforme met l'accent sur une expérience utilisateur optimale, caractérisée par une navigation intuitive et des fonctionnalités claires. En permettant aux utilisateurs de découvrir, d'en apprendre davantage sur les projets IoT et de s'impliquer activement, IotCraft aspire à devenir un catalyseur pour l'innovation collaborative dans le domaine de l'IoT.
  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;IotCraft n'est pas simplement un site web ; il s'agit d'une initiative ancrée dans le contexte dynamique de l'IoT, cherchant à unir les esprits créatifs, à favoriser la découverte de projets novateurs et à contribuer à la croissance continue de cette sphère technologique en plein essor.
</p>

# Description du Projet

## Objective du site

<p align="justify">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Le projet vise le développement d'une application web basée sur Java Enterprise Edition (JEE) dédiée à l'apprentissage pratique des projets IoT. Son objectif principal est de fournir une plateforme inclusive et accessible, guidant les utilisateurs, qu'ils soient amateurs d'électronique, étudiants, développeurs ou simplement curieux, à travers la création et la mise en œuvre de projets IoT.

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Cette application complète propose des idées innovantes, des instructions détaillées et une bibliothèque de ressources pour chaque étape du processus de développement IoT. Ses fonctionnalités incluent des guides détaillés, des exemples de projets, des didacticiels interactifs et une plateforme de partage de projets, favorisant ainsi la collaboration au sein de la communauté.

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;En résumé, l'application vise à démocratiser l'apprentissage des projets IoT en offrant une expérience immersive, en encourageant la collaboration communautaire et en stimulant l'engagement dans le domaine de l'Internet des Objets.
 </p>

## Fonctionnalités Utilisateur
- Les utilisateurs peuvent parcourir une liste de projets IoT disponibles sur la plateforme.
- L'accès à des informations détaillées sur chaque projet est disponible, y compris la description, les composants utilisés, et des images.
- Une fonction de recherche permet aux utilisateurs de trouver des projets en fonction de leur nom.
- Les utilisateurs peuvent également effectuer des recherches spécifiques en utilisant des composants spécifiques comme critères de filtrage.
- Les utilisateurs ont la possibilité de créer un compte en fournissant des informations de base telles que leur nom,leur prénom,leur adresse e-mail et un mot de passe sécurisé.
- Une fois le formulaire d'inscription soumis, un compte utilisateur est créé, leur permettant d'accéder à des fonctionnalités personnalisées.
- Les utilisateurs enregistrés peuvent se connecter en utilisant leur adresse e-mail et leur mot de passe.
- Une fois connectés, ils ont accès à des fonctionnalités supplémentaires telles que l'ajout de projets.
- Les utilisateurs connectés ont la possibilité d'ajouter leurs propres projets à la plateforme.
- Ils peuvent fournir des détails tels que la description du projet, la liste des composants utilisés, des instructions détaillées, et une image pour illustrer le projet.

## Fonctionnalités Administrateur
- L'administrateur a un compte spécifique qui lui permet de se connecter à une interface dédiée.
- Ajout de Projets : L'administrateur a la possibilité d'ajouter de nouveaux projets à la plateforme.
- Édition de Projets : Il peut modifier les détails des projets existants, y compris la description, les composants, et les instructions.
- Suppression de Projets : L'administrateur peut supprimer des projets du système si nécessaire.
- Lorsqu'un utilisateur soumet un nouveau projet, l'administrateur peut le passer en revue.
- Il a la possibilité d'approuver le projet s'il correspond aux normes de la plateforme.
- Si un projet soumis ne respecte pas les règles ou les normes, l'administrateur peut le supprimer de la plateforme.
- L'administrateur peut consulter la page des projets pour avoir une vue d'ensemble de tous les projets disponibles sur la plateforme.

# Outils Utilisés
## Java Enterprise Edition (JEE)
- **Description :** JEE est une spécification Java dédiée au développement d'applications d'entreprise. Il fournit des API pour les fonctionnalités telles que la gestion des transactions, la persistance des données, et les services web.
- **Rôle dans le Projet :** JEE est le cadre principal utilisé pour le développement de l'application web IoTCraft. Il offre une architecture robuste pour gérer les défis spécifiques de l'Internet des Objets.

## Eclipse IDE
- **Description :** Eclipse est un environnement de développement intégré (IDE) open-source largement utilisé pour le développement Java. Il offre des fonctionnalités avancées telles que l'édition de code, le débogage, et la gestion de projets.
- **Rôle dans le Projet :** Eclipse sert d'IDE principal pour le développement de l'application IoTCraft. Il offre une interface conviviale et des outils puissants pour faciliter le processus de développement.

## MySQL Database
- **Description :** MySQL est un système de gestion de base de données relationnelle open-source. Il est largement utilisé pour la gestion efficace des données dans les applications web.
- **Rôle dans le Projet :** MySQL est utilisé comme système de gestion de base de données pour stocker les informations relatives aux utilisateurs, aux projets, et aux interactions sur la plateforme IoTCraft.

## Apache Tomcat
- **Description :** Apache Tomcat est un serveur web et un conteneur de servlet open-source. Il implémente les spécifications Java Servlet, JavaServer Pages (JSP), et Java Expression Language (EL).
- **Rôle dans le Projet :** Tomcat est utilisé comme serveur d'application pour déployer et exécuter l'application web JEE IoTCraft. Il gère les demandes HTTP et assure le bon fonctionnement de l'application.
# Frontend
## Technologies Utilisées
- **HTML**
- **CSS**
- **JavaScript**
- **JavaServer Pages (JSP)**

## Pages Développées

### Page d'Accueil (Home)
La page d'accueil est la première interface que les visiteurs du site rencontrent. Elle offre une navigation claire pour les utilisateurs et les administrateurs. Les éléments clés de cette page incluent :
- Des boutons pour accéder aux différents projets disponibles sur la plateforme.
- Des options de connexion et d'inscription pour les utilisateurs non connectés.
- Des liens vers les pages dédiées pour la connexion (Sign In) et l'inscription (Sign Up).

### Page de Connexion (Sign In)
La page de connexion permet aux utilisateurs enregistrés d'accéder à leur compte. Elle comprend les éléments suivants :
- Un formulaire de connexion avec des champs pour l'adresse e-mail et le mot de passe.
- Un lien pour réinitialiser le mot de passe en cas d'oubli.
- Un bouton de connexion permettant d'accéder à l'espace utilisateur.

### Page d'Inscription (Sign Up)
La page d'inscription offre aux nouveaux utilisateurs la possibilité de créer un compte sur la plateforme. Elle inclut :
- Un formulaire d'inscription avec des champs pour le nom, le prénom, l'adresse e-mail, et le mot de passe.
- Des indications sur les exigences de création du mot de passe.
- Un bouton d'inscription pour finaliser le processus.

### Espace Utilisateur
Une fois connecté, l'utilisateur accède à un espace personnalisé qui peut inclure :
- une page  qui permet d'ajouter de nouveaux projets.
- Des informations sur le profil de l'utilisateur.

### Espace Administrateur
L'espace administrateur est réservé aux utilisateurs ayant des privilèges d'administration. Il offre des fonctionnalités telles que :
- Page de gestion des projets existants (ajout, édition, suppression).
- page pourL'approbation des projets soumis par les utilisateurs.
- Page pour La consultation de la liste complète des projets sur la plateforme.

Ces pages sont développées en utilisant HTML, CSS, et JavaScript, avec l'intégration de JavaServer Pages (JSP) pour dynamiser le contenu et interagir avec le backend développé avec Java Enterprise Edition (JEE).

# Backend
## Gestion des Utilisateurs

Dans la partie backend de notre application, la gestion des utilisateurs est cruciale pour assurer une expérience utilisateur fluide et sécurisée. Voici un aperçu détaillé de cette fonctionnalité :

### Établissement de la Connexion avec MySQL

Nous avons mis en place des classes Java dédiées, notamment `SingleCon`, qui permettent d'établir une connexion sécurisée avec notre base de données MySQL. Ces classes gèrent la configuration de la connexion et facilitent les interactions avec la base de données.

### Gestion de la Table des Utilisateurs

Nous utilisons une table utilisateur avec des champs tels que `id`, `firstname`, `lastname`, `email`, et un mot de passe haché. La classe `USERDaoImpl` est spécifiquement conçue pour gérer les opérations sur cette table, notamment la méthode `adduser(User user)` pour ajouter un nouvel utilisateur.

### Inscription d'un Utilisateur (Sign Up)

Lorsqu'un utilisateur s'inscrit, les données sont collectées via la servlet `SignUpServlet`. Nous utilisons la bibliothèque JBCrypt pour sécuriser le mot de passe en le hachant. Si l'email existe déjà dans la base de données, ce qui est vérifié avec la méthode 'emailExists', l'utilisateur est redirigé vers la page d'inscription avec un message explicatif.

### Connexion d'un Utilisateur (Sign In)

La connexion d'un utilisateur est gérée par la servlet `LoginServlet`, qui vérifie les informations fournies par l'utilisateur par rapport à celles enregistrées dans la base de données. Des messages d'erreur appropriés sont renvoyés si nécessaire, sinon l'utilisateur est dirigé vers une page utilisateur personnalisée.

### Espace Utilisateur
Une fois connecté, l'utilisateur accède à un espace personnalisé qui peut inclure la possibilité d'ajouter de nouveaux projets. Cette fonctionnalité est implémentée à l'aide de la servlet `AddProjectServlet`. Lorsque l'utilisateur souhaite ajouter un nouveau projet, la servlet collecte les informations nécessaires et utilise la classe `PendingProjectsDAOImpl` pour interagir avec la table 'pendingprojects' dans la base de données.

La méthode clé utilisée dans `PendingProjectsDAOImpl` pour ajouter un projet est 'addProject'. Cette méthode prend en compte les détails du projet fournis par l'utilisateur, tels que la description, les composants utilisés, et les instructions détaillées et une image. Elle assure l'ajout de ces informations à la table pendingprojects, où elles sont en attente d'approbation.

Ainsi, le processus d'ajout d'un nouveau projet implique la collecte des données par la servlet, l'utilisation de la classe DAO pour interagir avec la base de données, et le stockage des informations dans la table pendingprojects jusqu'à ce qu'elles soient examinées et approuvées par l'administrateur.


## Gestion des Projets

La gestion des projets constitue une autre facette essentielle de notre backend. Elle permet aux administrateurs d'ajouter, de modifier et de supprimer des projets sur la plateforme IoT. Voici une vue détaillée de cette fonctionnalité :

### Gestion de la Table des Projets

Nous avons créé une table des projets qui enregistre des détails tels que `id`, `nom`, `description`, `composants`, et `image`. La classe ProjectDAOImpl offre des méthodes pour ajouter, éditer et supprimer des projets.

### Gestion des Projets par l'Admin

Une servlet dédiée, `CrudServlet`, gère le processus d'ajout, de modification et de suppression de projets. Les détails du projet, tels que la description, les composants et une image illustrative, sont récupérés via cette servlet. Ces informations sont ensuite traitées à l'aide de méthodes appropriées dans la classe `ProjectDAOImpl`.

#### Ajout de Projets

La méthode addProject permet d'ajouter un nouveau projet à la table des projets.

#### Modification de Projets

La méthode updateProject permet à l'administrateur de faire des modifications sur un projet déjà existant.

#### Suppression de Projets

La méthode deleteProject permet à l'administrateur de supprimer un projet de la plateforme IoT.

### Gestion des Projets Soumis par les Utilisateurs

Lorsqu'un utilisateur soumet un nouveau projet, il est initialement ajouté à la table pendingprojects. 
#### Approbation de Projets

L'administrateur peut approuver un projet en utilisant la méthode `addProject` de la classe `ProjectsDAOImpl` . Cela transfère le `projet` de la table `pendingprojects` à la table principale des projets.

#### Supression de Projets
L'administrateur peut supprimer un projet en utilisant la méthode `deleteUProject` de la classe `PendingProjectsDAOImpl`. 

## Gestion des Recherches

Lorsqu'un utilisateur effectue une recherche sur le site IotCraft, la servlet SearchServlet entre en jeu pour traiter cette requête. Cette servlet agit comme un intermédiaire entre l'interface utilisateur et la base de données.

### Fonctionnement 
La servlet récupère la valeur de recherche entrée par l'utilisateur et utilise une méthode avancée de la classe ProjectDaoImpl. Cette méthode exécute une requête SQL basée sur la clause LIKE, permettant des résultats flexibles même avec des termes de recherche partiels.

### Résultats 
Si des projets correspondent à la recherche, ils sont affichés à l'utilisateur. En cas d'absence de résultats, l'utilisateur est redirigé vers une page d'erreur.

### Cohérence de l'Expérience Utilisateur 
Cette gestion des recherches vise à fournir une expérience utilisateur fluide. En présentant des résultats pertinents et en gérant les cas où aucune correspondance n'est trouvée, IotCraft offre une expérience transparente aux utilisateurs, renforçant ainsi son engagement envers la satisfaction des utilisateurs.


# Conclusion
En conclusion, IotCraft représente une plateforme innovante qui s'inscrit dans le contexte dynamique de l'Internet des objets (IoT). En répondant aux besoins croissants de la communauté technologique, notre site offre une interface conviviale pour explorer, contribuer et collaborer sur des projets IoT passionnants. La combinaison de fonctionnalités utilisateur, de gestion de projets, et d'une recherche efficace crée un écosystème en ligne stimulant pour les amateurs et les experts en IoT. Nous sommes fiers de contribuer à l'évolution de ce domaine en plein essor et nous nous engageons à améliorer continuellement l'expérience des utilisateurs sur IotCraft. Que l'aventure IoT commence !
