# Explications

Dans la page survey, on peut voter entre Laurie, Mathieu, Thor, Ly et Zaz.  
Le but du vote n'étant pas expliqué on va partir du principe que l'on vote pour celui/celle qui a les plus beaux lacets.  
Ainsi on peut ajouter de 1 à 10 points pour la personne de notre choix, seulement si l'on regarde d'un peu plus près le code de la page on peut observer ceci :
```
<td align="center">
	<form action="#" method="post">
		<input type="hidden" name="sujet" value="2">
		<select name="valeur" onchange="javascript:this.form.submit();">
			<option value="1">1</option>
			<option value="2">2</option>
			<option value="3">3</option>
			<option value="4">4</option>
			<option value="5">5</option>
			<option value="6">6</option>
			<option value="7">7</option>
			<option value="8">8</option>
			<option value="9">9</option>
			<option value="10">10</option>
		</select>
	</form>
</td>
```
On retrouve ces lignes pour chaque personne pour qui l'on veut voter, seulement on peut modifier la value des balises "option" comme bon nous semble.  
Ainsi je peux ajouter 651665195 à Thor pour le faire monter en tête de classement ! (j'ai pas vraiment fait le calcul mais l'idée est là)

# Comment l'éviter ?

Checker en back la valeur qu'un utilisateur veut ajouter, ici c'est facile : elle doit être strictement comprise entre 1 et 10 !