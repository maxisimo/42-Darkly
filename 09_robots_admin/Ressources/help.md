# Explications

On regarde s'il existe un fichier robots.txt, c'est un fichier texte, son placement est à la racine des site web. Il a pour but d’interdire aux robots des moteurs de recherche l’indexation de certaines zones de votre site internet.

Dans `http://192.168.1.32/robots.txt` on trouve donc deux dossiers en disallow `/whatever et /.hidden`  

Dans /whatever on trouve un htpasswd qui store un login:password :  
`8621ffdbc5698829397d97767ac13db3`. En tapant directement cette chaîne de caractère sur internet on peut rapidement voir qu'elle est crypté en md5. Le hash décrypté correspond au mdp `dragon`.  

En essayant ce couple login/pawd dans l'url `http://192.168.1.32/admin`, souvent utilisé pour accéder à l'interface d'administration d'un site web, on obtient le flag.

# Comment l'éviter ?

L’idéal pour cacher vos fichiers secrets au sein de votre site, sans le crier sur tous les toits avec un beau `Disallow` dans le fichiers robot, c’est d’opter pour un fichier .htaccess dans le répertoire du fichier à protéger (en l'occurrence `/whatever`). En tapant cette commande dans ce fichier .htaccess :  
```
<IfModule mod_headers.c>
Header set X-Robots-Tag "noindex, nofollow"
</IfModule>
```