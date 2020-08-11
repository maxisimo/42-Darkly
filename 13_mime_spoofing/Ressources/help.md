# Explications

Le mime spoofing consiste à faire croire au site que l'on upload une image alors que ce n'est pas le cas.

On trouve cette faille sur la page d'upload d'une nouvelle image.

On utilise simplement curl pour envoyer le fichier "indésirable" et faire croire que l'on envoie une image

Voir le script run.sh

# Comment l'éviter ?

Il faut vérifier en back le type du fichier et ne jamais faire confiance à l'utilisateur.
