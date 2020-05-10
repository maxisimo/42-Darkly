# Explications

A la fin de chaque page du site, on peut remarquer 3 redirections vers les reseaux sociaux facebook, twitter en instagram.  
Pour changer cela il suffit tout simplement de modifier la redirection vers le site souhaité.  
Par exemple :  
`index.php?page=redirect&amp;site=facebook`  
=> `index.php?page=redirect&amp;site=https://profile.intra.42.fr/`  
  
Dans ce cas, une personne malveillante pourrait rediriger des utilisateurs vers un faux site. Ceux-ci pourraient facilement se faire avoir s'ils sont peu regardant, ils indiqueraient au faux site leurs identifiants et mdp qui seraient immédiatemment récupérés ! On appelle cela du phishing.

# Comment l'éviter ?

Effectuer au préalable un check du site ciblé (en backend bien sûr). Dans notre cas c'est assez simple, il suffit juste de vérifier s'il s'agit bien de facebook, twitter ou instagram !