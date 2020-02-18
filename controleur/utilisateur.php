<?php

    function accueil(){
        require (".vue/accueil.tpl");
    }


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
            accueilApresInscription();
        }
        else {

            redirectionInscription();
        }
    }
    
    function accueilApresInscription(){
        // $options="inscription";
        require ("./vue/accueil.tpl");
    }

    function redirectionInscription(){
        require ("./vue/inscription.tpl");
    }

    function inscrire($infos) {
        require_once ("./modele/utilisateurBD.php");
        inscrireBD($infos);
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
?>