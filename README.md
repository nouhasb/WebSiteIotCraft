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
   1. [Petite Description](#petite-description)
   2. [Fonctionnalités Utilisateur](#fonctionnalités-utilisateur)
   3. [Fonctionnalités Administrateur](#fonctionnalités-administrateur)
3. [Outils Utilisés](#outils-utilisés)
    1. [Java Enterprise Edition (JEE)](#Java Enterprise Edition (JEE))
    2. [Fonctionnalités Utilisateur](#fonctionnalités-utilisateur)
    3. [Fonctionnalités Administrateur](#fonctionnalités-administrateur)
5. [Frontend](#frontend)
6. [Backend](#backend)
7. [Tests et Validation](#tests-et-validation)
8. [Conclusion](#conclusion)

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
#### Java Enterprise Edition (JEE) :

- Description :JEE est une spécification Java dédiée au développement d'applications d'entreprise. Il fournit des API pour les fonctionnalités telles que la gestion des transactions, la persistance des données, et les services web.
- Rôle dans le Projet : JEE est le cadre principal utilisé pour le développement de l'application web IoTCraft. Il offre une architecture robuste pour gérer les défis spécifiques de l'Internet des Objets.
#### Eclipse IDE :

- Description : Eclipse est un environnement de développement intégré (IDE) open-source largement utilisé pour le développement Java. Il offre des fonctionnalités avancées telles que l'édition de code, le débogage, et la gestion de projets.
- Rôle dans le Projet : Eclipse sert d'IDE principal pour le développement de l'application IoTCraft. Il offre une interface conviviale et des outils puissants pour faciliter le processus de développement.
#### MySQL Database :

- Description : MySQL est un système de gestion de base de données relationnelle open-source. Il est largement utilisé pour la gestion efficace des données dans les applications web.
- Rôle dans le Projet : MySQL est utilisé comme système de gestion de base de données pour stocker les informations relatives aux utilisateurs, aux projets, et aux interactions sur la plateforme IoTCraft.
#### Apache Tomcat :

- Description : Apache Tomcat est un serveur web et un conteneur de servlet open-source. Il implémente les spécifications Java Servlet, JavaServer Pages (JSP), et Java Expression Language (EL).
- Rôle dans le Projet : Tomcat est utilisé comme serveur d'application pour déployer et exécuter l'application web JEE IoTCraft. Il gère les demandes HTTP et assure le bon fonctionnement de l'application.
# Frontend


# Backend


# Tests et Validation


# Conclusion

