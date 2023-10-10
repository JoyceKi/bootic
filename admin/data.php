<?php

include('../inc/connexionBd.php');

if (isset($_FILES['photo'])) {
    $tmpName = $_FILES['photo']['temp_Name'];
    $name = $_FILES['photo']['name'];
    $size = $_FILES['photo']['size'];
    $error = $_FILES['photo']['error'];
}

//on explose le nom de la photo pour récupérer l'extension de celle-ci 
//on la convertit en minuscules et on prend que la fin de $imgExtension
$imgExtension = explode('.', $name);
$extension = strtolower(end($imgExtension));
// je spécifie les extension que j'accepte
$extensions = ['jpg', 'png', 'jpeg', 'gif', 'webp'];
//Taille max que l'on accepte
$maxSize = 400000;

if (in_array($extension, $extensions) && $size <= $maxSize && $error == 0) {
    move_uploaded_file($tmpName, './inc/img/' . $name);
} else {
    echo "Une erreur est survenue";
}

echo '<pre>';
var_dump($_POST);
echo '</pre>';
$cat = $_POST['id_categorie'];
$ref = $_POST['reference'];
$titre = $_POST['titre'];
$descript = $_POST['description'];
$couleur = $_POST['couleur'];
$taille = $_POST['taille'];
$public = $_POST['public'];
// $photo = $_POST['photo'];
$prix = $_POST['prix'];
$stock = $_POST['stock'];


try {
    $req = $db->prepare('INSERT INTO t_produit (reference, id_categorie, titre, 
    description, couleur, taille, public, photo, prix,stock) 
    VALUE (:reference, :id_categorie, :titre, :description, :couleur, :taille, :public, :name, :prix, :stock)');
    $req->bindValue(':reference',$ref,PDO::PARAM_STR_CHAR);
    $req->bindValue(':id_categorie',$cat,PDO::PARAM_INT);
    $req->bindValue(':titre',$titre,PDO::PARAM_STR_CHAR);
    $req->bindValue(':description',$descript,PDO::PARAM_STR_CHAR);
    $req->bindValue(':couleur',$couleur,PDO::PARAM_STR_CHAR);
    $req->bindValue(':taille',$taille,PDO::PARAM_STR_CHAR);
    $req->bindValue(':public',$public,PDO::PARAM_STR_CHAR);
    $req->bindValue(':name',$name,PDO::PARAM_STR);
    $req->bindValue(':prix',$prix,PDO::PARAM_INT);
    $req->bindValue(':stock',$stock,PDO::PARAM_INT);
    $req->execute();

    $db = null;     
 } catch (PDOException $e) {
     echo 'Erreur : ' . $e->getMessage();
 }




// header('Location: index.php');
