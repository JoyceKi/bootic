<?php
session_start();

// on vérifie que la variable de session pseudo existe
if (isset($_SESSION['pseudo'])) {
    $pseudo = $_SESSION['pseudo'];
}

include('../inc/connexionBd.php');

$action = isset($_POST['action']);
$connexion = isset($_POST['connexion']);
echo '<pre>';
var_dump($action);
echo '</pre>';

if ($action == "inscription") {
    $pseudo = htmlspecialchars($_POST['pseudo']);
    $mdp = htmlspecialchars($_POST['mdp']);
    $pwd_hash = password_hash($mdp, PASSWORD_DEFAULT);
    $nom = htmlspecialchars($_POST['nom']);
    $prenom = htmlspecialchars($_POST['prenom']);
    $email = htmlspecialchars($_POST['email']);
    $civilite = htmlspecialchars($_POST['civilite']);
    $ville = htmlspecialchars($_POST['ville']);
    $cp = htmlspecialchars($_POST['cp']);
    $adresse = htmlspecialchars($_POST['adresse']);



    $req = $db->prepare('INSERT INTO t_membre (pseudo, mdp, nom, 
    prenom, email, civilite, ville, cp,adresse) 
    VALUE (:pseudo, :mdp, :nom, :prenom, :email, :civilite, :ville, :cp, :adresse)');
    
    $req->bindValue(':pseudo',$pseudo,PDO::PARAM_STR_CHAR);
    $req->bindValue(':mdp',$pwd_hash,PDO::PARAM_STR);
    $req->bindValue(':nom',$nom,PDO::PARAM_STR_CHAR);
    $req->bindValue(':prenom',$prenom,PDO::PARAM_STR_CHAR);
    $req->bindValue(':email',$email,PDO::PARAM_STR_CHAR);
    $req->bindValue(':civilite',$civilite,PDO::PARAM_STR_CHAR);
    $req->bindValue(':ville',$ville,PDO::PARAM_STR_CHAR);
    $req->bindValue(':cp',$cp,PDO::PARAM_INT);
    $req->bindValue(':adresse',$adresse,PDO::PARAM_STR);
    
    $req->execute();
    $db = null;
    
    echo 'Entrée ajouté dans la table';
    
} elseif ($connexion == "connexion") {
    $pseudo = htmlspecialchars($_POST['pseudo']);
    $mdp = htmlspecialchars($_POST['mdp']);

    // on vérifie que le pseudo existen en bdd
    $req = $db->prepare('SELECT * FROM t_membre WHERE pseudo = ?');

    $req -> bindValue(1,$pseudo, PDO::PARAM_STR);
    $req->execute();
    $result = $req->fetch(PDO::FETCH_BOTH);
    echo '<pre>';
    var_dump($result);
    echo '</pre>';
    if ($result) {
        if (password_verify($mdp, $result['mdp'])) {
            // on définit des variables de session
            $_SESSION['pseudo'] = $result['pseudo'];
            header('location: ../profil.php');
        } else {
            echo "Vous n'êtes pas inscrit(e)";
        }
    } else {
        echo "Vous devez d'abord vous inscrire";
    }
    $db = null;
}   

$logout = null;
if ($logout == 1) {
    session_destroy();
    header('Location: index.php');
}

include('../inc/footer.inc.php');