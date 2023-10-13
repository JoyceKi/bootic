<?php
// Affiche tous les articles de la boutique
include('./inc/header.inc.php');

function createCarousel($db, $cat)
{
    $req = $db->query('SELECT id_produit, t_produit.id_categorie, titre, description, photo, nom_categorie FROM t_produit INNER JOIN t_categorie 
    ON t_produit.id_categorie = t_categorie.id_categorie WHERE t_produit.id_categorie=' . $cat);

    $res = $req->fetchAll();
    echo '<div class="col-12 col-md-6 col-lg-3">
        <div id="carouselExampleDark_'.$cat.'" class="carousel carousel-dark slide">    
        <div class="carousel-inner mt-5">';
    foreach ($res as $key => $value) {
        echo '  <div class="carousel-item ">
                <a href="produit.php?id='.$value[0].'"><img src="inc/img/' . $value[5] . '/' . $value[4] . '" class="d-block w-100" alt="' . $value[2] . '"></a>
                <div class="carousel-caption d-none d-md-block mt-5">
                    <p id="caption">' . $value[3] . '</p>
                </div>
                </div>';
    }
    echo '</div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleDark_'.$cat.'" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleDark_'.$cat.'" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
                    </div>
                </div>';
} // fin de fonction
// connexion à la bdd et appels de la fonction
try {
    $username = "root";
    $password = '';
    $dsn = 'mysql:host=localhost;dbname=dbbootic;port=3306;charset=utf8';
    $db = new PDO($dsn, $username, $password);
    $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    echo '<div class="container mt-5">
    <div class="row align-content-center">';
        createCarousel($db, 1);
        createCarousel($db, 3);
        createCarousel($db, 4);
        createCarousel($db, 5);
    echo '</div></div>';

    //$req->closeCursor();
    $db = null;

} catch (PDOException $e) {
    echo 'Erreur : ' . $e->getMessage();
}
include('inc/footer.inc.php');
