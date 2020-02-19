<!doctype html>
<html class="no-js" lang="fr">
<head>
<title>Se connecter</title>
<meta charset="UTF-8">
<link rel="stylesheet" href="./vue/css/connexion.css" media="all">
</head>

<div class="login-page">
  <div class="form">
    <form class="login-form" action="index.php?controleur=utilisateur&action=verifConnexion" method="post">
      <input type="text" name="pseudo" placeholder="Pseudo"/>
      <input type="password" name="mdp" placeholder="Mot de passe"/>
      <button type="submit" name="connexion" value="test">Connexion</button>
      <p class="message">Pas encore inscrit ? <a href="#">Créer un compte</a></p>
    </form>
  </div>
</div>

</html>