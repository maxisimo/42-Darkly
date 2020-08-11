# Explications

Cette faille consiste à injecter dans la base de donnée, dans la table des feedbacks, une ressource indésirable telle qu'un script.

Cela permet ainsi a un attaquant de pouvoir executer un script javascript chez tout les utilisateurs du site !

Ainsi entrer le mot "script" dans le message lors de l'ajout d'un feedback dévoilera le flag.

# Comment l'éviter ?

Encore une fois, il faut impérativement protéger les entrées utilisateur en back. Certaines fonctions permettent de le faire facilement, mais en général les frameworks font le travail pour nous.

On aura tendance à échapper les balises html dans ce genre de situation.
