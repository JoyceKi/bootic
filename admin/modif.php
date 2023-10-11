<?php
include('../inc/connexionBd.php');

//variable avec laquelle je récupère l'id_produit 
//que j'ai envoyée depuis gestion_modif.php avec action="modif.php?id='.$value[0].'"
$articleModif = htmlspecialchars($_GET['id']);
// echo $articleModif;

echo '<pre>';
var_dump($_FILES);
echo '</pre>';

if (isset($_FILES['photo'])) {
    $tmpName = $_FILES['photo']['tmpName'];
    $name = $_FILES['photo']['name'];
    $size = $_FILES['photo']['size'];
    $error = $_FILES['photo']['error'];
}

//on explose le nom de la photo pour récupérer l'extension de celle-ci 
//on la convertit en minuscules et on prend que la fin de $imgExtension
$imgExtension = explode('.', $name);
$extension = strtolower(end($imgExtension));
// je spécifie les extensions que j'accepte
$extensions = ['jpg', 'png', 'jpeg', 'gif', 'webp'];
//Taille max que l'on accepte
$maxSize = 400000;


if ($_FILES['photo']['size'] === 0){

}
if (in_array($extension, $extensions) && $size <= $maxSize && $error == 0) {
    // move_uploaded_file($tmpName, './inc/img/' . $name);

    try{
        $req = $db->prepare("UPDATE t_produit
        SET   photo =  :photo
        WHERE id_produit = $articleModif LIMIT 1 ");
        $req->bindValue(':photo', $name, PDO::PARAM_STR);
        $req->execute();
        } catch (PDOException $e) {
            echo 'Erreur : ' . $e->getMessage();
        }
} else {
    echo "Une erreur est survenue";
}

//déclaration des variables récupérées dans le post pour les utiliser 
//dans le try
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
$prix = $_POST['prix'];
$stock = $_POST['stock'];

//requète à la base de données pour faire les modifs sur la ligne de l'id-produit 
try {
    $req1 = $db->prepare('UPDATE t_produit 
    SET reference = :reference,
    id_categorie = :id_categorie,
    titre = :titre, 
    description = :description, 
    couleur = :couleur, 
    taille = :taille, 
    public = :public,  
    prix = :prix, 
    stock = :stock
    WHERE id_produit = :articleModif');  
    $req1->bindValue(':articleModif', $articleModif,PDO::PARAM_INT);
    $req1->bindValue(':reference',$ref,PDO::PARAM_STR_CHAR);
    $req1->bindValue(':id_categorie',$cat,PDO::PARAM_INT);
    $req1->bindValue(':titre',$titre,PDO::PARAM_STR_CHAR);
    $req1->bindValue(':description',$descript,PDO::PARAM_STR_CHAR);
    $req1->bindValue(':couleur',$couleur,PDO::PARAM_STR_CHAR);
    $req1->bindValue(':taille',$taille,PDO::PARAM_STR_CHAR);
    $req1->bindValue(':public',$public,PDO::PARAM_STR_CHAR);
    $req1->bindValue(':prix',$prix,PDO::PARAM_INT);
    $req1->bindValue(':stock',$stock,PDO::PARAM_INT);
    $req1->execute();

    $db = null;     
 } catch (PDOException $e) {
     echo 'Erreur : ' . $e->getMessage();
 }