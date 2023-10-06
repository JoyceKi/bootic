<?php 
// Affiche tous les articles de la boutique
include('inc/header.inc.php');

function createCarousel($res, $cat){
    echo'<div class="container">
        <div class="row">
        <div class="col-6 ">
        <div id="carouselExampleDark" class="carousel carousel-dark slide">    
        <div class="carousel-inner test">';
    foreach ($res as $key => $value) {

        if ($value[2] == 1){           
        echo '  <div class="carousel-item ">
                <img src="inc/img/'.$value[12].'/'.$value[8].'" class="d-block w-100" alt="'.$value[3].'">
                <div class="carousel-caption d-none d-md-block">
                    <h5>'.$value[3].'</h5>
                    <p>'.$value[4].'</p>
                </div>
                </div>';
        }
    }

        echo '</div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
                    </div>
                </div>';
}

try {
    $username = "root";
    $password = '';
    $dsn = 'mysql:host=localhost;dbname=dbbootic;port=3306;charset=utf8';
    $db = new PDO($dsn, $username, $password);
    $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    $req = $db->query('SELECT * FROM t_produit INNER JOIN t_categorie ON (t_produit.id_categorie=t_categorie.id_categorie)');

    /*######### FETCHALL ############*/
    $res = $req->fetchAll();
    createCarousel($res, )
    // echo "<pre>";
    // var_dump($res);
    // echo "</pre>";
    echo'<div class="container">
        <div class="row">
        <div class="col-6 ">
        <div id="carouselExampleDark" class="carousel carousel-dark slide">    
        <div class="carousel-inner test">';
    foreach ($res as $key => $value) {

        if ($value[2] == 1){           
        echo '  <div class="carousel-item ">
                <img src="inc/img/'.$value[12].'/'.$value[8].'" class="d-block w-100" alt="'.$value[3].'">
                <div class="carousel-caption d-none d-md-block">
                    <h5>'.$value[3].'</h5>
                    <p>'.$value[4].'</p>
                </div>
                </div>';
        }
    }

        echo '</div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
                    </div>
                </div>';
        /*#####################*/
        /*######### FETCH ############*/
        /*$res = $req->fetch();
        echo "<pre>";
        var_dump($res);
        echo "</pre>";
        while ($tuple = $req->fetch()) {
            echo $tuple['num'] . " " . $tuple['nom'] . " " . $tuple['prenom'] . "<br>";
        }*/
        /*#####################*/
} catch (PDOException $e) {
    echo 'Erreur : ' . $e->getMessage();

$req->closeCursor();
$db = null;
}

/*try {
    $username = "root";
    $password = '';
    $dsn = 'mysql:host=localhost;dbname=dbbootic;port=3306;charset=utf8';
    $db = new PDO($dsn, $username, $password);
    $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    $req = $db->query('SELECT * FROM t_produit INNER JOIN t_categorie ON (t_produit.id_categorie=t_categorie.id_categorie)');

   
    $res = $req->fetchAll();

    echo'<div class="col-6>
        <div id="carouselExampleDarka" class="carousel carousel-dark slide">    
        <div class="carousel-inner AA">';
    foreach ($res as $key => $value) {

    if ($value[2] == 2){           
    echo '  <div class="carousel-item ">
            <img src="inc/img/'.$value[12].'/'.$value[8].'" class="d-block w-100" alt="'.$value[3].'">
            <div class="carousel-caption d-none d-md-block">
                <h5>'.$value[3].'</h5>
                <p>'.$value[4].'</p>
            </div>
            </div>';
        }
    }

    echo '</div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleDarka" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleDarka" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
            </div>
            </div>
        </div>
    </div>';

} catch (PDOException $e) {
echo 'Erreur : ' . $e->getMessage();

$req->closeCursor();
$db = null;
}*/

include('inc/footer.inc.php');