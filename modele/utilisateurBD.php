<?php 

    function inscrireBD($infos){
        require ("./modele/connect.php");
        $sql = 'INSERT INTO utilisateur (pseudo, email, mdp) VALUES ( ? , ? , ? )';
        try {
            
            $commande = $pdo->prepare($sql);
            $bool = $commande->execute(array($infos['pseudo'], $infos['email'] , $infos['mdp']));
        }
        catch (PDOException $e) {
            echo utf8_encode("Echec de select : " . $e->getMessage() . "\n");
            die();
        }
        return ;
    }

    function connectionBD($login, $mdpCrypte) {
        require ("./modele/connect.php");
    }

    function pseudoDejaPrisBD($pseudo){
        require ("./modele/connect.php");

        $sql = "SELECT pseudo FROM utilisateur WHERE pseudo=?";
        $resultat = array();
        try{
            $commande = $pdo->prepare($sql);
            $bool = $commande->execute(array($pseudo));
            if($bool){
                $resultat = $commande->fetch(PDO::FETCH_ASSOC);
                if ($resultat == false) {
                    return(false);
                }
                else {
                    return(true);
                }
            }
        }
        catch (PDOException $e) {
            echo utf8_encode("Echec de select : " . $e->getMessage() . "\n");
            die(); 
        }
    }

    

    function emailDejaUtiliseBD($email){
        require ("./modele/connect.php");

        $sql = "SELECT email FROM utilisateur WHERE email=?";
        $resultat = array();
        try{
            $commande = $pdo->prepare($sql);
            
            $bool = $commande->execute(array($email));
            if($bool){
                $resultat = $commande->fetch(PDO::FETCH_ASSOC);
                if ($resultat == false) {
                    return(false);
                }
                else {
                    return(true);
                }
            }
        }
        catch (PDOException $e) {
            echo utf8_encode("Echec de select : " . $e->getMessage() . "\n");
            die(); 
        }
    }


    
?>