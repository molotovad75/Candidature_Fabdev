<?php

    


    
    
    
    

    function inscrire($infos) {
        require_once ("./modele/utilisateurBD.php");
        inscrireBD($infos);
    }
    
    function connecte(){
        
    }
    



    /* FONCTIONS DE VERIFICATION */

    /* vérifie que les informations entrées lors de la connexion sont coérentes avec la base de données */
    function verifConnexion(){
        $_POST['options'] = array();

        if (pseudoInexistant()){
            $_POST['options']['pseudoInexistant'] = true;
        }
        if (mdpIncorrect($_POST['pseudo'])){
            $_POST['options']['mdpIncorrect'] = true;
        }
        if (count($_POST['options']) == 0){
            var_dump("vous êtes bien connecté");
        }
        else {
            var_dump("vous n'êtes pas connecté");
            var_dump($_POST['options']);
        }
    }

    /* vérifie que les informations entrées lors de l'inscription sont coérentes entre elles mais aussi avec la base de données */
    function verifInscription(){
        //$options est un tableau qui spécifie les erreurs lors d'une inscription.
        $_POST['options'] = array();
        if (mdpDifferents()) {
            $_POST['options']['mdpDifferents'] = true;
        }
        if (pseudoDejaPris()) {
            $_POST['options']['pseudoDejaPris'] = true;
        }
        if (emailDejaUtilise()) {
            $_POST['options']['emailDejaUtilise'] = true;
        }
        if (count($_POST['options']) == 0) {
            $infos = $_POST;
            $infos['mdp'] = password_hash($infos['mdp'],PASSWORD_DEFAULT);
            inscrire($infos);
            accueilApresInscription();
        }
        else {
            redirectionInscription();
        }
    }

    function mdpDifferents(){
        return ($_POST['mdp'] != $_POST['mdp_bis']);
    }

    function pseudoDejaPris(){
        require_once ("./modele/utilisateurBD.php");
        return pseudoDejaPrisBD($_POST['pseudo']);
    }

    function emailDejaUtilise(){
        require_once ("./modele/utilisateurBD.php");
        return (emailDejaUtiliseBD($_POST['email']));
    }
    
    function mdpIncorrect($pseudo,$mdpSaisi){
        require_once ("./modele/utilisateurBD.php");
        return (password_verify($mdpSaisi,recupMdpBD($pseudo)));
    }
    
    function pseudoInexistant($pseudo){
        require_once ("./modele/utilisateurBD.php");
        return pseudoInexistantBD($pseudo);
    }

    /* FIN DES FONCTIONS DE VERIFICATION */










    /* FONCTIONS DE REDIRECTION */

    function accueil(){
        require ("./vue/accueil.tpl");
    }

    function accueilApresInscription(){
        $options['provenance'] = "inscription";
        require ("./vue/accueil.tpl");
    }

    /* redirige vers la page inscription */
    function redirectionInscription(){
        require ("./vue/inscription.tpl");
    }

    /* redirige vers la page connexion */
    function redirectionConnexion(){
        require ("./vue/connexion.tpl");
    }

    /* FIN DES FONCTIONS DE REDIRECTION */
?>