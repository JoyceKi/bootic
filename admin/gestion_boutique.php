<?php
include('../inc/connexionBd.php');
include('../inc/header.inc.php');
 

try {
    $req = $db->query('SELECT * FROM t_produit 
    INNER JOIN t_categorie ON t_produit.id_categorie = t_categorie.id_categorie');
    $res = $req->fetchAll();
    echo '<div class="row">
      <div class="col-12">        
        <div class="form-floating mb-3">
          <a href="gestion_produit.php" class="button">Ajouter nouveau produit</a>
        </div>     
        <table class="table table-striped table-hover">
        <thead>
          <tr>
            <th scope="col">id_produit</th>
            <th scope="col">Référence</th>
            <th scope="col">Catégorie</th>
            <th scope="col">Nom du produit</th>
            <th scope="col">Description du produit</th>
            <th scope="col">Couleur</th>
            <th scope="col">Taille</th>
            <th scope="col">Public</th>
            <th scope="col">Photo</th>
            <th scope="col">Prix</th>
            <th scope="col">Stock</th>
            <th scope="col">Modification</th>
            <th scope="col">Supression</th>
          </tr>
        </thead>';

    foreach ($res as $key => $value) {
        echo '
          <tbody class="table-group-divider">
            <tr>
              <th >'.$value[0].'</th>
              <td >'.$value[1].'</td>
              <td >'.$value[12].'</td>
              <td >'.$value[3].'</td>
              <th >'.$value[4].'</th>
              <th >'.$value[5].'</th>
              <th >'.$value[6].'</th>
              <th >'.$value[7].'</th>
              <th >'.$value[8].'</th>
              <th >'.$value[9].'</th>
              <th >'.$value[10].'</th>
              <th >
                <a class="btn btn-success" href="gestion_modif.php?id='.$value[0].'" role="button">
                  <i class="bi bi-pencil-fill"></i>
                </a>
              </th>
              <th >
                <a class="btn btn-danger" href="#" role="button">
                  <i class="bi bi-trash-fill"></i>
                </a>
              </th>
            </tr>
          </tbody>';
    }
    echo '</table>
        </div>
      </div>';  


    $db = null;

} catch (PDOException $e) {
    echo 'Erreur : ' . $e->getMessage();
}

include('../inc/footer.inc.php');