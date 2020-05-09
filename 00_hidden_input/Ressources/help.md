# Expliquations

Depuis la page home, cliquer sur `Sign in` puis `I forgot my password`  

On se retrouve alors sur la page de récupération de mdp (/?page=recover)  

En inspectant le code source de la page on peut observer le formulaire lié au boutton `SUBMIT` :  
```
<form action="#" method="POST">
	<input type="hidden" name="mail" value="webmaster@borntosec.com" maxlength="15">
	<input type="submit" name="Submit" value="Submit">
</form>
```
Il contient un champ caché de type hidden qui a pour value l'adresse mail de récupération de mdp  

Ainsi on peut rediriger le mail en changeant la valeur de l'input, il suffit ensuite de cliquer sur le bouton `SUBMIT` pour afficher le flag  

# Comment l'éviter ?

Tout simplement gérer ce genre d'infos en back !