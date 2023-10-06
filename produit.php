<?php
// Fiche d'un produit en particulier
include('inc/header.inc.php');

try {
    $username = "root";
    $password = '';
    $dsn = 'mysql:host=localhost;dbname=dbbootic;port=3306;charset=utf8';
    $db = new PDO($dsn, $username, $password);
    $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    

    //$req->closeCursor();
    $db = null;

} catch (PDOException $e) {
    echo 'Erreur : ' . $e->getMessage();
}

include('inc/footer.inc.php');