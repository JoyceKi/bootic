<?php

include('../inc/connexionBd.php');

if (isset($_FILES['photo'])) {
    $tmpName = $_FILES['photo']['tmp_name'];
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
$cat = $_POST['nom_categorie'];
$ref = $_POST['reference'];
$titre = $_POST['titre'];
$descript = $_POST['description'];
$couleur = $_POST['couleur'];
$taille = $_POST['taille'];
$public = $_POST['public'];
$prix = $_POST['prix'];
$stock = $_POST['stock'];


try {
    $req = $db->prepare('UPDATE t_produit (reference = :reference, id_categorie = :nom_categorie, titre = :titre, description = :description, 
    couleur = :couleur, taille = :taille, public = :public, photo = :name, prix = :prix, stock = :stock');  
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