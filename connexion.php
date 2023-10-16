<?php
session_start();

// La page de connexion pour les clients inscrits
//on vérifie que le pseudo existe
if (isset($_SESSION['pseudo'])) {
    $pseudo = $_SESSION['pseudo'];
}
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
    <link rel="stylesheet" href="./inc/css/styles.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    <script src="./inc/js/main.js" defer></script>
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

    <main class="container">
        <div class="row">
            <form class="col-sm-12 col-9 mt-3" method="post" action="./admin/admin.php">
                <div class="form-floating mb-3">
                    <input type="text" name="pseudo" class="form-control" id="floatingInput" placeholder="Pseudo">
                    <label for="floatingInput">Pseudo</label>
                  </div>
                  <div class="form-floating mb-3">
                    <input type="password" name="mdp" class="form-control" id="floatingPassword" placeholder="Mot de passe">
                    <label for="floatingPassword">Mot de passe</label>
                  </div>
                  <div class="form-floating mb-3">
                    <input type="hidden" name="connexion" value="connexion">
                    <input type="submit" class="btn btn-primary" name="submit" value="Se connecter">
                </div>
            </form>
        </div>
    </main>

<?php
include('./inc/footer.inc.php');