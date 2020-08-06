# Explications

En bas de la page principale on peut cliquer sur le lien "Born2Sec".  
Celui-ci nous mène sur la page http://192.168.8.159/?page=e43ad1fdc54babe674da7c7b8f0127bde61de3fbe01def7d00f151c2fcca6d1c  
Dans les commentaires de la page on peut retrouver des indices :  
```
<!--
You must cumming from : "https://www.nsa.gov/" to go to the next step
-->

Let's use this browser : "ft_bornToSec". It will help you a lot.
```

Il faut changer ses headers pour faire croire qu'on vient de la page https://www.nsa.gov/ et pour faire croire qu'on utilise un navigateur custom nommé : "ft_bornToSec"  
Nous pourrons réaliser ceci grâce à la commande curl :  
`curl -e https://www.nsa.gov/ -A "ft_bornToSec" "http://192.168.1.32/?page=e43ad1fdc54babe674da7c7b8f0127bde61de3fbe01def7d00f151c2fcca6d1c" | grep flag`
Avec laquelle on obtiendra le flag !

# Comment l'éviter ?

Il s'agit déjà d'une protection mais on pourrait imaginer un système d'identification en plus pour éviter que n'importe qui puisse utiliser une simple commande curl.

# Bonus

e43ad1fdc54babe674da7c7b8f0127bde61de3fbe01def7d00f151c2fcca6d1c décrypté avec sha256 donne "TAMERE", c'est pas très gentil.
