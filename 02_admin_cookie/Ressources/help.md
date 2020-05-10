# Explications

Depuis la homepage, inspecter la page (`Ctrl + Maj + I`). Dans la console de debug on peut afficher les cookies grâce à la commande `document.cookie`.  
Grâce à cette commande on peut voir un cookie "I_am_admin=68934a3e9455fa72420237eb05902327"  
La value de ce cookie à été crypter en un hash md5, en la décryptant () on obtient la valeur "false".  
Il suffit alors de modifier cette valur en true (hash md5 : b326b5062b2f0e69046810717534cb09) avec la commande `document.cookie = 'I_am_admin=b326b5062b2f0e69046810717534cb09'`  

# Comment l'éviter ?

Ne pas utiliser les cookies pour identifier le/les admin(s) !