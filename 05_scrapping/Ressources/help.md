# Explications

On se trouve ici sur dans la page http://192.168.1.32/.hidden/  
Il s'agit ici de chercher le flag parmis les nombreux README existant. On va donc utiliser la méthode du scrapping, c'est à dire récupérer le contenu d'une page web grâce à un ou plusieurs scripts.  
Dans notre script (voir scrapping_script.sh) on va récupérer tous les README avec wget puis chercher le flag.  

## wget

-np: Cette option nous permet de ne pas remonter au répertoire parent lors de la récursion.

-nd: Cette option nous permet de récupérer tous les fichiers sur un seul répertoire.

-r: Option de récursion.

-A "README": Option de recursion, on accepte seulement les fichiers qui commencent par "README".

-e robots=off:	Option d'execution, permet de ne pas enregistrer robots.txt, mais son contenu. Voir [Robot Exclusion](https://www.gnu.org/software/wget/manual/html_node/Robot-Exclusion.html#Robot-Exclusion)

Avec ce script, et après un long moment, on obtient le flag.