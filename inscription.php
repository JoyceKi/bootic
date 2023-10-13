<?php
// include('inc/header.inc.php');
session_start();
if (isset($_SESSION['pseudo'])) {
    $pseudo = $_SESSION['pseudo'];
}
// On ouvre une session et on vérifie que le pseudo existe bien 

include('./../connexion.php');
// La page d'inscription pour les futurs clients
// On fait un header avec un lien profil qui apparaît ds la navbar 
// que si la session est active
?>

<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Inscription</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" 
    integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" 
    integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
    <link rel="stylesheet" href="./../inc/css/styles.css">
</head>

<body>
  <header>
        <nav class="navbar bg-dark navbar-expand-lg " data-bs-theme="dark" >
            <div class="container-fluid">
                <a class="navbar-brand" href="./index.php">monsite.com</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" 
                    data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" 
                    aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav me-auto mb-2">
                    <li class="nav-item">
                    <a class="nav-link" aria-current="page" href="./inscription.php">Inscription</a>
                    </li>
                    <li class="nav-item">
                    <a class="nav-link" href="/connexion.php">Connexion</a>
                    </li>
                    <?php if ($pseudo) {
                        echo '<li cla="nav-item">
                        <a class="nav-link" href="profil.php">Profil</a>
                        </li>';
                    }
                    ?>
                </ul>
                </div>
            </div>
        </nav>
    </header>
<div class="container">
    <div class="row">
        <div class="col-9">
        <form action="./admin/admin.php" method="post">
            <div class="form-floating mb-3">
                <input type="hidden" name="action" value="inscription">
                <input type="text" name="pseudo" class="form-control" id="pseudo"
                placeholder="Pseudo">
                <label for="pseudo">Votre pseudo : </label>
            </div>
            <div class="form-floating mb-3">
                <input type="password" name="mdp" class="form-control" id="floatingPassword" 
                    placeholder="Votre mot de passe :">
                <label for="floatingPassword">Votre mot de passe : 
                    <span id="passwordHelpInline" class="form-text">
                    Au minimum 8 caractères, 1 majuscule, 1 minuscule, 1 chiffre et un caractère spécial</span>
                </label>
            </div>
            <div class="form-floating mb-3">
                <input type="text" name="nom" class="form-control" id="name"
                placeholder="Nom">
                <label for="name">Nom : </label>
            </div>
            <div class="form-floating mb-3">
                <input type="text" name="prenom" class="form-control" id="firstName"
                placeholder="Votre prénom">
                <label for="firstName">Votre prénom : </label>
            </div>
            <div class="form-floating mb-3">
                <input type="email" name="email" class="form-control" id="floatingInput" 
                placeholder="Adresse mail">
                <label for="floatingInput">Adresse mail :</label>
            </div>
            <div class="form-floating mb-3">            
                <select class="form-select" name="civilite" id="sex"
                placeholder="Sexe">
                    <option value="">---</option>
                    <option value="m">Homme</option>
                    <option value="f">Femme</option>
                </select>
                <label for="sex">Sexe :</label>
            </div>
            <div class="form-floating mb-3">
                <input type="text" name="ville" class="form-control" id="city"
                placeholder="Ville">
                <label for="city">Ville : </label>
            </div>
            <div class="form-floating mb-3">
                <input type="text" name="cp" class="form-control" 
                id="pCode" placeholder="Cp">
                <label for="pCode">Cp : </label>
            </div>  
            <div class="form-floating mb-3">
                <textarea type="text" class="form-control" name="adresse" id="address"
                placeholder="Adresse"></textarea>
                <label for="address">Adresse :</label>
            </div>         
            <div class="form-floating mb-3">
                <input type="submit" class="form-control-secondary ms-5" value="S'inscrire">
            </div>
        </form>
        </div>
    </div>
</div>';

<?php


include('inc/footer.inc.php');