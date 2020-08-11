# Explications

Comme la faille précédente, celle-ci est une injection sql donc il suffit de suivre le même procédé.

En testant la page de recherche de membres on peut constater que le formulaire n'est pas protégé contre les injections sql.

On fait une première injection afin de découvrir les champs de la table relative aux images dans la BDD :

- `1 OR 1=1 UNION SELECT table_name, column_name FROM information_schema.columns`

On explore la table en utilisant les différents champs maintenant connus : user_id, first_name, last_name, town, country, planet, Commentaire, countersign (table `users`)

- `1 OR 1=1 UNION SELECT Commentaire, countersign from users `

On découvre le Commentaire suivant : "Decrypt this password -> then lower all the char. Sh256 on it and it's good !"

On obtient alors "FortyTwo". Il n'y a plus qu'à lowercase le tout et hash en Sh256.

# Comment l'éviter ?

Pour éviter les injections SQL il faut impérativement protéger les entrées utilisateur en back. Certaines fonctions permettent de le faire facilement, mais en général les frameworks font le travail pour nous.

```
<IfModule mod_headers.c>
Header set X-Robots-Tag "noindex, nofollow"
</IfModule>
```
