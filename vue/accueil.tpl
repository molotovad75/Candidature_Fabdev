<!doctype html>
<html class="no-js" lang="fr">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
  <link rel="stylesheet" href="https://unpkg.com/leaflet@1.6.0/dist/leaflet.css"
  integrity="sha512-xwE/Az9zrjBIphAcBb3F6JVqxf46+CDLwfLMHloNu6KEQCAWi6HcDUbeOfBIptF7tcCzusKFjFw2yuvEpDL9wQ=="
  crossorigin=""/>
  <link rel="stylesheet" href="./vue/css/menu.css" media="all">
  <link rel="stylesheet" href="./vue/css/map.css" media="all">
  <link href='https://fonts.googleapis.com/css?family=PT+Sans:400,700' rel='stylesheet' type='text/css'>
  <script src="https://unpkg.com/leaflet@1.6.0/dist/leaflet.js"
  integrity="sha512-gZwIG9x3wUXg2hdXF6+rVkLF/0Vi9U8D2Ntg4Ga5I5BZpVkVxlJWbSQtXPSiUTtC0TjtGOmxa1AJPuV0CPthew=="
  crossorigin="">
</script>
  
</head>

  

<body>
<nav class="clearfix">
  <ul class="clearfix">
    <li><a href="index.php?controleur=utilisateur&action=accueil">Accueil</a></li>
    <li><a href="#">Démo</a></li>
    <li><a href="#">A propos</a></li>
    <li><a href="#">Contact</a></li>	
    <?php if (isset($_SESSION['bConnect'])){
            if ($_SESSION['bConnect']) {
              echo('<li><a href="index.php?controleur=utilisateur&action=accueilApresDeconnexion">Déconnexion</a></li>');
            }
          }
          else { 
            echo(
                  '<li><a href="index.php?controleur=utilisateur&action=redirectionInscription">Inscription</a></li>
                  <li><a href="index.php?controleur=utilisateur&action=redirectionConnexion">Connexion</a></li>'
                );
          }
    ?>
  </ul>
  <a href="#" id="pull">Menu</a>
</nav>
<div id="mapid"></div>
</body>





<script src="./vue/js/carte.js">
</script>
<script src="./vue/js/menu.js">
</script>
<script src="./vue/js/alertes.js">
</script>




<?php
if (isset($options['provenance'])) {
  switch ($options['provenance']) {
    case "inscription";
      echo('<script language="javascript">apresInscription();</script>');
      break;

    case "connexion";
      echo('<script language="javascript">apresConnexion();</script>');
      break;

    case "deconnexion";
      echo('<script language="javascript">apresDeconnexion();</script>');
      break;
  }
  
}


?>
</html>