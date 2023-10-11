<?php
include('./header.admin.php');
include('../inc/connexionBd.php');
?>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>formulaire</title>
</head>

<body>
    <div class="row">
        <div class="col-10">        
            <form method="post" action="data.php" enctype="multipart/form-data">
                <div class="form-floating mb-3">
                    <input type="text" name="reference" class="form-control" id="reference">
                    <label for="reference">Référence</label>
                </div>
                <div class="form-floating mb-3">            
                    <select class="form-select" name="id_categorie" id="id_categorie">
                        <option value="">---</option>
                        <option value=1>tshirt</option>
                        <option value=3>Sweater</option>
                        <option value=4>Casquette</option>
                        <option value=5>Sac</option>
                    </select>
                    <label for="id_categorie">Catégorie</label>
                </div>
                <div class="form-floating mb-3">
                    <input type='text' class="form-control" name="titre" id="titre">
                    <label for="titre">Nom du produit</label>
                </div>
                <div class="form-floating mb-3">
                    <textarea type='text' class="form-control" name="description" id="description"></textarea>
                    <label for="description">Description du produit</label>
                </div>
                <div class="form-floating mb-3">
                    <input type='text' class="form-control" name="couleur" id="couleur">
                    <label for="couleur">Couleur</label>
                </div>
                <div class="form-floating mb-3">
                    
                <select class="form-select" name="taille" id="taille">
                        <option value="">---</option>
                        <option value="XXL">XXL</option>
                        <option value="XL">XL</option>
                        <option value="L">L</option>
                        <option value="M">M</option>
                        <option value="S">S</option>
                        <option value="TU">TU</option>
                    </select>
                    <label for="taille">Taille : </label>
                </div>
                <div class="form-floating mb-3">
                    <input type='text' class="form-control" name="public" id="photo">
                    <label for="public">Public (m,f,mixte)</label>
                </div>
                <div class="input-group mb-3">
                    <input type="file" class="form-control" name="photo" id="photo">                    
                </div>
                <div class="form-floating mb-3">
                    <input type='number' class="form-control" name="prix" id="prix" >
                    <label for="prix">Prix TTC en € </label>
                </div>
                <div class="form-floating mb-3">
                    <input type='number' class="form-control" name="stock" id="stock">
                    <label for="stock">Stock</label>
                </div>
                <div class="form-floating mb-3">
                    <input type="submit" class="form-control-secondary ms-5" value="Enregistrer">
                </div>
            </form>
        </div>
    </div>

    
</body>
</html>

<?php
include('../inc/footer.inc.php');
?>
