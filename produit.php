<?php
// Fiche d'un produit en particulier, on vérifie tjs s'il y a connexion
session_start();

if (isset($_SESSION['pseudo'])) {
    $pseudo = $_SESSION['pseudo'];
}
include('inc/header.inc.php');
include('inc/connexionBd.php');
$idProduit = $_GET['id'];

try {
   
    $req = $db->query('SELECT * FROM t_produit INNER JOIN t_categorie 
    ON t_produit.id_categorie = t_categorie.id_categorie 
    WHERE id_produit='. $idProduit);
        
        $res = $req->fetchAll();
        
        foreach ($res as $key => $value) { 
           
          echo '<main class="container-fluid">
                    <div class="row">
                        <div class="col-sm-12 col-md-6 col-lg-9 my-5 mx-5">
                            <div id="card" class="card" style="width: 18rem">
                                <img src="inc/img/'.$value[12].'/'.$value[8].'" class="card-img-top" alt="'.$value[3].'">
                                <div class="card-body">
                                <h5 class="card-title">'.$value[3].'</h5>
                                <p class="card-text">'.$value[4].'</p>
                                <p class="card-text">'.$value[9].' €</p>
                                <a href="panier.php" class="btn btn-secondary">Ajouter au panier</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </main>';
            
        }   

    

    //$req->closeCursor();
    $db = null;

} catch (PDOException $e) {
    echo 'Erreur : ' . $e->getMessage();
}

include('inc/footer.inc.php');