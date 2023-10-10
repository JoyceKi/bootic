<?php
include('../inc/header.inc.php');
include('../inc/connexionBd.php');
$article = htmlspecialchars($_GET['id']);
// echo $article;

//faire des input et dans value="mettre les variables récupérées"
try {   
    $req = $db->query('SELECT * FROM t_produit INNER JOIN t_categorie 
    ON t_produit.id_categorie = t_categorie.id_categorie 
    WHERE id_produit='. $article);
        
    $res = $req->fetchAll();
    foreach ($res as $key => $value) { 
        echo'<div class="row">
        <div class="col-10 ms-5">        
            <form method="post" action="modif.php" enctype="multipart/form-data">
                <div class="form-floating mb-3">
                    <input type="text" name="reference" class="form-control" 
                    id="reference" value="'.$value[1].'">
                    <label for="reference">Référence</label>
                </div>
                <div class="form-floating mb-3">            
                    <input type="text" name="nom_categorie" class="form-control" 
                    id="nom_categorie" value="'.$value[12].'">
                    <label for="nom_categorie">Catégorie</label>
                </div>
                <div class="form-floating mb-3">
                    <input type="text" class="form-control" name="titre" value="'.$value[3].'">
                    <label for="titre">Nom du produit</label>
                </div>
                <div class="form-floating mb-3">
                    <textarea type="text" class="form-control" name="description">
                        "'.$value[4].'"
                    </textarea>
                    <label for="description">Description du produit</label>
                </div>
                <div class="form-floating mb-3">
                    <input type="text" class="form-control" name="couleur" value="'.$value[5].'">
                    <label for="couleur">Couleur</label>
                </div>
                <div class="form-floating mb-3">                    
                    <input type="text" class="form-control" name="taille" value="'.$value[6].'">
                    <label for="taille">Taille : </label>
                </div>
                <div class="form-floating mb-3">
                    <input type="text" class="form-control" name="public" value="'.$value[7].'">
                    <label for="public">"Public"</label>
                </div>
                <div class="input-group mb-3">
                    <input type="file" class="form-control" name="photo" value="'.$value[8].'"> 
                    <label for="photo">Photo</label>                   
                </div>
                <div class="form-floating mb-3">
                    <input type="number" class="form-control" name="prix" value="'.$value[9].'">
                    <label for="prix">Prix TTC en € </label>
                </div>
                <div class="form-floating mb-3">
                    <input type="number" class="form-control" name="stock" value="'.$value[10].'">
                    <label for="stock">Stock</label>
                </div>
                <div class="form-floating mb-3">
                    <input type="submit" class="form-control-secondary ms-5" value="Enregistrer">
                </div>
            </form>
        </div>
    </div>';


    }

    $db = null;

} catch (PDOException $e) {
    echo 'Erreur : ' . $e->getMessage();
}
include('../inc/footer.inc.php');

