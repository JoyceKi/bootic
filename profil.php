<?php
// nouvelle session
session_start();

// on vérifie que la variable de session pseudo existe
if (isset($_SESSION['pseudo'])) {
    $pseudo = $_SESSION['pseudo'];
}
include('./inc/connexionBd.php');
?>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://getbootstrap.com/docs/5.3/assets/css/docs.css" rel="stylesheet">    
    <title>Bootic</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
    <link rel="stylesheet" href="inc/css/styles.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    <script src="inc/js/main.js" defer></script>
</head>
<body>
  <header>
        <nav class="navbar bg-dark navbar-expand-lg " data-bs-theme="dark" >
            <div class="container-fluid">
                <a class="navbar-brand" href="./index.php">Bootic.com</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" 
                    data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" 
                    aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav">
                        <li class="nav-item">
                        <a class="nav-link" aria-current="page" href="./inscription.php">Inscription</a>
                        </li>
                        <li class="nav-item">
                        <a class="nav-link" href="./connexion.php">Connexion</a>
                        </li>
                        <li class="nav-item">
                        <a class="nav-link" href="./index.php">Accès à la boutique</a>
                        </li>
                        <?php if ($pseudo) {
                                echo '<li class="nav-item">
                                <a class="nav-link" href="profil.php">profil</a>
                                </li>';
                        }
                        ?>
                    </ul>
                </div>
            </div>
        </nav>
    </header>

<main class="container-fluid">
    <div class="row">
        <div class="col-sm-12 col-md-6 col-lg-9 my-5 mx-5">
            <div class="card-header">
                <h5 class="card-text">Vos informations de profil</h5>
            </div>
            <div class="card-body">
                <?php
                if ($pseudo) {
                    $sql = "SELECT * FROM t_membre WHERE pseudo = '$pseudo'";
                    $membres = $db->query($sql);
                    foreach ($membres as $membre){                                               
                    
                ?>
                    <p class="card-text"><h6>Bonjour <?= $_SESSION['pseudo']; ?></h4></p>
                    <p class="card-text">Votre email : <?= $membre['email'];?></p>
                    <p class="card-text">Votre ville : <?= $membre['ville'];?></p>
                    <p class="card-text">Votre code postal : <?= $membre['cp'];?></p>
                    <p class="card-text">Votre adresse : <?= $membre['adresse'];?></p>

                <?php
                }
                } else {
                    echo 'Une erreur est survenue';
                }
                ?>
            </div>
        </div>
    </div>
</main>

<?php
include('./inc/footer.inc.php');