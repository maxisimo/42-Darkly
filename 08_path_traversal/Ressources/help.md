# Explications

Les attaques dites `directory traversal ou path traversal` consistent à modifier le chemin de l'arborescence dans l'URL afin d’accéder à des répertoires du site non autorisés.  

Tous les sites Web sont construits de la même manière et tous les sites Web fonctionnant sous UNIX contiennent un dossier: `/etc/passwd`  

`/etc/passwd` est un fichier texte qui contient les attributs de chaque utilisateur ou compte sur un ordinateur exécutant Linux ou un autre système d'exploitation de type Unix.  

Les permissions pour `/etc/passwd` sont définies par défaut pour qu'il puisse être lu par n'importe quel utilisateur sur le système.  

En ajoutant `/?page=../` à notre url et grâce aux indices affichés sur le site à chaque tentative, nous avons réussi à remonter jusqu'au fichier `/etc/passwd`.  
Chemin : `http://[Darkly_IP]/?page=../../../../../../../etc/passwd`.  

# Comment l'éviter ?

Pour se protéger contre ce type de faille il est indispensable de bien configurer son serveur web afin d'éviter à un utilisateur de naviguer sur des pages auxquelles il n'est pas censé avoir accès.