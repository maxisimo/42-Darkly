# Explications

En cliquant sur le logo de la nsa on se retoruve sur l'adresse : http://192.168.1.32/index.php?page=media&src=nsa.  
On peut alors remarquer que l'image est chargée par un identifiant `src=nsa`, il s'agit donc d'une [URI](https://waytolearnx.com/2018/09/difference-entre-uri-et-url.html)  
Avec une URI on peut acceder a une ressource sans acceder a son emplacement, l'utilisation d'un [data-URI](https://developer.mozilla.org/en-US/docs/Web/HTTP/Basics_of_HTTP/Data_URIs) nous permettra donc d'utiliser un script.  

## Syntaxe

`data:[<MIME type>][;base64],<data>`  
- MIME type : type de fichier (text/html, text/plain, ...)
- base64 : optionnel
- data : la ressource a charger  

Nous conniassons le type de fichier, il ne nous reste plus que la data (notre script) :  
`<script>alert('toto')</script>`  
Il faut maintenant l'encoder en base64 étant donné qu'il va finir dans notre URI :  
`PHNjcmlwdD5hbGVydCgndG90bycpPC9zY3JpcHQ+`  
Maintenant que nous avons toutes les données on peut remplacer `nsa` par notre data-URI :  
`http://192.168.1.32/index.php?page=media&src=data:text/html;base64,PHNjcmlwdD5hbGVydCgndG90bycpPC9zY3JpcHQ+`  

# Comment l'éviter ?

Utiliser une base de donnée plutôt qu'un identifiant pour charger les ressources !
