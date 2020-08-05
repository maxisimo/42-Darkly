# Explications

Une attaque par force brute, ou en anglais : `bruteforce`, est une méthode utilisée en cryptanalyse pour découvrir un mot de passe ou une clef. Ce type d'attaque est en réalité la moins subtile de toutes. Il s'agit de tester, une à une, toutes les combinaisons possibles..  

En jetant un coup d'oeil sur Internet on peut rapidement trouver une liste des mots de passes les plus utilisés, parfois même par année. Nous avons donc utilisé une de ces liste dans notre script afin de tester parmis les 25 mots de passes les plus utilisés avec pour login `admin` (`root` est également une possibilité) dans la page SignIn : `http://192.168.1.32/?page=signin`.

# Comment l'éviter ?

L'attaque par force brute se fonde sur le nombre de tentatives : plus l'attaquant essaye des mots de passe et plus ses chances de trouver la clef augmentent.  

Il suffit donc d'empêcher d'entrer plus de X tentatives par intervalle de temps.