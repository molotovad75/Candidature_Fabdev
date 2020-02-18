<!DOCTYPE html>
<html>
<head>
<title>Creative Colorlib SignUp Form</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="application/x-javascript">
	addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
	function hideURLbar(){ window.scrollTo(0,1); } 
</script>
<!-- Custom Theme files -->
<link href="./vue/css/inscription.css" rel="stylesheet" type="text/css" media="all" />
<!-- //Custom Theme files -->
<!-- web font -->
<link href="//fonts.googleapis.com/css?family=Roboto:300,300i,400,400i,700,700i" rel="stylesheet">
<!-- //web font -->
</head>
<body>
	<!-- main -->
	<div class="main-w3layouts wrapper">
		<h1>Créer un compte</h1>
		<div class="main-agileinfo">
			<div class="agileits-top">
                <form action="index.php?controleur=utilisateur&action=verifInscription" method="post">
					
					<input type="text" name=pseudo placeholder=
						<?php 	
								if ($_POST['options']['pseudoDejaPris']) {
									
									echo("\"Le pseudo " . $_POST['pseudo'] . " est déjà utilisé\"" . " class=\"text rouge\" ");
								}
								else if (isset($_POST['pseudo'])) {
									echo("\"Pseudo\" class=\"text \" value=\"". $_POST['pseudo'] ."\"");
								}
								else {
									echo("\"Pseudo\" class=\"text \"");
								}
						?> 
						required="">
					<input type="email" name="email" placeholder=
						<?php 	
								if ($_POST['options']['emailDejaUtilise']) {
									
									echo("\"L'email " . $_POST['email'] . " est déjà utilisé\"" . " class=\"text rouge email\" ");
								}
								else if (isset($_POST['pseudo'])) {
									echo("\"Email\" class=\"text email\" value=\"". $_POST['email'] ."\"");
								}
								else {
									echo("\"Email\" class=\"text email\"");
								}
						?> 
					
					required="">
					<input class="text" type="password" name="mdp" placeholder="Mot de passe" required="">
					<input class="text w3lpass" type="password" name="mdp_bis" placeholder="Confirmation de mot de passe" required="">
					<?php 	
								if ($_POST['options']['mdpDifferents']) {
									
									echo("<div class=\"text mdpDifferents\">Vous avez entré des mots de passe différents</div>");	
								}
					?> 
					<div class="wthree-text">
						<label class="anim">
							<input type="checkbox" class="checkbox" required="">
							<span>J'accepte les termes et conditions</span>
						</label>
						<div class="clear"> </div>
					</div>
					<input type="submit" value="S'ENREGISTRER">
				</form>
				<p>Vous avez déjà un compte ?<a href="#"> Se connecter !</a></p>
			</div>
		</div>

		<div class="colorlibcopy-agile">
			<h2><p><a href="./index.php" target="_blank">Retour</a></p></h2>
		</div>
		
		<ul class="colorlib-bubbles">
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
		</ul>
	</div>
	<!-- //main -->
</body>
</html>