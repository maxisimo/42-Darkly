# Explications

En testant la page de recherche d'images on peut constater que le formulaire n'est pas protégé contre les injections sql.

(Les injections SQL figurent parmi le top 10 des failles de sécurité web selon l'OWASP.)

On fait une première injection afin de découvrir les champs de la table relative aux images dans la BDD :

- `1 OR 1=1 UNION SELECT table_name, column_name FROM information_schema.columns`

On explore la table en utilisant les différents champs maintenant connus : id, url, title, comment (table `list_images`)

- `1 OR 1=1 UNION SELECT title,comment from list_images`

On découvre : "If you read this just use this md5 decode lowercase then sha256 to win this flag ! : 1928e8083cf461a51303633093573c46"

# Comment l'éviter ?

Pour éviter les injections SQL il faut impérativement protéger les entrées utilisateur en back. Certaines fonctions permettent de le faire facilement, mais en général les framework font le travail pour nous.

```
<IfModule mod_headers.c>
Header set X-Robots-Tag "noindex, nofollow"
</IfModule>
```
